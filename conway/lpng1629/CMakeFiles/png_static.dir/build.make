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
include CMakeFiles/png_static.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/png_static.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/png_static.dir/flags.make

CMakeFiles/png_static.dir/png.c.obj: CMakeFiles/png_static.dir/flags.make
CMakeFiles/png_static.dir/png.c.obj: CMakeFiles/png_static.dir/includes_C.rsp
CMakeFiles/png_static.dir/png.c.obj: png.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/png_static.dir/png.c.obj"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\png_static.dir\png.c.obj   -c C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\png.c

CMakeFiles/png_static.dir/png.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_static.dir/png.c.i"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\png.c > CMakeFiles\png_static.dir\png.c.i

CMakeFiles/png_static.dir/png.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_static.dir/png.c.s"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\png.c -o CMakeFiles\png_static.dir\png.c.s

CMakeFiles/png_static.dir/png.c.obj.requires:

.PHONY : CMakeFiles/png_static.dir/png.c.obj.requires

CMakeFiles/png_static.dir/png.c.obj.provides: CMakeFiles/png_static.dir/png.c.obj.requires
	$(MAKE) -f CMakeFiles\png_static.dir\build.make CMakeFiles/png_static.dir/png.c.obj.provides.build
.PHONY : CMakeFiles/png_static.dir/png.c.obj.provides

CMakeFiles/png_static.dir/png.c.obj.provides.build: CMakeFiles/png_static.dir/png.c.obj


CMakeFiles/png_static.dir/pngerror.c.obj: CMakeFiles/png_static.dir/flags.make
CMakeFiles/png_static.dir/pngerror.c.obj: CMakeFiles/png_static.dir/includes_C.rsp
CMakeFiles/png_static.dir/pngerror.c.obj: pngerror.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/png_static.dir/pngerror.c.obj"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\png_static.dir\pngerror.c.obj   -c C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngerror.c

CMakeFiles/png_static.dir/pngerror.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_static.dir/pngerror.c.i"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngerror.c > CMakeFiles\png_static.dir\pngerror.c.i

CMakeFiles/png_static.dir/pngerror.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_static.dir/pngerror.c.s"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngerror.c -o CMakeFiles\png_static.dir\pngerror.c.s

CMakeFiles/png_static.dir/pngerror.c.obj.requires:

.PHONY : CMakeFiles/png_static.dir/pngerror.c.obj.requires

CMakeFiles/png_static.dir/pngerror.c.obj.provides: CMakeFiles/png_static.dir/pngerror.c.obj.requires
	$(MAKE) -f CMakeFiles\png_static.dir\build.make CMakeFiles/png_static.dir/pngerror.c.obj.provides.build
.PHONY : CMakeFiles/png_static.dir/pngerror.c.obj.provides

CMakeFiles/png_static.dir/pngerror.c.obj.provides.build: CMakeFiles/png_static.dir/pngerror.c.obj


CMakeFiles/png_static.dir/pngget.c.obj: CMakeFiles/png_static.dir/flags.make
CMakeFiles/png_static.dir/pngget.c.obj: CMakeFiles/png_static.dir/includes_C.rsp
CMakeFiles/png_static.dir/pngget.c.obj: pngget.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/png_static.dir/pngget.c.obj"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\png_static.dir\pngget.c.obj   -c C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngget.c

CMakeFiles/png_static.dir/pngget.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_static.dir/pngget.c.i"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngget.c > CMakeFiles\png_static.dir\pngget.c.i

CMakeFiles/png_static.dir/pngget.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_static.dir/pngget.c.s"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngget.c -o CMakeFiles\png_static.dir\pngget.c.s

CMakeFiles/png_static.dir/pngget.c.obj.requires:

.PHONY : CMakeFiles/png_static.dir/pngget.c.obj.requires

CMakeFiles/png_static.dir/pngget.c.obj.provides: CMakeFiles/png_static.dir/pngget.c.obj.requires
	$(MAKE) -f CMakeFiles\png_static.dir\build.make CMakeFiles/png_static.dir/pngget.c.obj.provides.build
.PHONY : CMakeFiles/png_static.dir/pngget.c.obj.provides

CMakeFiles/png_static.dir/pngget.c.obj.provides.build: CMakeFiles/png_static.dir/pngget.c.obj


