# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/linux/Desktop/Sys2021

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/linux/Desktop/Sys2021/build

# Include any dependencies generated for this target.
include CMakeFiles/main.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.dir/flags.make

sysy_scanner.cc: ../Sysy_scaner.l
sysy_scanner.cc: ../Sysy_parser.y
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/linux/Desktop/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating sysy_scanner.cc, sysy_parser.cc, sysy_parser.hh"
	cd /home/linux/Desktop/Sys2021 && flex -d Sysy_scaner.l && bison -d -v Sysy_parser.y

sysy_parser.cc: sysy_scanner.cc
	@$(CMAKE_COMMAND) -E touch_nocreate sysy_parser.cc

sysy_parser.hh: sysy_scanner.cc
	@$(CMAKE_COMMAND) -E touch_nocreate sysy_parser.hh

CMakeFiles/main.dir/main.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/main.cc.o: ../main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/main.dir/main.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/main.cc.o -c /home/linux/Desktop/Sys2021/main.cc

CMakeFiles/main.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/main.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/Sys2021/main.cc > CMakeFiles/main.dir/main.cc.i

CMakeFiles/main.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/main.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/Sys2021/main.cc -o CMakeFiles/main.dir/main.cc.s

CMakeFiles/main.dir/main.cc.o.requires:

.PHONY : CMakeFiles/main.dir/main.cc.o.requires

CMakeFiles/main.dir/main.cc.o.provides: CMakeFiles/main.dir/main.cc.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/main.cc.o.provides.build
.PHONY : CMakeFiles/main.dir/main.cc.o.provides

CMakeFiles/main.dir/main.cc.o.provides.build: CMakeFiles/main.dir/main.cc.o


CMakeFiles/main.dir/sysy_parser.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/sysy_parser.cc.o: sysy_parser.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/main.dir/sysy_parser.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/sysy_parser.cc.o -c /home/linux/Desktop/Sys2021/build/sysy_parser.cc

CMakeFiles/main.dir/sysy_parser.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/sysy_parser.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/Sys2021/build/sysy_parser.cc > CMakeFiles/main.dir/sysy_parser.cc.i

CMakeFiles/main.dir/sysy_parser.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/sysy_parser.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/Sys2021/build/sysy_parser.cc -o CMakeFiles/main.dir/sysy_parser.cc.s

CMakeFiles/main.dir/sysy_parser.cc.o.requires:

.PHONY : CMakeFiles/main.dir/sysy_parser.cc.o.requires

CMakeFiles/main.dir/sysy_parser.cc.o.provides: CMakeFiles/main.dir/sysy_parser.cc.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/sysy_parser.cc.o.provides.build
.PHONY : CMakeFiles/main.dir/sysy_parser.cc.o.provides

CMakeFiles/main.dir/sysy_parser.cc.o.provides.build: CMakeFiles/main.dir/sysy_parser.cc.o


CMakeFiles/main.dir/sysy_scanner.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/sysy_scanner.cc.o: sysy_scanner.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/main.dir/sysy_scanner.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/sysy_scanner.cc.o -c /home/linux/Desktop/Sys2021/build/sysy_scanner.cc

CMakeFiles/main.dir/sysy_scanner.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/sysy_scanner.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/Sys2021/build/sysy_scanner.cc > CMakeFiles/main.dir/sysy_scanner.cc.i

CMakeFiles/main.dir/sysy_scanner.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/sysy_scanner.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/Sys2021/build/sysy_scanner.cc -o CMakeFiles/main.dir/sysy_scanner.cc.s

CMakeFiles/main.dir/sysy_scanner.cc.o.requires:

.PHONY : CMakeFiles/main.dir/sysy_scanner.cc.o.requires

CMakeFiles/main.dir/sysy_scanner.cc.o.provides: CMakeFiles/main.dir/sysy_scanner.cc.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/sysy_scanner.cc.o.provides.build
.PHONY : CMakeFiles/main.dir/sysy_scanner.cc.o.provides

