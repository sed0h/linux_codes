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
CMAKE_SOURCE_DIR = /home/zgt/learn_test_codes/socket_exercise

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zgt/learn_test_codes/socket_exercise/build

# Include any dependencies generated for this target.
include CMakeFiles/socket_exercise.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/socket_exercise.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/socket_exercise.dir/flags.make

CMakeFiles/socket_exercise.dir/main.c.o: CMakeFiles/socket_exercise.dir/flags.make
CMakeFiles/socket_exercise.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zgt/learn_test_codes/socket_exercise/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/socket_exercise.dir/main.c.o"
	/usr/bin/x86_64-linux-gnu-gcc-5 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/socket_exercise.dir/main.c.o   -c /home/zgt/learn_test_codes/socket_exercise/main.c

CMakeFiles/socket_exercise.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/socket_exercise.dir/main.c.i"
	/usr/bin/x86_64-linux-gnu-gcc-5 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zgt/learn_test_codes/socket_exercise/main.c > CMakeFiles/socket_exercise.dir/main.c.i

CMakeFiles/socket_exercise.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/socket_exercise.dir/main.c.s"
	/usr/bin/x86_64-linux-gnu-gcc-5 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zgt/learn_test_codes/socket_exercise/main.c -o CMakeFiles/socket_exercise.dir/main.c.s

CMakeFiles/socket_exercise.dir/main.c.o.requires:

.PHONY : CMakeFiles/socket_exercise.dir/main.c.o.requires

CMakeFiles/socket_exercise.dir/main.c.o.provides: CMakeFiles/socket_exercise.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/socket_exercise.dir/build.make CMakeFiles/socket_exercise.dir/main.c.o.provides.build
.PHONY : CMakeFiles/socket_exercise.dir/main.c.o.provides

CMakeFiles/socket_exercise.dir/main.c.o.provides.build: CMakeFiles/socket_exercise.dir/main.c.o


# Object files for target socket_exercise
socket_exercise_OBJECTS = \
"CMakeFiles/socket_exercise.dir/main.c.o"

# External object files for target socket_exercise
socket_exercise_EXTERNAL_OBJECTS =

socket_exercise: CMakeFiles/socket_exercise.dir/main.c.o
socket_exercise: CMakeFiles/socket_exercise.dir/build.make
socket_exercise: CMakeFiles/socket_exercise.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zgt/learn_test_codes/socket_exercise/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable socket_exercise"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/socket_exercise.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/socket_exercise.dir/build: socket_exercise

.PHONY : CMakeFiles/socket_exercise.dir/build

CMakeFiles/socket_exercise.dir/requires: CMakeFiles/socket_exercise.dir/main.c.o.requires

.PHONY : CMakeFiles/socket_exercise.dir/requires

CMakeFiles/socket_exercise.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/socket_exercise.dir/cmake_clean.cmake
.PHONY : CMakeFiles/socket_exercise.dir/clean

CMakeFiles/socket_exercise.dir/depend:
	cd /home/zgt/learn_test_codes/socket_exercise/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zgt/learn_test_codes/socket_exercise /home/zgt/learn_test_codes/socket_exercise /home/zgt/learn_test_codes/socket_exercise/build /home/zgt/learn_test_codes/socket_exercise/build /home/zgt/learn_test_codes/socket_exercise/build/CMakeFiles/socket_exercise.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/socket_exercise.dir/depend

