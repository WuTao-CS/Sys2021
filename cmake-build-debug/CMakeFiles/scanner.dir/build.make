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
include CMakeFiles/scanner.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/scanner.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/scanner.dir/flags.make

CMakeFiles/scanner.dir/front/sysy_scanner.cc.o: CMakeFiles/scanner.dir/flags.make
CMakeFiles/scanner.dir/front/sysy_scanner.cc.o: ../front/sysy_scanner.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/scanner.dir/front/sysy_scanner.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/scanner.dir/front/sysy_scanner.cc.o -c /home/linux/Desktop/compiler/Sys2021_v3/front/sysy_scanner.cc

CMakeFiles/scanner.dir/front/sysy_scanner.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scanner.dir/front/sysy_scanner.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/compiler/Sys2021_v3/front/sysy_scanner.cc > CMakeFiles/scanner.dir/front/sysy_scanner.cc.i

CMakeFiles/scanner.dir/front/sysy_scanner.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scanner.dir/front/sysy_scanner.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/compiler/Sys2021_v3/front/sysy_scanner.cc -o CMakeFiles/scanner.dir/front/sysy_scanner.cc.s

# Object files for target scanner
scanner_OBJECTS = \
"CMakeFiles/scanner.dir/front/sysy_scanner.cc.o"

# External object files for target scanner
scanner_EXTERNAL_OBJECTS =

libscanner.a: CMakeFiles/scanner.dir/front/sysy_scanner.cc.o
libscanner.a: CMakeFiles/scanner.dir/build.make
libscanner.a: CMakeFiles/scanner.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/linux/Desktop/compiler/Sys2021_v3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libscanner.a"
	$(CMAKE_COMMAND) -P CMakeFiles/scanner.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scanner.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/scanner.dir/build: libscanner.a

.PHONY : CMakeFiles/scanner.dir/build

CMakeFiles/scanner.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/scanner.dir/cmake_clean.cmake
.PHONY : CMakeFiles/scanner.dir/clean

CMakeFiles/scanner.dir/depend:
	cd /home/linux/Desktop/compiler/Sys2021_v3/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/linux/Desktop/compiler/Sys2021_v3 /home/linux/Desktop/compiler/Sys2021_v3 /home/linux/Desktop/compiler/Sys2021_v3/cmake-build-debug /home/linux/Desktop/compiler/Sys2021_v3/cmake-build-debug /home/linux/Desktop/compiler/Sys2021_v3/cmake-build-debug/CMakeFiles/scanner.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/scanner.dir/depend

