# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /home/abratu/clion-2016.1.2/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/abratu/clion-2016.1.2/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/abratu/teme/protCom

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/abratu/teme/protCom/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/protCom.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/protCom.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/protCom.dir/flags.make

CMakeFiles/protCom.dir/kreceiver.c.o: CMakeFiles/protCom.dir/flags.make
CMakeFiles/protCom.dir/kreceiver.c.o: ../kreceiver.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abratu/teme/protCom/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/protCom.dir/kreceiver.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/protCom.dir/kreceiver.c.o   -c /home/abratu/teme/protCom/kreceiver.c

CMakeFiles/protCom.dir/kreceiver.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/protCom.dir/kreceiver.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/abratu/teme/protCom/kreceiver.c > CMakeFiles/protCom.dir/kreceiver.c.i

CMakeFiles/protCom.dir/kreceiver.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/protCom.dir/kreceiver.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/abratu/teme/protCom/kreceiver.c -o CMakeFiles/protCom.dir/kreceiver.c.s

CMakeFiles/protCom.dir/kreceiver.c.o.requires:

.PHONY : CMakeFiles/protCom.dir/kreceiver.c.o.requires

CMakeFiles/protCom.dir/kreceiver.c.o.provides: CMakeFiles/protCom.dir/kreceiver.c.o.requires
	$(MAKE) -f CMakeFiles/protCom.dir/build.make CMakeFiles/protCom.dir/kreceiver.c.o.provides.build
.PHONY : CMakeFiles/protCom.dir/kreceiver.c.o.provides

CMakeFiles/protCom.dir/kreceiver.c.o.provides.build: CMakeFiles/protCom.dir/kreceiver.c.o


CMakeFiles/protCom.dir/ksender.c.o: CMakeFiles/protCom.dir/flags.make
CMakeFiles/protCom.dir/ksender.c.o: ../ksender.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abratu/teme/protCom/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/protCom.dir/ksender.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/protCom.dir/ksender.c.o   -c /home/abratu/teme/protCom/ksender.c

CMakeFiles/protCom.dir/ksender.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/protCom.dir/ksender.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/abratu/teme/protCom/ksender.c > CMakeFiles/protCom.dir/ksender.c.i

CMakeFiles/protCom.dir/ksender.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/protCom.dir/ksender.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/abratu/teme/protCom/ksender.c -o CMakeFiles/protCom.dir/ksender.c.s

CMakeFiles/protCom.dir/ksender.c.o.requires:

.PHONY : CMakeFiles/protCom.dir/ksender.c.o.requires

CMakeFiles/protCom.dir/ksender.c.o.provides: CMakeFiles/protCom.dir/ksender.c.o.requires
	$(MAKE) -f CMakeFiles/protCom.dir/build.make CMakeFiles/protCom.dir/ksender.c.o.provides.build
.PHONY : CMakeFiles/protCom.dir/ksender.c.o.provides

CMakeFiles/protCom.dir/ksender.c.o.provides.build: CMakeFiles/protCom.dir/ksender.c.o


CMakeFiles/protCom.dir/doPackage.c.o: CMakeFiles/protCom.dir/flags.make
CMakeFiles/protCom.dir/doPackage.c.o: ../doPackage.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abratu/teme/protCom/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/protCom.dir/doPackage.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/protCom.dir/doPackage.c.o   -c /home/abratu/teme/protCom/doPackage.c

CMakeFiles/protCom.dir/doPackage.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/protCom.dir/doPackage.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/abratu/teme/protCom/doPackage.c > CMakeFiles/protCom.dir/doPackage.c.i

CMakeFiles/protCom.dir/doPackage.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/protCom.dir/doPackage.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/abratu/teme/protCom/doPackage.c -o CMakeFiles/protCom.dir/doPackage.c.s

CMakeFiles/protCom.dir/doPackage.c.o.requires:

.PHONY : CMakeFiles/protCom.dir/doPackage.c.o.requires

CMakeFiles/protCom.dir/doPackage.c.o.provides: CMakeFiles/protCom.dir/doPackage.c.o.requires
	$(MAKE) -f CMakeFiles/protCom.dir/build.make CMakeFiles/protCom.dir/doPackage.c.o.provides.build
.PHONY : CMakeFiles/protCom.dir/doPackage.c.o.provides

CMakeFiles/protCom.dir/doPackage.c.o.provides.build: CMakeFiles/protCom.dir/doPackage.c.o


# Object files for target protCom
protCom_OBJECTS = \
"CMakeFiles/protCom.dir/kreceiver.c.o" \
"CMakeFiles/protCom.dir/ksender.c.o" \
"CMakeFiles/protCom.dir/doPackage.c.o"

# External object files for target protCom
protCom_EXTERNAL_OBJECTS =

protCom: CMakeFiles/protCom.dir/kreceiver.c.o
protCom: CMakeFiles/protCom.dir/ksender.c.o
protCom: CMakeFiles/protCom.dir/doPackage.c.o
protCom: CMakeFiles/protCom.dir/build.make
protCom: CMakeFiles/protCom.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/abratu/teme/protCom/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable protCom"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/protCom.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/protCom.dir/build: protCom

.PHONY : CMakeFiles/protCom.dir/build

CMakeFiles/protCom.dir/requires: CMakeFiles/protCom.dir/kreceiver.c.o.requires
CMakeFiles/protCom.dir/requires: CMakeFiles/protCom.dir/ksender.c.o.requires
CMakeFiles/protCom.dir/requires: CMakeFiles/protCom.dir/doPackage.c.o.requires

.PHONY : CMakeFiles/protCom.dir/requires

CMakeFiles/protCom.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/protCom.dir/cmake_clean.cmake
.PHONY : CMakeFiles/protCom.dir/clean

CMakeFiles/protCom.dir/depend:
	cd /home/abratu/teme/protCom/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/abratu/teme/protCom /home/abratu/teme/protCom /home/abratu/teme/protCom/cmake-build-debug /home/abratu/teme/protCom/cmake-build-debug /home/abratu/teme/protCom/cmake-build-debug/CMakeFiles/protCom.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/protCom.dir/depend
