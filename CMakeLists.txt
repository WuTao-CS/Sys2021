cmake_minimum_required(VERSION 3.10)
project(FrontEnd)
set(CMAKE_CXX_STANDARD 17)
include(CTest)
include_directories(./)
include_directories(./build/)
include_directories(./front/)
include_directories(./IR/)
include_directories(./IRBuilder/)

add_custom_command(
    OUTPUT ${CMAKE_BINARY_DIR}/sysy_scanner.cc ${CMAKE_BINARY_DIR}/sysy_parser.cc ${CMAKE_BINARY_DIR}/sysy_parser.hh
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
        sysy_driver STATIC
        ./front/sysy_driver.cc
)
add_library(
        IRBuilder STATIC
        ./IRBuilder/SysyBuilder.cc
)

add_library(
        IR_lib STATIC
        ./IR/Type.cc
        ./IR/User.cc
        ./IR/Value.cc
        ./IR/BasicBlock.cc
        ./IR/Constant.cc
        ./IR/Function.cc
        ./IR/GlobalVariable.cc
        ./IR/Instruction.cc
        ./IR/Module.cc
        ./IR/IRprinter.cc
)
set(SRC
        main.cc
        ./front/sysy_parser.cc
        ./front/sysy_scanner.cc
        ./front/syntax_tree.cc
        ./front/sysy_driver.cc
        ./IRBuilder/SysyBuilder.cc
        ./IR/BasicBlock.cc
        ./IR/Constant.cc
        ./IR/Function.cc
        ./IR/GlobalVariable.cc
        ./IR/Instruction.cc
        ./IR/Module.cc
        ./IR/Type.cc
        ./IR/User.cc
        ./IR/Value.cc
        ./IR/IRprinter.cc
        )

add_executable(main ${SRC} )
target_link_libraries(
        main
        IRBuilder
        sysy_driver
        parser
        scanner
        IR_lib
)

install(
        TARGETS main
        RUNTIME DESTINATION bin
)



enable_testing()
file(GLOB test_file "test/*.sy")

foreach(file ${test_file})
    add_test(NAME ${file} COMMAND main ${file})
endforeach()
