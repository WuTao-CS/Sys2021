cmake_minimum_required(VERSION 3.10)
project(FrontEnd)
set(CMAKE_CXX_STANDARD 17)

include_directories(./)
include_directories(./build/)


add_custom_command(
    OUTPUT ${CMAKE_BINARY_DIR}/sysy_scanner.cc ${CMAKE_BINARY_DIR}/sysy_parser.cc ${CMAKE_BINARY_DIR}/sysy_parser.hh
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    DEPENDS Sysy_scaner.l Sysy_parser.y
    COMMAND flex -d Sysy_scaner.l && bison -d -v Sysy_parser.y
)

add_library(
        scanner STATIC
        sysy_scanner.cc
)

add_library(
        parser STATIC
        sysy_parser.cc
)
add_library(
        sysy_driver STATIC
        sysy_driver.cc
)
set(SRC
        main.cc
        sysy_parser.cc
        sysy_scanner.cc
        syntax_tree.cc
        sysy_driver.cc
        )
# target_link_libraries(
#         main
#         sysy_driver
# )
add_executable(main ${SRC} )


install(
        TARGETS main
        RUNTIME DESTINATION bin
)



enable_testing()
file(GLOB test_file "test/*.sy")

foreach(file ${test_file})
    add_test(NAME ${file} COMMAND main ${file})
endforeach()
