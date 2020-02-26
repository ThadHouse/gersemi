from lark import Tree
from gersemi.base_command_invocation_dumper import BaseCommandInvocationDumper
from gersemi.command_invocation_dumpers.ctest_command_dumpers import (
    ctest_command_mapping,
)
from gersemi.command_invocation_dumpers.scripting_command_dumpers import (
    scripting_command_mapping,
)
from gersemi.command_invocation_dumpers.project_command_dumpers import (
    project_command_mapping,
)
from gersemi.command_invocation_dumpers.preserving_command_invocation_dumper import (
    PreservingCommandInvocationDumper,
)
from gersemi.custom_command_dumper_generator import generate_custom_command_dumpers


class CommandInvocationDumper(
    PreservingCommandInvocationDumper, BaseCommandInvocationDumper
):
    known_command_mapping = {
        **scripting_command_mapping,
        **project_command_mapping,
        **ctest_command_mapping,
    }

    def file(self, tree):
        self.known_command_mapping.update(generate_custom_command_dumpers(tree))
        return self.__default__(tree)

    def _patch_dumper(self, patch):
        original_dumper = type(self)

        class Impl(patch, original_dumper):
            pass

        return Impl(self.width, self.alignment)

    def _get_patch(self, command_name):
        return self.known_command_mapping.get(command_name, None)

    def command_invocation(self, tree):
        command_name, _ = tree.children
        patch = self._get_patch(command_name)
        if patch is None:
            return super().format_command(tree)
        return self._patch_dumper(patch).format_command(tree)

    def custom_command(self, tree):
        _, command_name, arguments, *_ = tree.children
        if command_name in self.known_command_mapping:
            return self.visit(Tree("command_invocation", [command_name, arguments]))
        return super().custom_command(tree)
