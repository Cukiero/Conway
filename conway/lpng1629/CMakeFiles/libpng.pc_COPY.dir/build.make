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

# Utility rule file for libpng.pc_COPY.

# Include the progress variables for this target.
include CMakeFiles/libpng.pc_COPY.dir/progress.make

CMakeFiles/libpng.pc_COPY: lib/libpng.pc


lib/libpng.pc: libpng16.dll
lib/libpng.pc: libpng16.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating lib/libpng.pc, libpng.pc"
	"C:\Program Files\CMake\bin\cmake.exe" -E copy_if_different libpng16.pc lib/libpng.pc
	"C:\Program Files\CMake\bin\cmake.exe" -E copy_if_different libpng16.pc C:/Users/mati5/Documents/CodeBlocks/conway/lpng1629/libpng.pc

libpng.pc: lib/libpng.pc
	@$(CMAKE_COMMAND) -E touch_nocreate libpng.pc

libpng.pc_COPY: CMakeFiles/libpng.pc_COPY
libpng.pc_COPY: lib/libpng.pc
libpng.pc_COPY: libpng.pc
libpng.pc_COPY: CMakeFiles/libpng.pc_COPY.dir/build.make

.PHONY : libpng.pc_COPY

# Rule to build all files generated by this target.
CMakeFiles/libpng.pc_COPY.dir/build: libpng.pc_COPY

.PHONY : CMakeFiles/libpng.pc_COPY.dir/build

CMakeFiles/libpng.pc_COPY.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\libpng.pc_COPY.dir\cmake_clean.cmake
.PHONY : CMakeFiles/libpng.pc_COPY.dir/clean

CMakeFiles/libpng.pc_COPY.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629 C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629 C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629 C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629 C:\Users\mati5\Documents\CodeBlocks\conway\lpng1629\CMakeFiles\libpng.pc_COPY.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/libpng.pc_COPY.dir/depend

