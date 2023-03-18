# short-hand signature
find_file(FOO name1)

find_file(FOO name1 path1)

find_file(FOO name1 path1 path2 path3 path4)

find_file(long_variable_name________________________________________ long_name__________________________________________________ path1__________________________________________________ path2__________________________________________________ path3__________________________________________________ path4__________________________________________________)

# general signature
find_file(FOO NAMES name1)

find_file(FOO NAMES name1 HINTS path1 PATHS path1 PATH_SUFFIXES suffix1)

find_file(FOO name HINTS path1 PATHS path1 PATH_SUFFIXES suffix1 NO_CMAKE_FIND_ROOT_PATH)

find_file(FOO NAMES name1 HINTS path1 PATHS path1 PATH_SUFFIXES suffix1 NO_CMAKE_FIND_ROOT_PATH)

find_file(FOO NAMES name1 HINTS path1 PATHS path1 PATH_SUFFIXES suffix1 DOC "docstring" NO_DEFAULT_PATH NO_PACKAGE_ROOT_PATH NO_CMAKE_PATH NO_CMAKE_ENVIRONMENT_PATH NO_SYSTEM_ENVIRONMENT_PATH CMAKE_FIND_ROOT_PATH_BOTH)

find_file(FOO NAMES name1 name2 name3 HINTS path1 path2 path3 PATHS path1 path2 path3 PATH_SUFFIXES suffix1 suffix2 suffix3 DOC "docstring" NO_DEFAULT_PATH NO_PACKAGE_ROOT_PATH NO_CMAKE_PATH NO_CMAKE_ENVIRONMENT_PATH NO_SYSTEM_ENVIRONMENT_PATH CMAKE_FIND_ROOT_PATH_BOTH)

find_file(FOO NAMES long_arg________________________________________ long_arg________________________________________ long_arg________________________________________ HINTS long_arg________________________________________ long_arg________________________________________ long_arg________________________________________ PATHS long_arg________________________________________ long_arg________________________________________ long_arg________________________________________ PATH_SUFFIXES long_arg________________________________________ long_arg________________________________________ long_arg________________________________________ DOC long_arg________________________________________________________________________________ NO_DEFAULT_PATH NO_PACKAGE_ROOT_PATH NO_CMAKE_PATH NO_CMAKE_ENVIRONMENT_PATH NO_SYSTEM_ENVIRONMENT_PATH ONLY_CMAKE_FIND_ROOT_PATH)
