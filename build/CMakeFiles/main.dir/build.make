# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/linux/cmake-3.20.4-linux-x86_64/bin/cmake

# The command to remove a file.
RM = /home/linux/cmake-3.20.4-linux-x86_64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/linux/Desktop/compiler/Sys2021_v3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/linux/Desktop/compiler/Sys2021_v3/build

# Include any dependencies generated for this target.
include CMakeFiles/main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/main.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.dir/flags.make

CMakeFiles/main.dir/main.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/main.cc.o: ../main.cc
CMakeFiles/main.dir/main.cc.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main.dir/main.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/main.cc.o -MF CMakeFiles/main.dir/main.cc.o.d -o CMakeFiles/main.dir/main.cc.o -c /home/linux/Desktop/compiler/Sys2021_v3/main.cc

CMakeFiles/main.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/main.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021_v3/main.cc > CMakeFiles/main.dir/main.cc.i

CMakeFiles/main.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/main.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021_v3/main.cc -o CMakeFiles/main.dir/main.cc.s

CMakeFiles/main.dir/front/sysy_parser.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/front/sysy_parser.cc.o: ../front/sysy_parser.cc
CMakeFiles/main.dir/front/sysy_parser.cc.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/main.dir/front/sysy_parser.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/front/sysy_parser.cc.o -MF CMakeFiles/main.dir/front/sysy_parser.cc.o.d -o CMakeFiles/main.dir/front/sysy_parser.cc.o -c /home/linux/Desktop/compiler/Sys2021_v3/front/sysy_parser.cc

CMakeFiles/main.dir/front/sysy_parser.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/front/sysy_parser.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021_v3/front/sysy_parser.cc > CMakeFiles/main.dir/front/sysy_parser.cc.i

CMakeFiles/main.dir/front/sysy_parser.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/front/sysy_parser.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021_v3/front/sysy_parser.cc -o CMakeFiles/main.dir/front/sysy_parser.cc.s

CMakeFiles/main.dir/front/sysy_scanner.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/front/sysy_scanner.cc.o: ../front/sysy_scanner.cc
CMakeFiles/main.dir/front/sysy_scanner.cc.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/main.dir/front/sysy_scanner.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/front/sysy_scanner.cc.o -MF CMakeFiles/main.dir/front/sysy_scanner.cc.o.d -o CMakeFiles/main.dir/front/sysy_scanner.cc.o -c /home/linux/Desktop/compiler/Sys2021_v3/front/sysy_scanner.cc

CMakeFiles/main.dir/front/sysy_scanner.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/front/sysy_scanner.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021_v3/front/sysy_scanner.cc > CMakeFiles/main.dir/front/sysy_scanner.cc.i

CMakeFiles/main.dir/front/sysy_scanner.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/front/sysy_scanner.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021_v3/front/sysy_scanner.cc -o CMakeFiles/main.dir/front/sysy_scanner.cc.s

CMakeFiles/main.dir/front/syntax_tree.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/front/syntax_tree.cc.o: ../front/syntax_tree.cc
CMakeFiles/main.dir/front/syntax_tree.cc.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/main.dir/front/syntax_tree.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/front/syntax_tree.cc.o -MF CMakeFiles/main.dir/front/syntax_tree.cc.o.d -o CMakeFiles/main.dir/front/syntax_tree.cc.o -c /home/linux/Desktop/compiler/Sys2021_v3/front/syntax_tree.cc

CMakeFiles/main.dir/front/syntax_tree.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/front/syntax_tree.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021_v3/front/syntax_tree.cc > CMakeFiles/main.dir/front/syntax_tree.cc.i

CMakeFiles/main.dir/front/syntax_tree.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/front/syntax_tree.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021_v3/front/syntax_tree.cc -o CMakeFiles/main.dir/front/syntax_tree.cc.s