CMakeFiles/main.dir/sysy_scanner.cc.o.provides.build: CMakeFiles/main.dir/sysy_scanner.cc.o


CMakeFiles/main.dir/syntax_tree.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/syntax_tree.cc.o: ../syntax_tree.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/main.dir/syntax_tree.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/syntax_tree.cc.o -c /home/linux/Desktop/Sys2021/syntax_tree.cc

CMakeFiles/main.dir/syntax_tree.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/syntax_tree.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/Sys2021/syntax_tree.cc > CMakeFiles/main.dir/syntax_tree.cc.i

CMakeFiles/main.dir/syntax_tree.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/syntax_tree.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/Sys2021/syntax_tree.cc -o CMakeFiles/main.dir/syntax_tree.cc.s

CMakeFiles/main.dir/syntax_tree.cc.o.requires:

.PHONY : CMakeFiles/main.dir/syntax_tree.cc.o.requires

CMakeFiles/main.dir/syntax_tree.cc.o.provides: CMakeFiles/main.dir/syntax_tree.cc.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/syntax_tree.cc.o.provides.build
.PHONY : CMakeFiles/main.dir/syntax_tree.cc.o.provides

CMakeFiles/main.dir/syntax_tree.cc.o.provides.build: CMakeFiles/main.dir/syntax_tree.cc.o


CMakeFiles/main.dir/sysy_driver.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/sysy_driver.cc.o: ../sysy_driver.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/main.dir/sysy_driver.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/sysy_driver.cc.o -c /home/linux/Desktop/Sys2021/sysy_driver.cc

CMakeFiles/main.dir/sysy_driver.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/sysy_driver.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/Sys2021/sysy_driver.cc > CMakeFiles/main.dir/sysy_driver.cc.i

CMakeFiles/main.dir/sysy_driver.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/sysy_driver.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/Sys2021/sysy_driver.cc -o CMakeFiles/main.dir/sysy_driver.cc.s

CMakeFiles/main.dir/sysy_driver.cc.o.requires:

.PHONY : CMakeFiles/main.dir/sysy_driver.cc.o.requires

CMakeFiles/main.dir/sysy_driver.cc.o.provides: CMakeFiles/main.dir/sysy_driver.cc.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/sysy_driver.cc.o.provides.build
.PHONY : CMakeFiles/main.dir/sysy_driver.cc.o.provides

CMakeFiles/main.dir/sysy_driver.cc.o.provides.build: CMakeFiles/main.dir/sysy_driver.cc.o


CMakeFiles/main.dir/IRBuilder/SYSYCBuilder.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IRBuilder/SYSYCBuilder.cc.o: ../IRBuilder/SYSYCBuilder.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/main.dir/IRBuilder/SYSYCBuilder.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/IRBuilder/SYSYCBuilder.cc.o -c /home/linux/Desktop/Sys2021/IRBuilder/SYSYCBuilder.cc

CMakeFiles/main.dir/IRBuilder/SYSYCBuilder.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IRBuilder/SYSYCBuilder.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/Sys2021/IRBuilder/SYSYCBuilder.cc > CMakeFiles/main.dir/IRBuilder/SYSYCBuilder.cc.i

CMakeFiles/main.dir/IRBuilder/SYSYCBuilder.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IRBuilder/SYSYCBuilder.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/Sys2021/IRBuilder/SYSYCBuilder.cc -o CMakeFiles/main.dir/IRBuilder/SYSYCBuilder.cc.s

CMakeFiles/main.dir/IRBuilder/SYSYCBuilder.cc.o.requires:

.PHONY : CMakeFiles/main.dir/IRBuilder/SYSYCBuilder.cc.o.requires

CMakeFiles/main.dir/IRBuilder/SYSYCBuilder.cc.o.provides: CMakeFiles/main.dir/IRBuilder/SYSYCBuilder.cc.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/IRBuilder/SYSYCBuilder.cc.o.provides.build
.PHONY : CMakeFiles/main.dir/IRBuilder/SYSYCBuilder.cc.o.provides

