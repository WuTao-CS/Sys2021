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
CMAKE_SOURCE_DIR = /home/linux/Desktop/Sys2021/example/src/front_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/linux/Desktop/Sys2021/example/src/front_test/build

# Include any dependencies generated for this target.
include CMakeFiles/CodeGen.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CodeGen.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CodeGen.dir/flags.make

CMakeFiles/CodeGen.dir/CodeGen/CodeGen.cc.o: CMakeFiles/CodeGen.dir/flags.make
CMakeFiles/CodeGen.dir/CodeGen/CodeGen.cc.o: ../CodeGen/CodeGen.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/Sys2021/example/src/front_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CodeGen.dir/CodeGen/CodeGen.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CodeGen.dir/CodeGen/CodeGen.cc.o -c /home/linux/Desktop/Sys2021/example/src/front_test/CodeGen/CodeGen.cc

CMakeFiles/CodeGen.dir/CodeGen/CodeGen.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CodeGen.dir/CodeGen/CodeGen.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/Sys2021/example/src/front_test/CodeGen/CodeGen.cc > CMakeFiles/CodeGen.dir/CodeGen/CodeGen.cc.i

CMakeFiles/CodeGen.dir/CodeGen/CodeGen.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CodeGen.dir/CodeGen/CodeGen.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/Sys2021/example/src/front_test/CodeGen/CodeGen.cc -o CMakeFiles/CodeGen.dir/CodeGen/CodeGen.cc.s

CMakeFiles/CodeGen.dir/CodeGen/CodeGen.cc.o.requires:

.PHONY : CMakeFiles/CodeGen.dir/CodeGen/CodeGen.cc.o.requires

CMakeFiles/CodeGen.dir/CodeGen/CodeGen.cc.o.provides: CMakeFiles/CodeGen.dir/CodeGen/CodeGen.cc.o.requires
	$(MAKE) -f CMakeFiles/CodeGen.dir/build.make CMakeFiles/CodeGen.dir/CodeGen/CodeGen.cc.o.provides.build
.PHONY : CMakeFiles/CodeGen.dir/CodeGen/CodeGen.cc.o.provides

CMakeFiles/CodeGen.dir/CodeGen/CodeGen.cc.o.provides.build: CMakeFiles/CodeGen.dir/CodeGen/CodeGen.cc.o


CMakeFiles/CodeGen.dir/CodeGen/InstructionsGen.cc.o: CMakeFiles/CodeGen.dir/flags.make
CMakeFiles/CodeGen.dir/CodeGen/InstructionsGen.cc.o: ../CodeGen/InstructionsGen.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/Sys2021/example/src/front_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CodeGen.dir/CodeGen/InstructionsGen.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CodeGen.dir/CodeGen/InstructionsGen.cc.o -c /home/linux/Desktop/Sys2021/example/src/front_test/CodeGen/InstructionsGen.cc

CMakeFiles/CodeGen.dir/CodeGen/InstructionsGen.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CodeGen.dir/CodeGen/InstructionsGen.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/Sys2021/example/src/front_test/CodeGen/InstructionsGen.cc > CMakeFiles/CodeGen.dir/CodeGen/InstructionsGen.cc.i

CMakeFiles/CodeGen.dir/CodeGen/InstructionsGen.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CodeGen.dir/CodeGen/InstructionsGen.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/Sys2021/example/src/front_test/CodeGen/InstructionsGen.cc -o CMakeFiles/CodeGen.dir/CodeGen/InstructionsGen.cc.s

CMakeFiles/CodeGen.dir/CodeGen/InstructionsGen.cc.o.requires:

.PHONY : CMakeFiles/CodeGen.dir/CodeGen/InstructionsGen.cc.o.requires

CMakeFiles/CodeGen.dir/CodeGen/InstructionsGen.cc.o.provides: CMakeFiles/CodeGen.dir/CodeGen/InstructionsGen.cc.o.requires
	$(MAKE) -f CMakeFiles/CodeGen.dir/build.make CMakeFiles/CodeGen.dir/CodeGen/InstructionsGen.cc.o.provides.build
.PHONY : CMakeFiles/CodeGen.dir/CodeGen/InstructionsGen.cc.o.provides

CMakeFiles/CodeGen.dir/CodeGen/InstructionsGen.cc.o.provides.build: CMakeFiles/CodeGen.dir/CodeGen/InstructionsGen.cc.o


CMakeFiles/CodeGen.dir/CodeGen/RegAlloc.cc.o: CMakeFiles/CodeGen.dir/flags.make
CMakeFiles/CodeGen.dir/CodeGen/RegAlloc.cc.o: ../CodeGen/RegAlloc.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/Sys2021/example/src/front_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/CodeGen.dir/CodeGen/RegAlloc.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CodeGen.dir/CodeGen/RegAlloc.cc.o -c /home/linux/Desktop/Sys2021/example/src/front_test/CodeGen/RegAlloc.cc

CMakeFiles/CodeGen.dir/CodeGen/RegAlloc.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CodeGen.dir/CodeGen/RegAlloc.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/Sys2021/example/src/front_test/CodeGen/RegAlloc.cc > CMakeFiles/CodeGen.dir/CodeGen/RegAlloc.cc.i

CMakeFiles/CodeGen.dir/CodeGen/RegAlloc.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CodeGen.dir/CodeGen/RegAlloc.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/Sys2021/example/src/front_test/CodeGen/RegAlloc.cc -o CMakeFiles/CodeGen.dir/CodeGen/RegAlloc.cc.s

