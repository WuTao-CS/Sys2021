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
CMAKE_SOURCE_DIR = /home/linux/Desktop/compiler/Sys2021

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/linux/Desktop/compiler/Sys2021/build

# Include any dependencies generated for this target.
include CMakeFiles/sysy_driver.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sysy_driver.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sysy_driver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sysy_driver.dir/flags.make

CMakeFiles/sysy_driver.dir/front/sysy_driver.cc.o: CMakeFiles/sysy_driver.dir/flags.make
CMakeFiles/sysy_driver.dir/front/sysy_driver.cc.o: ../front/sysy_driver.cc
CMakeFiles/sysy_driver.dir/front/sysy_driver.cc.o: CMakeFiles/sysy_driver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sysy_driver.dir/front/sysy_driver.cc.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sysy_driver.dir/front/sysy_driver.cc.o -MF CMakeFiles/sysy_driver.dir/front/sysy_driver.cc.o.d -o CMakeFiles/sysy_driver.dir/front/sysy_driver.cc.o -c /home/linux/Desktop/compiler/Sys2021/front/sysy_driver.cc

CMakeFiles/sysy_driver.dir/front/sysy_driver.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sysy_driver.dir/front/sysy_driver.cc.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021/front/sysy_driver.cc > CMakeFiles/sysy_driver.dir/front/sysy_driver.cc.i

CMakeFiles/sysy_driver.dir/front/sysy_driver.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sysy_driver.dir/front/sysy_driver.cc.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021/front/sysy_driver.cc -o CMakeFiles/sysy_driver.dir/front/sysy_driver.cc.s

# Object files for target sysy_driver
sysy_driver_OBJECTS = \
"CMakeFiles/sysy_driver.dir/front/sysy_driver.cc.o"

# External object files for target sysy_driver
sysy_driver_EXTERNAL_OBJECTS =

libsysy_driver.a: CMakeFiles/sysy_driver.dir/front/sysy_driver.cc.o
libsysy_driver.a: CMakeFiles/sysy_driver.dir/build.make
libsysy_driver.a: CMakeFiles/sysy_driver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/linux/Desktop/compiler/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libsysy_driver.a"
	$(CMAKE_COMMAND) -P CMakeFiles/sysy_driver.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sysy_driver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sysy_driver.dir/build: libsysy_driver.a
.PHONY : CMakeFiles/sysy_driver.dir/build

CMakeFiles/sysy_driver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sysy_driver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sysy_driver.dir/clean

CMakeFiles/sysy_driver.dir/depend:
	cd /home/linux/Desktop/compiler/Sys2021/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/linux/Desktop/compiler/Sys2021 /home/linux/Desktop/compiler/Sys2021 /home/linux/Desktop/compiler/Sys2021/build /home/linux/Desktop/compiler/Sys2021/build /home/linux/Desktop/compiler/Sys2021/build/CMakeFiles/sysy_driver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sysy_driver.dir/depend