CMakeFiles/main.dir/IRBuilder/SYSYCBuilder.cc.o.provides.build: CMakeFiles/main.dir/IRBuilder/SYSYCBuilder.cc.o


CMakeFiles/main.dir/IR/BaseBlock.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IR/BaseBlock.cc.o: ../IR/BaseBlock.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/main.dir/IR/BaseBlock.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/IR/BaseBlock.cc.o -c /home/linux/Desktop/Sys2021/IR/BaseBlock.cc

CMakeFiles/main.dir/IR/BaseBlock.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IR/BaseBlock.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/Sys2021/IR/BaseBlock.cc > CMakeFiles/main.dir/IR/BaseBlock.cc.i

CMakeFiles/main.dir/IR/BaseBlock.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IR/BaseBlock.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/Sys2021/IR/BaseBlock.cc -o CMakeFiles/main.dir/IR/BaseBlock.cc.s

CMakeFiles/main.dir/IR/BaseBlock.cc.o.requires:

.PHONY : CMakeFiles/main.dir/IR/BaseBlock.cc.o.requires

CMakeFiles/main.dir/IR/BaseBlock.cc.o.provides: CMakeFiles/main.dir/IR/BaseBlock.cc.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/IR/BaseBlock.cc.o.provides.build
.PHONY : CMakeFiles/main.dir/IR/BaseBlock.cc.o.provides

CMakeFiles/main.dir/IR/BaseBlock.cc.o.provides.build: CMakeFiles/main.dir/IR/BaseBlock.cc.o


CMakeFiles/main.dir/IR/BasicBlock.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IR/BasicBlock.cc.o: ../IR/BasicBlock.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/main.dir/IR/BasicBlock.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/IR/BasicBlock.cc.o -c /home/linux/Desktop/Sys2021/IR/BasicBlock.cc

CMakeFiles/main.dir/IR/BasicBlock.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IR/BasicBlock.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/Sys2021/IR/BasicBlock.cc > CMakeFiles/main.dir/IR/BasicBlock.cc.i

CMakeFiles/main.dir/IR/BasicBlock.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IR/BasicBlock.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/Sys2021/IR/BasicBlock.cc -o CMakeFiles/main.dir/IR/BasicBlock.cc.s

CMakeFiles/main.dir/IR/BasicBlock.cc.o.requires:

.PHONY : CMakeFiles/main.dir/IR/BasicBlock.cc.o.requires

CMakeFiles/main.dir/IR/BasicBlock.cc.o.provides: CMakeFiles/main.dir/IR/BasicBlock.cc.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/IR/BasicBlock.cc.o.provides.build
.PHONY : CMakeFiles/main.dir/IR/BasicBlock.cc.o.provides

CMakeFiles/main.dir/IR/BasicBlock.cc.o.provides.build: CMakeFiles/main.dir/IR/BasicBlock.cc.o


CMakeFiles/main.dir/IR/Constant.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IR/Constant.cc.o: ../IR/Constant.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/main.dir/IR/Constant.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/IR/Constant.cc.o -c /home/linux/Desktop/Sys2021/IR/Constant.cc

CMakeFiles/main.dir/IR/Constant.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IR/Constant.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/Sys2021/IR/Constant.cc > CMakeFiles/main.dir/IR/Constant.cc.i

CMakeFiles/main.dir/IR/Constant.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IR/Constant.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/Sys2021/IR/Constant.cc -o CMakeFiles/main.dir/IR/Constant.cc.s

CMakeFiles/main.dir/IR/Constant.cc.o.requires:

.PHONY : CMakeFiles/main.dir/IR/Constant.cc.o.requires

CMakeFiles/main.dir/IR/Constant.cc.o.provides: CMakeFiles/main.dir/IR/Constant.cc.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/IR/Constant.cc.o.provides.build
.PHONY : CMakeFiles/main.dir/IR/Constant.cc.o.provides

