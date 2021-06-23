cmake_minimum_required(VERSION 3.16)
SET(CMAKE_CXX_COMPILER /usr/bin/clang++)
project(SYSYCompiler)

SET(CMAKE_BUILD_TYPE "Debug")
SET(CMAKE_CXX_FLAGS "$ENV{CXXFLAGS} -O0 -Wall -g2 -ggdb -Wno-everything ")
SET(CMAKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS} -O3 -Wall")
set(CMAKE_CXX_STANDARD 17)


# # Import LLVM
set(LLVM_DIR  /usr/lib/llvm-8/cmake/)
find_package(LLVM REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")
llvm_map_components_to_libnames(
        llvm_libs
        all
)
find_library(found_LLVM LLVM)
include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

include_directories(./front/)
include_directories(./build/)
include_directories(./LLVM_Builder)

add_custom_command(
    OUTPUT ${CMAKE_SOURCE_DIR}/front/sysy_scanner.cc ${CMAKE_SOURCE_DIR}/front/sysy_parser.cc ${CMAKE_SOURCE_DIR}/front/sysy_parser.hh
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    DEPENDS Sysy_scaner.l Sysy_parser.y
    COMMAND flex -d Sysy_scaner.l && bison -d -v Sysy_parser.y
)

add_library(
        scanner STATIC
        ./front/sysy_scanner.cc
)

add_library(
        parser STATIC
        ./front/sysy_parser.cc
)
add_library(
        sysy_driver
        ./front/sysy_driver.cc
)
add_library(
        sysy_io 
        ./LLVM_Builder/sylib.c
)

add_library(
        syntax_tree
        ./front/syntax_tree.cc
)

add_executable(
        main
        ./main.cpp
        ./LLVM_Builder/SysyBuilder.cpp
)
target_compile_options(
        main
        PRIVATE "-fno-rtti"
)
target_link_libraries(
        main
        sysy_driver
        parser
        scanner
        syntax_tree
        LLVM
)

install(
        TARGETS main
        RUNTIME DESTINATION bin
)