CMakeFiles/CodeGen.dir/CodeGen/RegAlloc.cc.o.requires:

.PHONY : CMakeFiles/CodeGen.dir/CodeGen/RegAlloc.cc.o.requires

CMakeFiles/CodeGen.dir/CodeGen/RegAlloc.cc.o.provides: CMakeFiles/CodeGen.dir/CodeGen/RegAlloc.cc.o.requires
	$(MAKE) -f CMakeFiles/CodeGen.dir/build.make CMakeFiles/CodeGen.dir/CodeGen/RegAlloc.cc.o.provides.build
.PHONY : CMakeFiles/CodeGen.dir/CodeGen/RegAlloc.cc.o.provides

CMakeFiles/CodeGen.dir/CodeGen/RegAlloc.cc.o.provides.build: CMakeFiles/CodeGen.dir/CodeGen/RegAlloc.cc.o


CMakeFiles/CodeGen.dir/CodeGen/Analyzer.cc.o: CMakeFiles/CodeGen.dir/flags.make
CMakeFiles/CodeGen.dir/CodeGen/Analyzer.cc.o: ../CodeGen/Analyzer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/Sys2021/example/src/front_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/CodeGen.dir/CodeGen/Analyzer.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CodeGen.dir/CodeGen/Analyzer.cc.o -c /home/linux/Desktop/Sys2021/example/src/front_test/CodeGen/Analyzer.cc

CMakeFiles/CodeGen.dir/CodeGen/Analyzer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CodeGen.dir/CodeGen/Analyzer.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/Sys2021/example/src/front_test/CodeGen/Analyzer.cc > CMakeFiles/CodeGen.dir/CodeGen/Analyzer.cc.i

CMakeFiles/CodeGen.dir/CodeGen/Analyzer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CodeGen.dir/CodeGen/Analyzer.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/Sys2021/example/src/front_test/CodeGen/Analyzer.cc -o CMakeFiles/CodeGen.dir/CodeGen/Analyzer.cc.s

CMakeFiles/CodeGen.dir/CodeGen/Analyzer.cc.o.requires:

.PHONY : CMakeFiles/CodeGen.dir/CodeGen/Analyzer.cc.o.requires

CMakeFiles/CodeGen.dir/CodeGen/Analyzer.cc.o.provides: CMakeFiles/CodeGen.dir/CodeGen/Analyzer.cc.o.requires
	$(MAKE) -f CMakeFiles/CodeGen.dir/build.make CMakeFiles/CodeGen.dir/CodeGen/Analyzer.cc.o.provides.build
.PHONY : CMakeFiles/CodeGen.dir/CodeGen/Analyzer.cc.o.provides

CMakeFiles/CodeGen.dir/CodeGen/Analyzer.cc.o.provides.build: CMakeFiles/CodeGen.dir/CodeGen/Analyzer.cc.o


# Object files for target CodeGen
CodeGen_OBJECTS = \
"CMakeFiles/CodeGen.dir/CodeGen/CodeGen.cc.o" \
"CMakeFiles/CodeGen.dir/CodeGen/InstructionsGen.cc.o" \
"CMakeFiles/CodeGen.dir/CodeGen/RegAlloc.cc.o" \
"CMakeFiles/CodeGen.dir/CodeGen/Analyzer.cc.o"

# External object files for target CodeGen
CodeGen_EXTERNAL_OBJECTS =

libCodeGen.a: CMakeFiles/CodeGen.dir/CodeGen/CodeGen.cc.o
libCodeGen.a: CMakeFiles/CodeGen.dir/CodeGen/InstructionsGen.cc.o
libCodeGen.a: CMakeFiles/CodeGen.dir/CodeGen/RegAlloc.cc.o
libCodeGen.a: CMakeFiles/CodeGen.dir/CodeGen/Analyzer.cc.o
libCodeGen.a: CMakeFiles/CodeGen.dir/build.make
libCodeGen.a: CMakeFiles/CodeGen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/linux/Desktop/Sys2021/example/src/front_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library libCodeGen.a"
	$(CMAKE_COMMAND) -P CMakeFiles/CodeGen.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CodeGen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CodeGen.dir/build: libCodeGen.a

.PHONY : CMakeFiles/CodeGen.dir/build

CMakeFiles/CodeGen.dir/requires: CMakeFiles/CodeGen.dir/CodeGen/CodeGen.cc.o.requires
CMakeFiles/CodeGen.dir/requires: CMakeFiles/CodeGen.dir/CodeGen/InstructionsGen.cc.o.requires
CMakeFiles/CodeGen.dir/requires: CMakeFiles/CodeGen.dir/CodeGen/RegAlloc.cc.o.requires
CMakeFiles/CodeGen.dir/requires: CMakeFiles/CodeGen.dir/CodeGen/Analyzer.cc.o.requires

.PHONY : CMakeFiles/CodeGen.dir/requires

CMakeFiles/CodeGen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CodeGen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CodeGen.dir/clean

CMakeFiles/CodeGen.dir/depend:
	cd /home/linux/Desktop/Sys2021/example/src/front_test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/linux/Desktop/Sys2021/example/src/front_test /home/linux/Desktop/Sys2021/example/src/front_test /home/linux/Desktop/Sys2021/example/src/front_test/build /home/linux/Desktop/Sys2021/example/src/front_test/build /home/linux/Desktop/Sys2021/example/src/front_test/build/CMakeFiles/CodeGen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CodeGen.dir/depend
