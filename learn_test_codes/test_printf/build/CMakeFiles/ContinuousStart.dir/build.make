# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /home/zgt/Downloads/cmake-3.9.1-Linux-x86_64/bin/cmake

# The command to remove a file.
RM = /home/zgt/Downloads/cmake-3.9.1-Linux-x86_64/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zgt/learn_test_codes/test_printf

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zgt/learn_test_codes/test_printf/build

# Utility rule file for ContinuousStart.

# Include the progress variables for this target.
include CMakeFiles/ContinuousStart.dir/progress.make

CMakeFiles/ContinuousStart:
	/home/zgt/Downloads/cmake-3.9.1-Linux-x86_64/bin/ctest -D ContinuousStart

ContinuousStart: CMakeFiles/ContinuousStart
ContinuousStart: CMakeFiles/ContinuousStart.dir/build.make

.PHONY : ContinuousStart

# Rule to build all files generated by this target.
CMakeFiles/ContinuousStart.dir/build: ContinuousStart

.PHONY : CMakeFiles/ContinuousStart.dir/build

CMakeFiles/ContinuousStart.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ContinuousStart.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ContinuousStart.dir/clean

CMakeFiles/ContinuousStart.dir/depend:
	cd /home/zgt/learn_test_codes/test_printf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zgt/learn_test_codes/test_printf /home/zgt/learn_test_codes/test_printf /home/zgt/learn_test_codes/test_printf/build /home/zgt/learn_test_codes/test_printf/build /home/zgt/learn_test_codes/test_printf/build/CMakeFiles/ContinuousStart.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ContinuousStart.dir/depend

