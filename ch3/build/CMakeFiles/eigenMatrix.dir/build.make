# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/victor/.local/lib/python3.8/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/victor/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/victor/slambook2/ch3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/victor/slambook2/ch3/build

# Include any dependencies generated for this target.
include CMakeFiles/eigenMatrix.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/eigenMatrix.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/eigenMatrix.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/eigenMatrix.dir/flags.make

CMakeFiles/eigenMatrix.dir/eigenMatrix.cpp.o: CMakeFiles/eigenMatrix.dir/flags.make
CMakeFiles/eigenMatrix.dir/eigenMatrix.cpp.o: /home/victor/slambook2/ch3/eigenMatrix.cpp
CMakeFiles/eigenMatrix.dir/eigenMatrix.cpp.o: CMakeFiles/eigenMatrix.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/victor/slambook2/ch3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/eigenMatrix.dir/eigenMatrix.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/eigenMatrix.dir/eigenMatrix.cpp.o -MF CMakeFiles/eigenMatrix.dir/eigenMatrix.cpp.o.d -o CMakeFiles/eigenMatrix.dir/eigenMatrix.cpp.o -c /home/victor/slambook2/ch3/eigenMatrix.cpp

CMakeFiles/eigenMatrix.dir/eigenMatrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eigenMatrix.dir/eigenMatrix.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/victor/slambook2/ch3/eigenMatrix.cpp > CMakeFiles/eigenMatrix.dir/eigenMatrix.cpp.i

CMakeFiles/eigenMatrix.dir/eigenMatrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eigenMatrix.dir/eigenMatrix.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/victor/slambook2/ch3/eigenMatrix.cpp -o CMakeFiles/eigenMatrix.dir/eigenMatrix.cpp.s

# Object files for target eigenMatrix
eigenMatrix_OBJECTS = \
"CMakeFiles/eigenMatrix.dir/eigenMatrix.cpp.o"

# External object files for target eigenMatrix
eigenMatrix_EXTERNAL_OBJECTS =

eigenMatrix: CMakeFiles/eigenMatrix.dir/eigenMatrix.cpp.o
eigenMatrix: CMakeFiles/eigenMatrix.dir/build.make
eigenMatrix: CMakeFiles/eigenMatrix.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/victor/slambook2/ch3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable eigenMatrix"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/eigenMatrix.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/eigenMatrix.dir/build: eigenMatrix
.PHONY : CMakeFiles/eigenMatrix.dir/build

CMakeFiles/eigenMatrix.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/eigenMatrix.dir/cmake_clean.cmake
.PHONY : CMakeFiles/eigenMatrix.dir/clean

CMakeFiles/eigenMatrix.dir/depend:
	cd /home/victor/slambook2/ch3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/victor/slambook2/ch3 /home/victor/slambook2/ch3 /home/victor/slambook2/ch3/build /home/victor/slambook2/ch3/build /home/victor/slambook2/ch3/build/CMakeFiles/eigenMatrix.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/eigenMatrix.dir/depend