CMakeFiles/png_static.dir/pngmem.c.obj: CMakeFiles/png_static.dir/flags.make
CMakeFiles/png_static.dir/pngmem.c.obj: CMakeFiles/png_static.dir/includes_C.rsp
CMakeFiles/png_static.dir/pngmem.c.obj: pngmem.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/png_static.dir/pngmem.c.obj"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\png_static.dir\pngmem.c.obj   -c C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngmem.c

CMakeFiles/png_static.dir/pngmem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_static.dir/pngmem.c.i"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngmem.c > CMakeFiles\png_static.dir\pngmem.c.i

CMakeFiles/png_static.dir/pngmem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_static.dir/pngmem.c.s"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngmem.c -o CMakeFiles\png_static.dir\pngmem.c.s

CMakeFiles/png_static.dir/pngmem.c.obj.requires:

.PHONY : CMakeFiles/png_static.dir/pngmem.c.obj.requires

CMakeFiles/png_static.dir/pngmem.c.obj.provides: CMakeFiles/png_static.dir/pngmem.c.obj.requires
	$(MAKE) -f CMakeFiles\png_static.dir\build.make CMakeFiles/png_static.dir/pngmem.c.obj.provides.build
.PHONY : CMakeFiles/png_static.dir/pngmem.c.obj.provides

CMakeFiles/png_static.dir/pngmem.c.obj.provides.build: CMakeFiles/png_static.dir/pngmem.c.obj


CMakeFiles/png_static.dir/pngpread.c.obj: CMakeFiles/png_static.dir/flags.make
CMakeFiles/png_static.dir/pngpread.c.obj: CMakeFiles/png_static.dir/includes_C.rsp
CMakeFiles/png_static.dir/pngpread.c.obj: pngpread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/png_static.dir/pngpread.c.obj"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\png_static.dir\pngpread.c.obj   -c C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngpread.c

CMakeFiles/png_static.dir/pngpread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_static.dir/pngpread.c.i"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngpread.c > CMakeFiles\png_static.dir\pngpread.c.i

CMakeFiles/png_static.dir/pngpread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_static.dir/pngpread.c.s"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngpread.c -o CMakeFiles\png_static.dir\pngpread.c.s

CMakeFiles/png_static.dir/pngpread.c.obj.requires:

.PHONY : CMakeFiles/png_static.dir/pngpread.c.obj.requires

CMakeFiles/png_static.dir/pngpread.c.obj.provides: CMakeFiles/png_static.dir/pngpread.c.obj.requires
	$(MAKE) -f CMakeFiles\png_static.dir\build.make CMakeFiles/png_static.dir/pngpread.c.obj.provides.build
.PHONY : CMakeFiles/png_static.dir/pngpread.c.obj.provides

CMakeFiles/png_static.dir/pngpread.c.obj.provides.build: CMakeFiles/png_static.dir/pngpread.c.obj


CMakeFiles/png_static.dir/pngread.c.obj: CMakeFiles/png_static.dir/flags.make
CMakeFiles/png_static.dir/pngread.c.obj: CMakeFiles/png_static.dir/includes_C.rsp
CMakeFiles/png_static.dir/pngread.c.obj: pngread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/png_static.dir/pngread.c.obj"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\png_static.dir\pngread.c.obj   -c C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngread.c

CMakeFiles/png_static.dir/pngread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_static.dir/pngread.c.i"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngread.c > CMakeFiles\png_static.dir\pngread.c.i

CMakeFiles/png_static.dir/pngread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_static.dir/pngread.c.s"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngread.c -o CMakeFiles\png_static.dir\pngread.c.s

CMakeFiles/png_static.dir/pngread.c.obj.requires:

.PHONY : CMakeFiles/png_static.dir/pngread.c.obj.requires

CMakeFiles/png_static.dir/pngread.c.obj.provides: CMakeFiles/png_static.dir/pngread.c.obj.requires
	$(MAKE) -f CMakeFiles\png_static.dir\build.make CMakeFiles/png_static.dir/pngread.c.obj.provides.build
.PHONY : CMakeFiles/png_static.dir/pngread.c.obj.provides

CMakeFiles/png_static.dir/pngread.c.obj.provides.build: CMakeFiles/png_static.dir/pngread.c.obj


CMakeFiles/png_static.dir/pngrio.c.obj: CMakeFiles/png_static.dir/flags.make
CMakeFiles/png_static.dir/pngrio.c.obj: CMakeFiles/png_static.dir/includes_C.rsp
CMakeFiles/png_static.dir/pngrio.c.obj: pngrio.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/png_static.dir/pngrio.c.obj"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\png_static.dir\pngrio.c.obj   -c C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngrio.c