CMakeFiles/main.dir/IR/Constant.cc.o.provides.build: CMakeFiles/main.dir/IR/Constant.cc.o


CMakeFiles/main.dir/IR/Function.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IR/Function.cc.o: ../IR/Function.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/main.dir/IR/Function.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/IR/Function.cc.o -c /home/linux/Desktop/Sys2021/IR/Function.cc

CMakeFiles/main.dir/IR/Function.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IR/Function.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/Sys2021/IR/Function.cc > CMakeFiles/main.dir/IR/Function.cc.i

CMakeFiles/main.dir/IR/Function.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IR/Function.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/Sys2021/IR/Function.cc -o CMakeFiles/main.dir/IR/Function.cc.s

CMakeFiles/main.dir/IR/Function.cc.o.requires:

.PHONY : CMakeFiles/main.dir/IR/Function.cc.o.requires

CMakeFiles/main.dir/IR/Function.cc.o.provides: CMakeFiles/main.dir/IR/Function.cc.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/IR/Function.cc.o.provides.build
.PHONY : CMakeFiles/main.dir/IR/Function.cc.o.provides

CMakeFiles/main.dir/IR/Function.cc.o.provides.build: CMakeFiles/main.dir/IR/Function.cc.o


CMakeFiles/main.dir/IR/GlobalVariable.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IR/GlobalVariable.cc.o: ../IR/GlobalVariable.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/main.dir/IR/GlobalVariable.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/IR/GlobalVariable.cc.o -c /home/linux/Desktop/Sys2021/IR/GlobalVariable.cc

CMakeFiles/main.dir/IR/GlobalVariable.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IR/GlobalVariable.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/Sys2021/IR/GlobalVariable.cc > CMakeFiles/main.dir/IR/GlobalVariable.cc.i

CMakeFiles/main.dir/IR/GlobalVariable.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IR/GlobalVariable.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/Sys2021/IR/GlobalVariable.cc -o CMakeFiles/main.dir/IR/GlobalVariable.cc.s

CMakeFiles/main.dir/IR/GlobalVariable.cc.o.requires:

.PHONY : CMakeFiles/main.dir/IR/GlobalVariable.cc.o.requires

CMakeFiles/main.dir/IR/GlobalVariable.cc.o.provides: CMakeFiles/main.dir/IR/GlobalVariable.cc.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/IR/GlobalVariable.cc.o.provides.build
.PHONY : CMakeFiles/main.dir/IR/GlobalVariable.cc.o.provides

CMakeFiles/main.dir/IR/GlobalVariable.cc.o.provides.build: CMakeFiles/main.dir/IR/GlobalVariable.cc.o


CMakeFiles/main.dir/IR/Instruction.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IR/Instruction.cc.o: ../IR/Instruction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/main.dir/IR/Instruction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/IR/Instruction.cc.o -c /home/linux/Desktop/Sys2021/IR/Instruction.cc

CMakeFiles/main.dir/IR/Instruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IR/Instruction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/Sys2021/IR/Instruction.cc > CMakeFiles/main.dir/IR/Instruction.cc.i

CMakeFiles/main.dir/IR/Instruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IR/Instruction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/Sys2021/IR/Instruction.cc -o CMakeFiles/main.dir/IR/Instruction.cc.s

CMakeFiles/main.dir/IR/Instruction.cc.o.requires:

.PHONY : CMakeFiles/main.dir/IR/Instruction.cc.o.requires

CMakeFiles/main.dir/IR/Instruction.cc.o.provides: CMakeFiles/main.dir/IR/Instruction.cc.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/IR/Instruction.cc.o.provides.build
.PHONY : CMakeFiles/main.dir/IR/Instruction.cc.o.provides

CMakeFiles/main.dir/IR/Instruction.cc.o.provides.build: CMakeFiles/main.dir/IR/Instruction.cc.o


CMakeFiles/main.dir/IR/Module.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IR/Module.cc.o: ../IR/Module.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/main.dir/IR/Module.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/IR/Module.cc.o -c /home/linux/Desktop/Sys2021/IR/Module.cc