CMakeFiles/main.dir/front/sysy_driver.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/front/sysy_driver.cc.o: ../front/sysy_driver.cc
CMakeFiles/main.dir/front/sysy_driver.cc.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/main.dir/front/sysy_driver.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/front/sysy_driver.cc.o -MF CMakeFiles/main.dir/front/sysy_driver.cc.o.d -o CMakeFiles/main.dir/front/sysy_driver.cc.o -c /home/linux/Desktop/compiler/Sys2021_v3/front/sysy_driver.cc

CMakeFiles/main.dir/front/sysy_driver.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/front/sysy_driver.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021_v3/front/sysy_driver.cc > CMakeFiles/main.dir/front/sysy_driver.cc.i

CMakeFiles/main.dir/front/sysy_driver.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/front/sysy_driver.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021_v3/front/sysy_driver.cc -o CMakeFiles/main.dir/front/sysy_driver.cc.s

CMakeFiles/main.dir/IRBuilder/SysyBuilder.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IRBuilder/SysyBuilder.cc.o: ../IRBuilder/SysyBuilder.cc
CMakeFiles/main.dir/IRBuilder/SysyBuilder.cc.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/main.dir/IRBuilder/SysyBuilder.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/IRBuilder/SysyBuilder.cc.o -MF CMakeFiles/main.dir/IRBuilder/SysyBuilder.cc.o.d -o CMakeFiles/main.dir/IRBuilder/SysyBuilder.cc.o -c /home/linux/Desktop/compiler/Sys2021_v3/IRBuilder/SysyBuilder.cc

CMakeFiles/main.dir/IRBuilder/SysyBuilder.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IRBuilder/SysyBuilder.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021_v3/IRBuilder/SysyBuilder.cc > CMakeFiles/main.dir/IRBuilder/SysyBuilder.cc.i

CMakeFiles/main.dir/IRBuilder/SysyBuilder.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IRBuilder/SysyBuilder.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021_v3/IRBuilder/SysyBuilder.cc -o CMakeFiles/main.dir/IRBuilder/SysyBuilder.cc.s

CMakeFiles/main.dir/IR/BasicBlock.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IR/BasicBlock.cc.o: ../IR/BasicBlock.cc
CMakeFiles/main.dir/IR/BasicBlock.cc.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/main.dir/IR/BasicBlock.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/IR/BasicBlock.cc.o -MF CMakeFiles/main.dir/IR/BasicBlock.cc.o.d -o CMakeFiles/main.dir/IR/BasicBlock.cc.o -c /home/linux/Desktop/compiler/Sys2021_v3/IR/BasicBlock.cc

CMakeFiles/main.dir/IR/BasicBlock.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IR/BasicBlock.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021_v3/IR/BasicBlock.cc > CMakeFiles/main.dir/IR/BasicBlock.cc.i

CMakeFiles/main.dir/IR/BasicBlock.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IR/BasicBlock.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021_v3/IR/BasicBlock.cc -o CMakeFiles/main.dir/IR/BasicBlock.cc.s

CMakeFiles/main.dir/IR/Constant.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IR/Constant.cc.o: ../IR/Constant.cc
CMakeFiles/main.dir/IR/Constant.cc.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/main.dir/IR/Constant.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/IR/Constant.cc.o -MF CMakeFiles/main.dir/IR/Constant.cc.o.d -o CMakeFiles/main.dir/IR/Constant.cc.o -c /home/linux/Desktop/compiler/Sys2021_v3/IR/Constant.cc

CMakeFiles/main.dir/IR/Constant.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IR/Constant.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021_v3/IR/Constant.cc > CMakeFiles/main.dir/IR/Constant.cc.i

CMakeFiles/main.dir/IR/Constant.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IR/Constant.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021_v3/IR/Constant.cc -o CMakeFiles/main.dir/IR/Constant.cc.s

