# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /home/linux/Downloads/CLion-2020.3.1/clion-2020.3.1/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/linux/Downloads/CLion-2020.3.1/clion-2020.3.1/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/linux/Desktop/compiler/Sys2021_v3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/linux/Desktop/compiler/Sys2021_v3/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CodeGen.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CodeGen.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CodeGen.dir/flags.make

CMakeFiles/CodeGen.dir/codeGen/codeGen.cc.o: CMakeFiles/CodeGen.dir/flags.make
CMakeFiles/CodeGen.dir/codeGen/codeGen.cc.o: ../codeGen/codeGen.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CodeGen.dir/codeGen/codeGen.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CodeGen.dir/codeGen/codeGen.cc.o -c /home/linux/Desktop/compiler/Sys2021_v3/codeGen/codeGen.cc

CMakeFiles/CodeGen.dir/codeGen/codeGen.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CodeGen.dir/codeGen/codeGen.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021_v3/codeGen/codeGen.cc > CMakeFiles/CodeGen.dir/codeGen/codeGen.cc.i

CMakeFiles/CodeGen.dir/codeGen/codeGen.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CodeGen.dir/codeGen/codeGen.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021_v3/codeGen/codeGen.cc -o CMakeFiles/CodeGen.dir/codeGen/codeGen.cc.s

CMakeFiles/CodeGen.dir/codeGen/instructionsGen.cc.o: CMakeFiles/CodeGen.dir/flags.make
CMakeFiles/CodeGen.dir/codeGen/instructionsGen.cc.o: ../codeGen/instructionsGen.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CodeGen.dir/codeGen/instructionsGen.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CodeGen.dir/codeGen/instructionsGen.cc.o -c /home/linux/Desktop/compiler/Sys2021_v3/codeGen/instructionsGen.cc

CMakeFiles/CodeGen.dir/codeGen/instructionsGen.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CodeGen.dir/codeGen/instructionsGen.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021_v3/codeGen/instructionsGen.cc > CMakeFiles/CodeGen.dir/codeGen/instructionsGen.cc.i

CMakeFiles/CodeGen.dir/codeGen/instructionsGen.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CodeGen.dir/codeGen/instructionsGen.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021_v3/codeGen/instructionsGen.cc -o CMakeFiles/CodeGen.dir/codeGen/instructionsGen.cc.s

# Object files for target CodeGen
CodeGen_OBJECTS = \
"CMakeFiles/CodeGen.dir/codeGen/codeGen.cc.o" \
"CMakeFiles/CodeGen.dir/codeGen/instructionsGen.cc.o"

# External object files for target CodeGen
CodeGen_EXTERNAL_OBJECTS =

libCodeGen.a: CMakeFiles/CodeGen.dir/codeGen/codeGen.cc.o
libCodeGen.a: CMakeFiles/CodeGen.dir/codeGen/instructionsGen.cc.o
libCodeGen.a: CMakeFiles/CodeGen.dir/build.make
libCodeGen.a: CMakeFiles/CodeGen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libCodeGen.a"
	$(CMAKE_COMMAND) -P CMakeFiles/CodeGen.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CodeGen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CodeGen.dir/build: libCodeGen.a

.PHONY : CMakeFiles/CodeGen.dir/build

CMakeFiles/CodeGen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CodeGen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CodeGen.dir/clean

CMakeFiles/CodeGen.dir/depend:
	cd /home/linux/Desktop/compiler/Sys2021_v3/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/linux/Desktop/compiler/Sys2021_v3 /home/linux/Desktop/compiler/Sys2021_v3 /home/linux/Desktop/compiler/Sys2021_v3/cmake-build-debug /home/linux/Desktop/compiler/Sys2021_v3/cmake-build-debug /home/linux/Desktop/compiler/Sys2021_v3/cmake-build-debug/CMakeFiles/CodeGen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CodeGen.dir/depend

