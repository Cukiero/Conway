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
include CMakeFiles/pngfix.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pngfix.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pngfix.dir/flags.make

CMakeFiles/pngfix.dir/contrib/tools/pngfix.c.obj: CMakeFiles/pngfix.dir/flags.make
CMakeFiles/pngfix.dir/contrib/tools/pngfix.c.obj: CMakeFiles/pngfix.dir/includes_C.rsp
CMakeFiles/pngfix.dir/contrib/tools/pngfix.c.obj: contrib/tools/pngfix.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/pngfix.dir/contrib/tools/pngfix.c.obj"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\pngfix.dir\contrib\tools\pngfix.c.obj   -c C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\contrib\tools\pngfix.c

CMakeFiles/pngfix.dir/contrib/tools/pngfix.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pngfix.dir/contrib/tools/pngfix.c.i"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\contrib\tools\pngfix.c > CMakeFiles\pngfix.dir\contrib\tools\pngfix.c.i

CMakeFiles/pngfix.dir/contrib/tools/pngfix.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pngfix.dir/contrib/tools/pngfix.c.s"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\contrib\tools\pngfix.c -o CMakeFiles\pngfix.dir\contrib\tools\pngfix.c.s

CMakeFiles/pngfix.dir/contrib/tools/pngfix.c.obj.requires:

.PHONY : CMakeFiles/pngfix.dir/contrib/tools/pngfix.c.obj.requires

CMakeFiles/pngfix.dir/contrib/tools/pngfix.c.obj.provides: CMakeFiles/pngfix.dir/contrib/tools/pngfix.c.obj.requires
	$(MAKE) -f CMakeFiles\pngfix.dir\build.make CMakeFiles/pngfix.dir/contrib/tools/pngfix.c.obj.provides.build
.PHONY : CMakeFiles/pngfix.dir/contrib/tools/pngfix.c.obj.provides

CMakeFiles/pngfix.dir/contrib/tools/pngfix.c.obj.provides.build: CMakeFiles/pngfix.dir/contrib/tools/pngfix.c.obj


# Object files for target pngfix
pngfix_OBJECTS = \
"CMakeFiles/pngfix.dir/contrib/tools/pngfix.c.obj"

# External object files for target pngfix
pngfix_EXTERNAL_OBJECTS =

pngfix.exe: CMakeFiles/pngfix.dir/contrib/tools/pngfix.c.obj
pngfix.exe: CMakeFiles/pngfix.dir/build.make
pngfix.exe: libpng16.dll.a
pngfix.exe: C:/Program\ Files\ (x86)/GnuWin32/lib/libz.dll.a
pngfix.exe: CMakeFiles/pngfix.dir/linklibs.rsp
pngfix.exe: CMakeFiles/pngfix.dir/objects1.rsp
pngfix.exe: CMakeFiles/pngfix.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable pngfix.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\pngfix.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pngfix.dir/build: pngfix.exe

.PHONY : CMakeFiles/pngfix.dir/build

CMakeFiles/pngfix.dir/requires: CMakeFiles/pngfix.dir/contrib/tools/pngfix.c.obj.requires

.PHONY : CMakeFiles/pngfix.dir/requires

CMakeFiles/pngfix.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\pngfix.dir\cmake_clean.cmake
.PHONY : CMakeFiles/pngfix.dir/clean

CMakeFiles/pngfix.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629 C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629 C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629 C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629 C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles\pngfix.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pngfix.dir/depend
