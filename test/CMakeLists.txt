cmake_minimum_required(VERSION 3.10)
project(FrontEnd)
set(CMAKE_CXX_STANDARD 17)

include_directories(./)
include_directories(./build/)
include_directories(./IR/)
include_directories(./IRBuilder/)
include_directories(./CodeGen/)
include_directories(./OptimizePass/)
include_directories(./HIR/)


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

add_library(
        IRBuilder
        ./IRBuilder/SYSYCBuilder.cc
)

add_library(
        CodeGen
        ./CodeGen/CodeGen.cc
        ./CodeGen/InstructionsGen.cc
        ./CodeGen/RegAlloc.cc
        ./CodeGen/Analyzer.cc
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
        ./IR/BaseBlock.cc
)

add_library(
        Pass STATIC
        ./OptimizePass/mem2reg.cc
        ./OptimizePass/Dominators.cc
        ./OptimizePass/FunctionInline.cc
        ./OptimizePass/SimplifyCFG.cc
        ./OptimizePass/LoopFind.cc
        ./OptimizePass/IRCheck.cc
        ./OptimizePass/BBConstPropagation.cc
        ./OptimizePass/ConstFlod.cc
        ./OptimizePass/DeadCodeEliminate.cc
        ./OptimizePass/GlobalVariableLocal.cc
        ./OptimizePass/ConstLoopExpansion.cc
        ./OptimizePass/RefactorPartIns.cc
        ./OptimizePass/LowerIR.cc
        ./OptimizePass/LoopInvariant.cc
        ./OptimizePass/InstructionSchedule.cc
        ./OptimizePass/BBCommonSubExper.cc
        ./OptimizePass/PowerArray.cc
        ./OptimizePass/MergeCond.cc
        ./OptimizePass/Multithreading.cc
        ./OptimizePass/Vectorization.cc
        ./OptimizePass/HIRToMIR.cc
        ./OptimizePass/HighIRsimplyCFG.cc
        ../HIR/BBExps.cc
        ../HIR/LoopMerge.cc
        ../HIR/AccumulatePattern.cc
        ./OptimizePass/CondSimplify.cc
        ./OptimizePass/FunctionOptimization.cc
)

add_library(
        ActiveVars STATIC
        ./OptimizePass/ActiveVars.cc
)

add_library(
        RegisterAllocation STATIC
        ./OptimizePass/RegisterAllocation.cc
)

set(SRC
        main.cc
        sysy_parser.cc
        sysy_scanner.cc
        syntax_tree.cc
        sysy_driver.cc
        ./IRBuilder/SYSYCBuilder.cc
        ./IR/BaseBlock.cc
        ./IR/BasicBlock.cc
        ./IR/Constant.cc
        ./IR/Function.cc
        ./IR/GlobalVariable.cc
        ./IR/Instruction.cc
        ./IR/Module.cc
        ./IR/Type.cc
        ./IR/User.cc
        ./IR/Value.cc

        # CodeGen
        ./CodeGen/Analyzer.cc
        ./CodeGen/CodeGen.cc
        ./CodeGen/InstructionsGen.cc
        ./CodeGen/RegAlloc.cc
        # HIR
        ./HIR/AccumulatePattern.cc
        ./HIR/BBExps.cc
        ./HIR/LoopMerge.cc
        # OptimizePass
        ./OptimizePass/ActiveVars.cc
        ./OptimizePass/BBCommonSubExper.cc
        ./OptimizePass/BBConstPropagation.cc
        ./OptimizePass/BranchMerge.cc
        ./OptimizePass/CondSimplify.cc
        ./OptimizePass/ConstFlod.cc
        ./OptimizePass/ConstLoopExpansion.cc
        ./OptimizePass/DeadCodeEliminate.cc
        ./OptimizePass/Dominators.cc
        ./OptimizePass/FunctionInline.cc
        ./OptimizePass/FunctionOptimization.cc
        ./OptimizePass/GlobalVariableLocal.cc
        ./OptimizePass/HighIRsimplyCFG.cc
        ./OptimizePass/HIRToMIR.cc
        ./OptimizePass/InstructionSchedule.cc
        ./OptimizePass/IRCheck.cc
        ./OptimizePass/LoopFind.cc
        ./OptimizePass/LoopInvariant.cc
        ./OptimizePass/LowerIR.cc
        ./OptimizePass/mem2reg.cc
        ./OptimizePass/MergeCond.cc
        ./OptimizePass/Multithreading.cc
        ./OptimizePass/PowerArray.cc
        ./OptimizePass/ReachDefinitions.cc
        ./OptimizePass/RefactorPartIns.cc
        ./OptimizePass/RegisterAllocation.cc
        ./OptimizePass/SimplifyCFG.cc
        ./OptimizePass/SparseCondConstPropagation.cc
        ./OptimizePass/Vectorization.cc
        )

add_executable(main ${SRC} )

target_link_libraries(
        main
        IRBuilder
        sysy_driver
        IR_lib
        Pass
        CodeGen
        ActiveVars
        RegisterAllocation
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