CMakeFiles/png_static.dir/pngrio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_static.dir/pngrio.c.i"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngrio.c > CMakeFiles\png_static.dir\pngrio.c.i

CMakeFiles/png_static.dir/pngrio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_static.dir/pngrio.c.s"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngrio.c -o CMakeFiles\png_static.dir\pngrio.c.s

CMakeFiles/png_static.dir/pngrio.c.obj.requires:

.PHONY : CMakeFiles/png_static.dir/pngrio.c.obj.requires

CMakeFiles/png_static.dir/pngrio.c.obj.provides: CMakeFiles/png_static.dir/pngrio.c.obj.requires
	$(MAKE) -f CMakeFiles\png_static.dir\build.make CMakeFiles/png_static.dir/pngrio.c.obj.provides.build
.PHONY : CMakeFiles/png_static.dir/pngrio.c.obj.provides

CMakeFiles/png_static.dir/pngrio.c.obj.provides.build: CMakeFiles/png_static.dir/pngrio.c.obj


CMakeFiles/png_static.dir/pngrtran.c.obj: CMakeFiles/png_static.dir/flags.make
CMakeFiles/png_static.dir/pngrtran.c.obj: CMakeFiles/png_static.dir/includes_C.rsp
CMakeFiles/png_static.dir/pngrtran.c.obj: pngrtran.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/png_static.dir/pngrtran.c.obj"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\png_static.dir\pngrtran.c.obj   -c C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngrtran.c

CMakeFiles/png_static.dir/pngrtran.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_static.dir/pngrtran.c.i"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngrtran.c > CMakeFiles\png_static.dir\pngrtran.c.i

CMakeFiles/png_static.dir/pngrtran.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_static.dir/pngrtran.c.s"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngrtran.c -o CMakeFiles\png_static.dir\pngrtran.c.s

CMakeFiles/png_static.dir/pngrtran.c.obj.requires:

.PHONY : CMakeFiles/png_static.dir/pngrtran.c.obj.requires

CMakeFiles/png_static.dir/pngrtran.c.obj.provides: CMakeFiles/png_static.dir/pngrtran.c.obj.requires
	$(MAKE) -f CMakeFiles\png_static.dir\build.make CMakeFiles/png_static.dir/pngrtran.c.obj.provides.build
.PHONY : CMakeFiles/png_static.dir/pngrtran.c.obj.provides

CMakeFiles/png_static.dir/pngrtran.c.obj.provides.build: CMakeFiles/png_static.dir/pngrtran.c.obj


CMakeFiles/png_static.dir/pngrutil.c.obj: CMakeFiles/png_static.dir/flags.make
CMakeFiles/png_static.dir/pngrutil.c.obj: CMakeFiles/png_static.dir/includes_C.rsp
CMakeFiles/png_static.dir/pngrutil.c.obj: pngrutil.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/png_static.dir/pngrutil.c.obj"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\png_static.dir\pngrutil.c.obj   -c C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngrutil.c

CMakeFiles/png_static.dir/pngrutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_static.dir/pngrutil.c.i"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngrutil.c > CMakeFiles\png_static.dir\pngrutil.c.i

CMakeFiles/png_static.dir/pngrutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_static.dir/pngrutil.c.s"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngrutil.c -o CMakeFiles\png_static.dir\pngrutil.c.s

CMakeFiles/png_static.dir/pngrutil.c.obj.requires:

.PHONY : CMakeFiles/png_static.dir/pngrutil.c.obj.requires

CMakeFiles/png_static.dir/pngrutil.c.obj.provides: CMakeFiles/png_static.dir/pngrutil.c.obj.requires
	$(MAKE) -f CMakeFiles\png_static.dir\build.make CMakeFiles/png_static.dir/pngrutil.c.obj.provides.build
.PHONY : CMakeFiles/png_static.dir/pngrutil.c.obj.provides

CMakeFiles/png_static.dir/pngrutil.c.obj.provides.build: CMakeFiles/png_static.dir/pngrutil.c.obj


CMakeFiles/png_static.dir/pngset.c.obj: CMakeFiles/png_static.dir/flags.make
CMakeFiles/png_static.dir/pngset.c.obj: CMakeFiles/png_static.dir/includes_C.rsp
CMakeFiles/png_static.dir/pngset.c.obj: pngset.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/png_static.dir/pngset.c.obj"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\png_static.dir\pngset.c.obj   -c C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngset.c

