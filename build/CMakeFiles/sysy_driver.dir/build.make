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
include CMakeFiles/sysy_driver.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sysy_driver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sysy_driver.dir/flags.make

CMakeFiles/sysy_driver.dir/sysy_driver.cc.o: CMakeFiles/sysy_driver.dir/flags.make
CMakeFiles/sysy_driver.dir/sysy_driver.cc.o: ../sysy_driver.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linux/Desktop/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sysy_driver.dir/sysy_driver.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sysy_driver.dir/sysy_driver.cc.o -c /home/linux/Desktop/Sys2021/sysy_driver.cc

CMakeFiles/sysy_driver.dir/sysy_driver.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sysy_driver.dir/sysy_driver.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linux/Desktop/Sys2021/sysy_driver.cc > CMakeFiles/sysy_driver.dir/sysy_driver.cc.i

CMakeFiles/sysy_driver.dir/sysy_driver.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sysy_driver.dir/sysy_driver.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linux/Desktop/Sys2021/sysy_driver.cc -o CMakeFiles/sysy_driver.dir/sysy_driver.cc.s

CMakeFiles/sysy_driver.dir/sysy_driver.cc.o.requires:

.PHONY : CMakeFiles/sysy_driver.dir/sysy_driver.cc.o.requires

CMakeFiles/sysy_driver.dir/sysy_driver.cc.o.provides: CMakeFiles/sysy_driver.dir/sysy_driver.cc.o.requires
	$(MAKE) -f CMakeFiles/sysy_driver.dir/build.make CMakeFiles/sysy_driver.dir/sysy_driver.cc.o.provides.build
.PHONY : CMakeFiles/sysy_driver.dir/sysy_driver.cc.o.provides

CMakeFiles/sysy_driver.dir/sysy_driver.cc.o.provides.build: CMakeFiles/sysy_driver.dir/sysy_driver.cc.o


# Object files for target sysy_driver
sysy_driver_OBJECTS = \
"CMakeFiles/sysy_driver.dir/sysy_driver.cc.o"

# External object files for target sysy_driver
sysy_driver_EXTERNAL_OBJECTS =

libsysy_driver.a: CMakeFiles/sysy_driver.dir/sysy_driver.cc.o
libsysy_driver.a: CMakeFiles/sysy_driver.dir/build.make
libsysy_driver.a: CMakeFiles/sysy_driver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/linux/Desktop/Sys2021/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libsysy_driver.a"
	$(CMAKE_COMMAND) -P CMakeFiles/sysy_driver.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sysy_driver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sysy_driver.dir/build: libsysy_driver.a

.PHONY : CMakeFiles/sysy_driver.dir/build

CMakeFiles/sysy_driver.dir/requires: CMakeFiles/sysy_driver.dir/sysy_driver.cc.o.requires

.PHONY : CMakeFiles/sysy_driver.dir/requires

CMakeFiles/sysy_driver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sysy_driver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sysy_driver.dir/clean

CMakeFiles/sysy_driver.dir/depend:
	cd /home/linux/Desktop/Sys2021/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/linux/Desktop/Sys2021 /home/linux/Desktop/Sys2021 /home/linux/Desktop/Sys2021/build /home/linux/Desktop/Sys2021/build /home/linux/Desktop/Sys2021/build/CMakeFiles/sysy_driver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sysy_driver.dir/depend