CMakeFiles/main.dir/IR/Module.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IR/Module.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/Sys2021/IR/Module.cc > CMakeFiles/main.dir/IR/Module.cc.i

CMakeFiles/main.dir/IR/Module.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IR/Module.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/Sys2021/IR/Module.cc -o CMakeFiles/main.dir/IR/Module.cc.s

CMakeFiles/main.dir/IR/Module.cc.o.requires:

.PHONY : CMakeFiles/main.dir/IR/Module.cc.o.requires

CMakeFiles/main.dir/IR/Module.cc.o.provides: CMakeFiles/main.dir/IR/Module.cc.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/IR/Module.cc.o.provides.build
.PHONY : CMakeFiles/main.dir/IR/Module.cc.o.provides

CMakeFiles/main.dir/IR/Module.cc.o.provides.build: CMakeFiles/main.dir/IR/Module.cc.o


CMakeFiles/main.dir/IR/Type.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IR/Type.cc.o: ../IR/Type.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/main.dir/IR/Type.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/IR/Type.cc.o -c /home/linux/Desktop/Sys2021/IR/Type.cc

CMakeFiles/main.dir/IR/Type.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IR/Type.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/Sys2021/IR/Type.cc > CMakeFiles/main.dir/IR/Type.cc.i

CMakeFiles/main.dir/IR/Type.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IR/Type.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/Sys2021/IR/Type.cc -o CMakeFiles/main.dir/IR/Type.cc.s

CMakeFiles/main.dir/IR/Type.cc.o.requires:

.PHONY : CMakeFiles/main.dir/IR/Type.cc.o.requires

CMakeFiles/main.dir/IR/Type.cc.o.provides: CMakeFiles/main.dir/IR/Type.cc.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/IR/Type.cc.o.provides.build
.PHONY : CMakeFiles/main.dir/IR/Type.cc.o.provides

CMakeFiles/main.dir/IR/Type.cc.o.provides.build: CMakeFiles/main.dir/IR/Type.cc.o


CMakeFiles/main.dir/IR/User.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IR/User.cc.o: ../IR/User.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/main.dir/IR/User.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/IR/User.cc.o -c /home/linux/Desktop/Sys2021/IR/User.cc

CMakeFiles/main.dir/IR/User.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IR/User.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/Sys2021/IR/User.cc > CMakeFiles/main.dir/IR/User.cc.i

CMakeFiles/main.dir/IR/User.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IR/User.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/Sys2021/IR/User.cc -o CMakeFiles/main.dir/IR/User.cc.s

CMakeFiles/main.dir/IR/User.cc.o.requires:

.PHONY : CMakeFiles/main.dir/IR/User.cc.o.requires

CMakeFiles/main.dir/IR/User.cc.o.provides: CMakeFiles/main.dir/IR/User.cc.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/IR/User.cc.o.provides.build
.PHONY : CMakeFiles/main.dir/IR/User.cc.o.provides

CMakeFiles/main.dir/IR/User.cc.o.provides.build: CMakeFiles/main.dir/IR/User.cc.o


CMakeFiles/main.dir/IR/Value.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/IR/Value.cc.o: ../IR/Value.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/main.dir/IR/Value.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/IR/Value.cc.o -c /home/linux/Desktop/Sys2021/IR/Value.cc

CMakeFiles/main.dir/IR/Value.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/IR/Value.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/Sys2021/IR/Value.cc > CMakeFiles/main.dir/IR/Value.cc.i

CMakeFiles/main.dir/IR/Value.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/IR/Value.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/Sys2021/IR/Value.cc -o CMakeFiles/main.dir/IR/Value.cc.s

CMakeFiles/main.dir/IR/Value.cc.o.requires:

.PHONY : CMakeFiles/main.dir/IR/Value.cc.o.requires

CMakeFiles/main.dir/IR/Value.cc.o.provides: CMakeFiles/main.dir/IR/Value.cc.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/IR/Value.cc.o.provides.build
.PHONY : CMakeFiles/main.dir/IR/Value.cc.o.provides