CMakeFiles/png_static.dir/pngset.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_static.dir/pngset.c.i"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngset.c > CMakeFiles\png_static.dir\pngset.c.i

CMakeFiles/png_static.dir/pngset.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_static.dir/pngset.c.s"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngset.c -o CMakeFiles\png_static.dir\pngset.c.s

CMakeFiles/png_static.dir/pngset.c.obj.requires:

.PHONY : CMakeFiles/png_static.dir/pngset.c.obj.requires

CMakeFiles/png_static.dir/pngset.c.obj.provides: CMakeFiles/png_static.dir/pngset.c.obj.requires
	$(MAKE) -f CMakeFiles\png_static.dir\build.make CMakeFiles/png_static.dir/pngset.c.obj.provides.build
.PHONY : CMakeFiles/png_static.dir/pngset.c.obj.provides

CMakeFiles/png_static.dir/pngset.c.obj.provides.build: CMakeFiles/png_static.dir/pngset.c.obj


CMakeFiles/png_static.dir/pngtrans.c.obj: CMakeFiles/png_static.dir/flags.make
CMakeFiles/png_static.dir/pngtrans.c.obj: CMakeFiles/png_static.dir/includes_C.rsp
CMakeFiles/png_static.dir/pngtrans.c.obj: pngtrans.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/png_static.dir/pngtrans.c.obj"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\png_static.dir\pngtrans.c.obj   -c C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngtrans.c

CMakeFiles/png_static.dir/pngtrans.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_static.dir/pngtrans.c.i"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngtrans.c > CMakeFiles\png_static.dir\pngtrans.c.i

CMakeFiles/png_static.dir/pngtrans.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_static.dir/pngtrans.c.s"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngtrans.c -o CMakeFiles\png_static.dir\pngtrans.c.s

CMakeFiles/png_static.dir/pngtrans.c.obj.requires:

.PHONY : CMakeFiles/png_static.dir/pngtrans.c.obj.requires

CMakeFiles/png_static.dir/pngtrans.c.obj.provides: CMakeFiles/png_static.dir/pngtrans.c.obj.requires
	$(MAKE) -f CMakeFiles\png_static.dir\build.make CMakeFiles/png_static.dir/pngtrans.c.obj.provides.build
.PHONY : CMakeFiles/png_static.dir/pngtrans.c.obj.provides

CMakeFiles/png_static.dir/pngtrans.c.obj.provides.build: CMakeFiles/png_static.dir/pngtrans.c.obj


CMakeFiles/png_static.dir/pngwio.c.obj: CMakeFiles/png_static.dir/flags.make
CMakeFiles/png_static.dir/pngwio.c.obj: CMakeFiles/png_static.dir/includes_C.rsp
CMakeFiles/png_static.dir/pngwio.c.obj: pngwio.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/png_static.dir/pngwio.c.obj"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\png_static.dir\pngwio.c.obj   -c C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngwio.c

CMakeFiles/png_static.dir/pngwio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_static.dir/pngwio.c.i"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngwio.c > CMakeFiles\png_static.dir\pngwio.c.i

CMakeFiles/png_static.dir/pngwio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_static.dir/pngwio.c.s"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngwio.c -o CMakeFiles\png_static.dir\pngwio.c.s

CMakeFiles/png_static.dir/pngwio.c.obj.requires:

.PHONY : CMakeFiles/png_static.dir/pngwio.c.obj.requires

CMakeFiles/png_static.dir/pngwio.c.obj.provides: CMakeFiles/png_static.dir/pngwio.c.obj.requires
	$(MAKE) -f CMakeFiles\png_static.dir\build.make CMakeFiles/png_static.dir/pngwio.c.obj.provides.build
.PHONY : CMakeFiles/png_static.dir/pngwio.c.obj.provides

CMakeFiles/png_static.dir/pngwio.c.obj.provides.build: CMakeFiles/png_static.dir/pngwio.c.obj


CMakeFiles/png_static.dir/pngwrite.c.obj: CMakeFiles/png_static.dir/flags.make
CMakeFiles/png_static.dir/pngwrite.c.obj: CMakeFiles/png_static.dir/includes_C.rsp
CMakeFiles/png_static.dir/pngwrite.c.obj: pngwrite.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/png_static.dir/pngwrite.c.obj"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\png_static.dir\pngwrite.c.obj   -c C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngwrite.c

