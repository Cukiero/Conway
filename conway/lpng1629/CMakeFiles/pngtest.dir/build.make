# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.8

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629

# Include any dependencies generated for this target.
include CMakeFiles/pngtest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pngtest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pngtest.dir/flags.make

CMakeFiles/pngtest.dir/pngtest.c.obj: CMakeFiles/pngtest.dir/flags.make
CMakeFiles/pngtest.dir/pngtest.c.obj: CMakeFiles/pngtest.dir/includes_C.rsp
CMakeFiles/pngtest.dir/pngtest.c.obj: pngtest.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/pngtest.dir/pngtest.c.obj"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\pngtest.dir\pngtest.c.obj   -c C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngtest.c

CMakeFiles/pngtest.dir/pngtest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pngtest.dir/pngtest.c.i"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngtest.c > CMakeFiles\pngtest.dir\pngtest.c.i

CMakeFiles/pngtest.dir/pngtest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pngtest.dir/pngtest.c.s"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngtest.c -o CMakeFiles\pngtest.dir\pngtest.c.s

CMakeFiles/pngtest.dir/pngtest.c.obj.requires:

.PHONY : CMakeFiles/pngtest.dir/pngtest.c.obj.requires

CMakeFiles/pngtest.dir/pngtest.c.obj.provides: CMakeFiles/pngtest.dir/pngtest.c.obj.requires
	$(MAKE) -f CMakeFiles\pngtest.dir\build.make CMakeFiles/pngtest.dir/pngtest.c.obj.provides.build
.PHONY : CMakeFiles/pngtest.dir/pngtest.c.obj.provides

CMakeFiles/pngtest.dir/pngtest.c.obj.provides.build: CMakeFiles/pngtest.dir/pngtest.c.obj


# Object files for target pngtest
pngtest_OBJECTS = \
"CMakeFiles/pngtest.dir/pngtest.c.obj"

# External object files for target pngtest
pngtest_EXTERNAL_OBJECTS =

pngtest.exe: CMakeFiles/pngtest.dir/pngtest.c.obj
pngtest.exe: CMakeFiles/pngtest.dir/build.make
pngtest.exe: libpng16.dll.a
pngtest.exe: C:/Program\ Files\ (x86)/GnuWin32/lib/libz.dll.a
pngtest.exe: CMakeFiles/pngtest.dir/linklibs.rsp
pngtest.exe: CMakeFiles/pngtest.dir/objects1.rsp
pngtest.exe: CMakeFiles/pngtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable pngtest.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\pngtest.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pngtest.dir/build: pngtest.exe

.PHONY : CMakeFiles/pngtest.dir/build

CMakeFiles/pngtest.dir/requires: CMakeFiles/pngtest.dir/pngtest.c.obj.requires

.PHONY : CMakeFiles/pngtest.dir/requires

CMakeFiles/pngtest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\pngtest.dir\cmake_clean.cmake
.PHONY : CMakeFiles/pngtest.dir/clean

CMakeFiles/pngtest.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629 C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629 C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629 C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629 C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles\pngtest.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pngtest.dir/depend

