# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/achang/Exercise_algo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/achang/Exercise_algo/build

# Include any dependencies generated for this target.
include CMakeFiles/searchMoney.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/searchMoney.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/searchMoney.dir/flags.make

CMakeFiles/searchMoney.dir/src/searchMoney.cpp.o: CMakeFiles/searchMoney.dir/flags.make
CMakeFiles/searchMoney.dir/src/searchMoney.cpp.o: ../src/searchMoney.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/achang/Exercise_algo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/searchMoney.dir/src/searchMoney.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/searchMoney.dir/src/searchMoney.cpp.o -c /home/achang/Exercise_algo/src/searchMoney.cpp

CMakeFiles/searchMoney.dir/src/searchMoney.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/searchMoney.dir/src/searchMoney.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/achang/Exercise_algo/src/searchMoney.cpp > CMakeFiles/searchMoney.dir/src/searchMoney.cpp.i

CMakeFiles/searchMoney.dir/src/searchMoney.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/searchMoney.dir/src/searchMoney.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/achang/Exercise_algo/src/searchMoney.cpp -o CMakeFiles/searchMoney.dir/src/searchMoney.cpp.s

# Object files for target searchMoney
searchMoney_OBJECTS = \
"CMakeFiles/searchMoney.dir/src/searchMoney.cpp.o"

# External object files for target searchMoney
searchMoney_EXTERNAL_OBJECTS =

../bin/searchMoney: CMakeFiles/searchMoney.dir/src/searchMoney.cpp.o
../bin/searchMoney: CMakeFiles/searchMoney.dir/build.make
../bin/searchMoney: CMakeFiles/searchMoney.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/achang/Exercise_algo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/searchMoney"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/searchMoney.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/searchMoney.dir/build: ../bin/searchMoney

.PHONY : CMakeFiles/searchMoney.dir/build

CMakeFiles/searchMoney.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/searchMoney.dir/cmake_clean.cmake
.PHONY : CMakeFiles/searchMoney.dir/clean

CMakeFiles/searchMoney.dir/depend:
	cd /home/achang/Exercise_algo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/achang/Exercise_algo /home/achang/Exercise_algo /home/achang/Exercise_algo/build /home/achang/Exercise_algo/build /home/achang/Exercise_algo/build/CMakeFiles/searchMoney.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/searchMoney.dir/depend