CMakeFiles/png_static.dir/pngwrite.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_static.dir/pngwrite.c.i"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngwrite.c > CMakeFiles\png_static.dir\pngwrite.c.i

CMakeFiles/png_static.dir/pngwrite.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_static.dir/pngwrite.c.s"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngwrite.c -o CMakeFiles\png_static.dir\pngwrite.c.s

CMakeFiles/png_static.dir/pngwrite.c.obj.requires:

.PHONY : CMakeFiles/png_static.dir/pngwrite.c.obj.requires

CMakeFiles/png_static.dir/pngwrite.c.obj.provides: CMakeFiles/png_static.dir/pngwrite.c.obj.requires
	$(MAKE) -f CMakeFiles\png_static.dir\build.make CMakeFiles/png_static.dir/pngwrite.c.obj.provides.build
.PHONY : CMakeFiles/png_static.dir/pngwrite.c.obj.provides

CMakeFiles/png_static.dir/pngwrite.c.obj.provides.build: CMakeFiles/png_static.dir/pngwrite.c.obj


CMakeFiles/png_static.dir/pngwtran.c.obj: CMakeFiles/png_static.dir/flags.make
CMakeFiles/png_static.dir/pngwtran.c.obj: CMakeFiles/png_static.dir/includes_C.rsp
CMakeFiles/png_static.dir/pngwtran.c.obj: pngwtran.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/png_static.dir/pngwtran.c.obj"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\png_static.dir\pngwtran.c.obj   -c C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngwtran.c

CMakeFiles/png_static.dir/pngwtran.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_static.dir/pngwtran.c.i"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngwtran.c > CMakeFiles\png_static.dir\pngwtran.c.i

CMakeFiles/png_static.dir/pngwtran.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_static.dir/pngwtran.c.s"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngwtran.c -o CMakeFiles\png_static.dir\pngwtran.c.s

CMakeFiles/png_static.dir/pngwtran.c.obj.requires:

.PHONY : CMakeFiles/png_static.dir/pngwtran.c.obj.requires

CMakeFiles/png_static.dir/pngwtran.c.obj.provides: CMakeFiles/png_static.dir/pngwtran.c.obj.requires
	$(MAKE) -f CMakeFiles\png_static.dir\build.make CMakeFiles/png_static.dir/pngwtran.c.obj.provides.build
.PHONY : CMakeFiles/png_static.dir/pngwtran.c.obj.provides

CMakeFiles/png_static.dir/pngwtran.c.obj.provides.build: CMakeFiles/png_static.dir/pngwtran.c.obj


CMakeFiles/png_static.dir/pngwutil.c.obj: CMakeFiles/png_static.dir/flags.make
CMakeFiles/png_static.dir/pngwutil.c.obj: CMakeFiles/png_static.dir/includes_C.rsp
CMakeFiles/png_static.dir/pngwutil.c.obj: pngwutil.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/png_static.dir/pngwutil.c.obj"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\png_static.dir\pngwutil.c.obj   -c C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngwutil.c

CMakeFiles/png_static.dir/pngwutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_static.dir/pngwutil.c.i"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngwutil.c > CMakeFiles\png_static.dir\pngwutil.c.i

CMakeFiles/png_static.dir/pngwutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_static.dir/pngwutil.c.s"
	C:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\pngwutil.c -o CMakeFiles\png_static.dir\pngwutil.c.s

CMakeFiles/png_static.dir/pngwutil.c.obj.requires:

.PHONY : CMakeFiles/png_static.dir/pngwutil.c.obj.requires

CMakeFiles/png_static.dir/pngwutil.c.obj.provides: CMakeFiles/png_static.dir/pngwutil.c.obj.requires
	$(MAKE) -f CMakeFiles\png_static.dir\build.make CMakeFiles/png_static.dir/pngwutil.c.obj.provides.build
.PHONY : CMakeFiles/png_static.dir/pngwutil.c.obj.provides

CMakeFiles/png_static.dir/pngwutil.c.obj.provides.build: CMakeFiles/png_static.dir/pngwutil.c.obj