CMakeFiles/main.dir/IR/Function.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IR/Function.cc.o: ../IR/Function.cc
CMakeFiles/main.dir/IR/Function.cc.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/main.dir/IR/Function.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/IR/Function.cc.o -MF CMakeFiles/main.dir/IR/Function.cc.o.d -o CMakeFiles/main.dir/IR/Function.cc.o -c /home/linux/Desktop/compiler/Sys2021_v3/IR/Function.cc

CMakeFiles/main.dir/IR/Function.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IR/Function.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021_v3/IR/Function.cc > CMakeFiles/main.dir/IR/Function.cc.i

CMakeFiles/main.dir/IR/Function.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IR/Function.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021_v3/IR/Function.cc -o CMakeFiles/main.dir/IR/Function.cc.s

CMakeFiles/main.dir/IR/GlobalVariable.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IR/GlobalVariable.cc.o: ../IR/GlobalVariable.cc
CMakeFiles/main.dir/IR/GlobalVariable.cc.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/main.dir/IR/GlobalVariable.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/IR/GlobalVariable.cc.o -MF CMakeFiles/main.dir/IR/GlobalVariable.cc.o.d -o CMakeFiles/main.dir/IR/GlobalVariable.cc.o -c /home/linux/Desktop/compiler/Sys2021_v3/IR/GlobalVariable.cc

CMakeFiles/main.dir/IR/GlobalVariable.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IR/GlobalVariable.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021_v3/IR/GlobalVariable.cc > CMakeFiles/main.dir/IR/GlobalVariable.cc.i

CMakeFiles/main.dir/IR/GlobalVariable.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IR/GlobalVariable.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021_v3/IR/GlobalVariable.cc -o CMakeFiles/main.dir/IR/GlobalVariable.cc.s

CMakeFiles/main.dir/IR/Instruction.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IR/Instruction.cc.o: ../IR/Instruction.cc
CMakeFiles/main.dir/IR/Instruction.cc.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/main.dir/IR/Instruction.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/IR/Instruction.cc.o -MF CMakeFiles/main.dir/IR/Instruction.cc.o.d -o CMakeFiles/main.dir/IR/Instruction.cc.o -c /home/linux/Desktop/compiler/Sys2021_v3/IR/Instruction.cc

CMakeFiles/main.dir/IR/Instruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IR/Instruction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021_v3/IR/Instruction.cc > CMakeFiles/main.dir/IR/Instruction.cc.i

CMakeFiles/main.dir/IR/Instruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IR/Instruction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021_v3/IR/Instruction.cc -o CMakeFiles/main.dir/IR/Instruction.cc.s

CMakeFiles/main.dir/IR/Module.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IR/Module.cc.o: ../IR/Module.cc
CMakeFiles/main.dir/IR/Module.cc.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/main.dir/IR/Module.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/IR/Module.cc.o -MF CMakeFiles/main.dir/IR/Module.cc.o.d -o CMakeFiles/main.dir/IR/Module.cc.o -c /home/linux/Desktop/compiler/Sys2021_v3/IR/Module.cc

CMakeFiles/main.dir/IR/Module.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IR/Module.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021_v3/IR/Module.cc > CMakeFiles/main.dir/IR/Module.cc.i

CMakeFiles/main.dir/IR/Module.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IR/Module.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021_v3/IR/Module.cc -o CMakeFiles/main.dir/IR/Module.cc.s

CMakeFiles/main.dir/IR/Type.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IR/Type.cc.o: ../IR/Type.cc
CMakeFiles/main.dir/IR/Type.cc.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/main.dir/IR/Type.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/IR/Type.cc.o -MF CMakeFiles/main.dir/IR/Type.cc.o.d -o CMakeFiles/main.dir/IR/Type.cc.o -c /home/linux/Desktop/compiler/Sys2021_v3/IR/Type.cc

CMakeFiles/main.dir/IR/Type.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IR/Type.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021_v3/IR/Type.cc > CMakeFiles/main.dir/IR/Type.cc.i

CMakeFiles/main.dir/IR/Type.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IR/Type.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021_v3/IR/Type.cc -o CMakeFiles/main.dir/IR/Type.cc.s

