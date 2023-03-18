# short-hand signature
find_library(FOO name1)

find_library(FOO name1 path1)

find_library(FOO name1 path1 path2 path3 path4)

find_library(
    long_variable_name________________________________________
    long_name__________________________________________________
    path1__________________________________________________
    path2__________________________________________________
    path3__________________________________________________
    path4__________________________________________________
)

# general signature
find_library(FOO NAMES name1)

find_library(FOO NAMES name1 NAMES_PER_DIR PATHS path1 PATH_SUFFIXES suffix1)

find_library(
    FOO
    name
    HINTS path1
    PATHS path1
    PATH_SUFFIXES suffix1
    NO_CMAKE_FIND_ROOT_PATH
)

find_library(
    FOO
    NAMES name1
    NAMES_PER_DIR
    HINTS path1
    PATHS path1
    PATH_SUFFIXES suffix1
    NO_CMAKE_FIND_ROOT_PATH
)

find_library(
    FOO
    NAMES name1
    NAMES_PER_DIR
    HINTS path1
    PATHS path1
    PATH_SUFFIXES suffix1
    DOC "docstring"
    NO_DEFAULT_PATH
    NO_PACKAGE_ROOT_PATH
    NO_CMAKE_PATH
    NO_CMAKE_ENVIRONMENT_PATH
    NO_SYSTEM_ENVIRONMENT_PATH
    CMAKE_FIND_ROOT_PATH_BOTH
)

find_library(
    FOO
    NAMES name1 name2 name3
    NAMES_PER_DIR
    HINTS path1 path2 path3
    PATHS path1 path2 path3
    PATH_SUFFIXES suffix1 suffix2 suffix3
    DOC "docstring"
    NO_DEFAULT_PATH
    NO_PACKAGE_ROOT_PATH
    NO_CMAKE_PATH
    NO_CMAKE_ENVIRONMENT_PATH
    NO_SYSTEM_ENVIRONMENT_PATH
    CMAKE_FIND_ROOT_PATH_BOTH
)

find_library(
    FOO
    NAMES
        long_arg________________________________________
        long_arg________________________________________
        long_arg________________________________________
    NAMES_PER_DIR
    HINTS
        long_arg________________________________________
        long_arg________________________________________
        long_arg________________________________________
    PATHS
        long_arg________________________________________
        long_arg________________________________________
        long_arg________________________________________
    PATH_SUFFIXES
        long_arg________________________________________
        long_arg________________________________________
        long_arg________________________________________
    DOC
        long_arg________________________________________________________________________________
    NO_DEFAULT_PATH
    NO_PACKAGE_ROOT_PATH
    NO_CMAKE_PATH
    NO_CMAKE_ENVIRONMENT_PATH
    NO_SYSTEM_ENVIRONMENT_PATH
    ONLY_CMAKE_FIND_ROOT_PATH
)