# Object files for target png_static
png_static_OBJECTS = \
"CMakeFiles/png_static.dir/png.c.obj" \
"CMakeFiles/png_static.dir/pngerror.c.obj" \
"CMakeFiles/png_static.dir/pngget.c.obj" \
"CMakeFiles/png_static.dir/pngmem.c.obj" \
"CMakeFiles/png_static.dir/pngpread.c.obj" \
"CMakeFiles/png_static.dir/pngread.c.obj" \
"CMakeFiles/png_static.dir/pngrio.c.obj" \
"CMakeFiles/png_static.dir/pngrtran.c.obj" \
"CMakeFiles/png_static.dir/pngrutil.c.obj" \
"CMakeFiles/png_static.dir/pngset.c.obj" \
"CMakeFiles/png_static.dir/pngtrans.c.obj" \
"CMakeFiles/png_static.dir/pngwio.c.obj" \
"CMakeFiles/png_static.dir/pngwrite.c.obj" \
"CMakeFiles/png_static.dir/pngwtran.c.obj" \
"CMakeFiles/png_static.dir/pngwutil.c.obj"

# External object files for target png_static
png_static_EXTERNAL_OBJECTS =

libpng16.a: CMakeFiles/png_static.dir/png.c.obj
libpng16.a: CMakeFiles/png_static.dir/pngerror.c.obj
libpng16.a: CMakeFiles/png_static.dir/pngget.c.obj
libpng16.a: CMakeFiles/png_static.dir/pngmem.c.obj
libpng16.a: CMakeFiles/png_static.dir/pngpread.c.obj
libpng16.a: CMakeFiles/png_static.dir/pngread.c.obj
libpng16.a: CMakeFiles/png_static.dir/pngrio.c.obj
libpng16.a: CMakeFiles/png_static.dir/pngrtran.c.obj
libpng16.a: CMakeFiles/png_static.dir/pngrutil.c.obj
libpng16.a: CMakeFiles/png_static.dir/pngset.c.obj
libpng16.a: CMakeFiles/png_static.dir/pngtrans.c.obj
libpng16.a: CMakeFiles/png_static.dir/pngwio.c.obj
libpng16.a: CMakeFiles/png_static.dir/pngwrite.c.obj
libpng16.a: CMakeFiles/png_static.dir/pngwtran.c.obj
libpng16.a: CMakeFiles/png_static.dir/pngwutil.c.obj
libpng16.a: CMakeFiles/png_static.dir/build.make
libpng16.a: CMakeFiles/png_static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking C static library libpng16.a"
	$(CMAKE_COMMAND) -P CMakeFiles\png_static.dir\cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\png_static.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/png_static.dir/build: libpng16.a

.PHONY : CMakeFiles/png_static.dir/build

CMakeFiles/png_static.dir/requires: CMakeFiles/png_static.dir/png.c.obj.requires
CMakeFiles/png_static.dir/requires: CMakeFiles/png_static.dir/pngerror.c.obj.requires
CMakeFiles/png_static.dir/requires: CMakeFiles/png_static.dir/pngget.c.obj.requires
CMakeFiles/png_static.dir/requires: CMakeFiles/png_static.dir/pngmem.c.obj.requires
CMakeFiles/png_static.dir/requires: CMakeFiles/png_static.dir/pngpread.c.obj.requires
CMakeFiles/png_static.dir/requires: CMakeFiles/png_static.dir/pngread.c.obj.requires
CMakeFiles/png_static.dir/requires: CMakeFiles/png_static.dir/pngrio.c.obj.requires
CMakeFiles/png_static.dir/requires: CMakeFiles/png_static.dir/pngrtran.c.obj.requires
CMakeFiles/png_static.dir/requires: CMakeFiles/png_static.dir/pngrutil.c.obj.requires
CMakeFiles/png_static.dir/requires: CMakeFiles/png_static.dir/pngset.c.obj.requires
CMakeFiles/png_static.dir/requires: CMakeFiles/png_static.dir/pngtrans.c.obj.requires
CMakeFiles/png_static.dir/requires: CMakeFiles/png_static.dir/pngwio.c.obj.requires
CMakeFiles/png_static.dir/requires: CMakeFiles/png_static.dir/pngwrite.c.obj.requires
CMakeFiles/png_static.dir/requires: CMakeFiles/png_static.dir/pngwtran.c.obj.requires
CMakeFiles/png_static.dir/requires: CMakeFiles/png_static.dir/pngwutil.c.obj.requires

.PHONY : CMakeFiles/png_static.dir/requires

CMakeFiles/png_static.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\png_static.dir\cmake_clean.cmake
.PHONY : CMakeFiles/png_static.dir/clean

CMakeFiles/png_static.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629 C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629 C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629 C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629 C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles\png_static.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/png_static.dir/depend