CMakeFiles/main.dir/IR/Value.cc.o.provides.build: CMakeFiles/main.dir/IR/Value.cc.o


# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main.cc.o" \
"CMakeFiles/main.dir/sysy_parser.cc.o" \
"CMakeFiles/main.dir/sysy_scanner.cc.o" \
"CMakeFiles/main.dir/syntax_tree.cc.o" \
"CMakeFiles/main.dir/sysy_driver.cc.o" \
"CMakeFiles/main.dir/IRBuilder/SYSYCBuilder.cc.o" \
"CMakeFiles/main.dir/IR/BaseBlock.cc.o" \
"CMakeFiles/main.dir/IR/BasicBlock.cc.o" \
"CMakeFiles/main.dir/IR/Constant.cc.o" \
"CMakeFiles/main.dir/IR/Function.cc.o" \
"CMakeFiles/main.dir/IR/GlobalVariable.cc.o" \
"CMakeFiles/main.dir/IR/Instruction.cc.o" \
"CMakeFiles/main.dir/IR/Module.cc.o" \
"CMakeFiles/main.dir/IR/Type.cc.o" \
"CMakeFiles/main.dir/IR/User.cc.o" \
"CMakeFiles/main.dir/IR/Value.cc.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

main: CMakeFiles/main.dir/main.cc.o
main: CMakeFiles/main.dir/sysy_parser.cc.o
main: CMakeFiles/main.dir/sysy_scanner.cc.o
main: CMakeFiles/main.dir/syntax_tree.cc.o
main: CMakeFiles/main.dir/sysy_driver.cc.o
main: CMakeFiles/main.dir/IRBuilder/SYSYCBuilder.cc.o
main: CMakeFiles/main.dir/IR/BaseBlock.cc.o
main: CMakeFiles/main.dir/IR/BasicBlock.cc.o
main: CMakeFiles/main.dir/IR/Constant.cc.o
main: CMakeFiles/main.dir/IR/Function.cc.o
main: CMakeFiles/main.dir/IR/GlobalVariable.cc.o
main: CMakeFiles/main.dir/IR/Instruction.cc.o
main: CMakeFiles/main.dir/IR/Module.cc.o
main: CMakeFiles/main.dir/IR/Type.cc.o
main: CMakeFiles/main.dir/IR/User.cc.o
main: CMakeFiles/main.dir/IR/Value.cc.o
main: CMakeFiles/main.dir/build.make
main: libIRBuilder.a
main: libsysy_driver.a
main: libIR_lib.a
main: /usr/lib/llvm-6.0/lib/libLLVM-6.0.so.1
main: CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/linux/Desktop/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Linking CXX executable main"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.dir/build: main

.PHONY : CMakeFiles/main.dir/build

CMakeFiles/main.dir/requires: CMakeFiles/main.dir/main.cc.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/sysy_parser.cc.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/sysy_scanner.cc.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/syntax_tree.cc.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/sysy_driver.cc.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/IRBuilder/SYSYCBuilder.cc.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/IR/BaseBlock.cc.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/IR/BasicBlock.cc.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/IR/Constant.cc.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/IR/Function.cc.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/IR/GlobalVariable.cc.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/IR/Instruction.cc.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/IR/Module.cc.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/IR/Type.cc.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/IR/User.cc.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/IR/Value.cc.o.requires

.PHONY : CMakeFiles/main.dir/requires

CMakeFiles/main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.dir/clean

CMakeFiles/main.dir/depend: sysy_scanner.cc
CMakeFiles/main.dir/depend: sysy_parser.cc
CMakeFiles/main.dir/depend: sysy_parser.hh
	cd /home/linux/Desktop/Sys2021/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/linux/Desktop/Sys2021 /home/linux/Desktop/Sys2021 /home/linux/Desktop/Sys2021/build /home/linux/Desktop/Sys2021/build /home/linux/Desktop/Sys2021/build/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main.dir/depend