CMakeFiles/main.dir/IR/User.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IR/User.cc.o: ../IR/User.cc
CMakeFiles/main.dir/IR/User.cc.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/main.dir/IR/User.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/IR/User.cc.o -MF CMakeFiles/main.dir/IR/User.cc.o.d -o CMakeFiles/main.dir/IR/User.cc.o -c /home/linux/Desktop/compiler/Sys2021_v3/IR/User.cc

CMakeFiles/main.dir/IR/User.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IR/User.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021_v3/IR/User.cc > CMakeFiles/main.dir/IR/User.cc.i

CMakeFiles/main.dir/IR/User.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IR/User.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021_v3/IR/User.cc -o CMakeFiles/main.dir/IR/User.cc.s

CMakeFiles/main.dir/IR/Value.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IR/Value.cc.o: ../IR/Value.cc
CMakeFiles/main.dir/IR/Value.cc.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/main.dir/IR/Value.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/IR/Value.cc.o -MF CMakeFiles/main.dir/IR/Value.cc.o.d -o CMakeFiles/main.dir/IR/Value.cc.o -c /home/linux/Desktop/compiler/Sys2021_v3/IR/Value.cc

CMakeFiles/main.dir/IR/Value.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IR/Value.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021_v3/IR/Value.cc > CMakeFiles/main.dir/IR/Value.cc.i

CMakeFiles/main.dir/IR/Value.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IR/Value.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021_v3/IR/Value.cc -o CMakeFiles/main.dir/IR/Value.cc.s

CMakeFiles/main.dir/IR/IRprinter.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IR/IRprinter.cc.o: ../IR/IRprinter.cc
CMakeFiles/main.dir/IR/IRprinter.cc.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/main.dir/IR/IRprinter.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/IR/IRprinter.cc.o -MF CMakeFiles/main.dir/IR/IRprinter.cc.o.d -o CMakeFiles/main.dir/IR/IRprinter.cc.o -c /home/linux/Desktop/compiler/Sys2021_v3/IR/IRprinter.cc

CMakeFiles/main.dir/IR/IRprinter.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IR/IRprinter.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021_v3/IR/IRprinter.cc > CMakeFiles/main.dir/IR/IRprinter.cc.i

CMakeFiles/main.dir/IR/IRprinter.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IR/IRprinter.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021_v3/IR/IRprinter.cc -o CMakeFiles/main.dir/IR/IRprinter.cc.s

CMakeFiles/main.dir/codeGen/codeGen.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/codeGen/codeGen.cc.o: ../codeGen/codeGen.cc
CMakeFiles/main.dir/codeGen/codeGen.cc.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/main.dir/codeGen/codeGen.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/codeGen/codeGen.cc.o -MF CMakeFiles/main.dir/codeGen/codeGen.cc.o.d -o CMakeFiles/main.dir/codeGen/codeGen.cc.o -c /home/linux/Desktop/compiler/Sys2021_v3/codeGen/codeGen.cc

CMakeFiles/main.dir/codeGen/codeGen.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/codeGen/codeGen.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021_v3/codeGen/codeGen.cc > CMakeFiles/main.dir/codeGen/codeGen.cc.i

CMakeFiles/main.dir/codeGen/codeGen.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/codeGen/codeGen.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021_v3/codeGen/codeGen.cc -o CMakeFiles/main.dir/codeGen/codeGen.cc.s

CMakeFiles/main.dir/codeGen/instructionsGen.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/codeGen/instructionsGen.cc.o: ../codeGen/instructionsGen.cc
CMakeFiles/main.dir/codeGen/instructionsGen.cc.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/main.dir/codeGen/instructionsGen.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/codeGen/instructionsGen.cc.o -MF CMakeFiles/main.dir/codeGen/instructionsGen.cc.o.d -o CMakeFiles/main.dir/codeGen/instructionsGen.cc.o -c /home/linux/Desktop/compiler/Sys2021_v3/codeGen/instructionsGen.cc

