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
CMAKE_SOURCE_DIR = /home/zgt/learn_test_codes/test_align_pack

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zgt/learn_test_codes/test_align_pack/build

# Include any dependencies generated for this target.
include CMakeFiles/test_align.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_align.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_align.dir/flags.make

CMakeFiles/test_align.dir/test_align.c.o: CMakeFiles/test_align.dir/flags.make
CMakeFiles/test_align.dir/test_align.c.o: ../test_align.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zgt/learn_test_codes/test_align_pack/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/test_align.dir/test_align.c.o"
	/usr/bin/x86_64-linux-gnu-gcc-5 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_align.dir/test_align.c.o   -c /home/zgt/learn_test_codes/test_align_pack/test_align.c

CMakeFiles/test_align.dir/test_align.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_align.dir/test_align.c.i"
	/usr/bin/x86_64-linux-gnu-gcc-5 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zgt/learn_test_codes/test_align_pack/test_align.c > CMakeFiles/test_align.dir/test_align.c.i

CMakeFiles/test_align.dir/test_align.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_align.dir/test_align.c.s"
	/usr/bin/x86_64-linux-gnu-gcc-5 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zgt/learn_test_codes/test_align_pack/test_align.c -o CMakeFiles/test_align.dir/test_align.c.s

CMakeFiles/test_align.dir/test_align.c.o.requires:

.PHONY : CMakeFiles/test_align.dir/test_align.c.o.requires

CMakeFiles/test_align.dir/test_align.c.o.provides: CMakeFiles/test_align.dir/test_align.c.o.requires
	$(MAKE) -f CMakeFiles/test_align.dir/build.make CMakeFiles/test_align.dir/test_align.c.o.provides.build
.PHONY : CMakeFiles/test_align.dir/test_align.c.o.provides

CMakeFiles/test_align.dir/test_align.c.o.provides.build: CMakeFiles/test_align.dir/test_align.c.o


# Object files for target test_align
test_align_OBJECTS = \
"CMakeFiles/test_align.dir/test_align.c.o"

# External object files for target test_align
test_align_EXTERNAL_OBJECTS =

test_align: CMakeFiles/test_align.dir/test_align.c.o
test_align: CMakeFiles/test_align.dir/build.make
test_align: CMakeFiles/test_align.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zgt/learn_test_codes/test_align_pack/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable test_align"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_align.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_align.dir/build: test_align

.PHONY : CMakeFiles/test_align.dir/build

CMakeFiles/test_align.dir/requires: CMakeFiles/test_align.dir/test_align.c.o.requires

.PHONY : CMakeFiles/test_align.dir/requires

CMakeFiles/test_align.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_align.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_align.dir/clean

CMakeFiles/test_align.dir/depend:
	cd /home/zgt/learn_test_codes/test_align_pack/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zgt/learn_test_codes/test_align_pack /home/zgt/learn_test_codes/test_align_pack /home/zgt/learn_test_codes/test_align_pack/build /home/zgt/learn_test_codes/test_align_pack/build /home/zgt/learn_test_codes/test_align_pack/build/CMakeFiles/test_align.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_align.dir/depend