CMakeFiles/main.dir/codeGen/instructionsGen.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/codeGen/instructionsGen.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021_v3/codeGen/instructionsGen.cc > CMakeFiles/main.dir/codeGen/instructionsGen.cc.i

CMakeFiles/main.dir/codeGen/instructionsGen.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/codeGen/instructionsGen.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021_v3/codeGen/instructionsGen.cc -o CMakeFiles/main.dir/codeGen/instructionsGen.cc.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main.cc.o" \
"CMakeFiles/main.dir/front/sysy_parser.cc.o" \
"CMakeFiles/main.dir/front/sysy_scanner.cc.o" \
"CMakeFiles/main.dir/front/syntax_tree.cc.o" \
"CMakeFiles/main.dir/front/sysy_driver.cc.o" \
"CMakeFiles/main.dir/IRBuilder/SysyBuilder.cc.o" \
"CMakeFiles/main.dir/IR/BasicBlock.cc.o" \
"CMakeFiles/main.dir/IR/Constant.cc.o" \
"CMakeFiles/main.dir/IR/Function.cc.o" \
"CMakeFiles/main.dir/IR/GlobalVariable.cc.o" \
"CMakeFiles/main.dir/IR/Instruction.cc.o" \
"CMakeFiles/main.dir/IR/Module.cc.o" \
"CMakeFiles/main.dir/IR/Type.cc.o" \
"CMakeFiles/main.dir/IR/User.cc.o" \
"CMakeFiles/main.dir/IR/Value.cc.o" \
"CMakeFiles/main.dir/IR/IRprinter.cc.o" \
"CMakeFiles/main.dir/codeGen/codeGen.cc.o" \
"CMakeFiles/main.dir/codeGen/instructionsGen.cc.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

main: CMakeFiles/main.dir/main.cc.o
main: CMakeFiles/main.dir/front/sysy_parser.cc.o
main: CMakeFiles/main.dir/front/sysy_scanner.cc.o
main: CMakeFiles/main.dir/front/syntax_tree.cc.o
main: CMakeFiles/main.dir/front/sysy_driver.cc.o
main: CMakeFiles/main.dir/IRBuilder/SysyBuilder.cc.o
main: CMakeFiles/main.dir/IR/BasicBlock.cc.o
main: CMakeFiles/main.dir/IR/Constant.cc.o
main: CMakeFiles/main.dir/IR/Function.cc.o
main: CMakeFiles/main.dir/IR/GlobalVariable.cc.o
main: CMakeFiles/main.dir/IR/Instruction.cc.o
main: CMakeFiles/main.dir/IR/Module.cc.o
main: CMakeFiles/main.dir/IR/Type.cc.o
main: CMakeFiles/main.dir/IR/User.cc.o
main: CMakeFiles/main.dir/IR/Value.cc.o
main: CMakeFiles/main.dir/IR/IRprinter.cc.o
main: CMakeFiles/main.dir/codeGen/codeGen.cc.o
main: CMakeFiles/main.dir/codeGen/instructionsGen.cc.o
main: CMakeFiles/main.dir/build.make
main: libIRBuilder.a
main: libsysy_driver.a
main: libparser.a
main: libscanner.a
main: libIR_lib.a
main: libCodeGen.a
main: CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Linking CXX executable main"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.dir/build: main
.PHONY : CMakeFiles/main.dir/build

CMakeFiles/main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.dir/clean

CMakeFiles/main.dir/depend:
	cd /home/linux/Desktop/compiler/Sys2021_v3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/linux/Desktop/compiler/Sys2021_v3 /home/linux/Desktop/compiler/Sys2021_v3 /home/linux/Desktop/compiler/Sys2021_v3/build /home/linux/Desktop/compiler/Sys2021_v3/build /home/linux/Desktop/compiler/Sys2021_v3/build/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main.dir/depend

