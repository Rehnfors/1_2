# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jesper/projekt/1_2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jesper/projekt/1_2/build

# Include any dependencies generated for this target.
include CMakeFiles/test_deck.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test_deck.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_deck.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_deck.dir/flags.make

CMakeFiles/test_deck.dir/test_deck.cpp.o: CMakeFiles/test_deck.dir/flags.make
CMakeFiles/test_deck.dir/test_deck.cpp.o: ../test_deck.cpp
CMakeFiles/test_deck.dir/test_deck.cpp.o: CMakeFiles/test_deck.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jesper/projekt/1_2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_deck.dir/test_deck.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_deck.dir/test_deck.cpp.o -MF CMakeFiles/test_deck.dir/test_deck.cpp.o.d -o CMakeFiles/test_deck.dir/test_deck.cpp.o -c /home/jesper/projekt/1_2/test_deck.cpp

CMakeFiles/test_deck.dir/test_deck.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_deck.dir/test_deck.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jesper/projekt/1_2/test_deck.cpp > CMakeFiles/test_deck.dir/test_deck.cpp.i

CMakeFiles/test_deck.dir/test_deck.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_deck.dir/test_deck.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jesper/projekt/1_2/test_deck.cpp -o CMakeFiles/test_deck.dir/test_deck.cpp.s

CMakeFiles/test_deck.dir/deck.cpp.o: CMakeFiles/test_deck.dir/flags.make
CMakeFiles/test_deck.dir/deck.cpp.o: ../deck.cpp
CMakeFiles/test_deck.dir/deck.cpp.o: CMakeFiles/test_deck.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jesper/projekt/1_2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/test_deck.dir/deck.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_deck.dir/deck.cpp.o -MF CMakeFiles/test_deck.dir/deck.cpp.o.d -o CMakeFiles/test_deck.dir/deck.cpp.o -c /home/jesper/projekt/1_2/deck.cpp

CMakeFiles/test_deck.dir/deck.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_deck.dir/deck.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jesper/projekt/1_2/deck.cpp > CMakeFiles/test_deck.dir/deck.cpp.i

CMakeFiles/test_deck.dir/deck.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_deck.dir/deck.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jesper/projekt/1_2/deck.cpp -o CMakeFiles/test_deck.dir/deck.cpp.s

# Object files for target test_deck
test_deck_OBJECTS = \
"CMakeFiles/test_deck.dir/test_deck.cpp.o" \
"CMakeFiles/test_deck.dir/deck.cpp.o"

# External object files for target test_deck
test_deck_EXTERNAL_OBJECTS =

test_deck: CMakeFiles/test_deck.dir/test_deck.cpp.o
test_deck: CMakeFiles/test_deck.dir/deck.cpp.o
test_deck: CMakeFiles/test_deck.dir/build.make
test_deck: lib/libgtest_main.a
test_deck: lib/libgtest.a
test_deck: CMakeFiles/test_deck.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jesper/projekt/1_2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable test_deck"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_deck.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/cmake -D TEST_TARGET=test_deck -D TEST_EXECUTABLE=/home/jesper/projekt/1_2/build/test_deck -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/jesper/projekt/1_2/build -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=test_deck_TESTS -D CTEST_FILE=/home/jesper/projekt/1_2/build/test_deck[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P /usr/share/cmake-3.22/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
CMakeFiles/test_deck.dir/build: test_deck
.PHONY : CMakeFiles/test_deck.dir/build

CMakeFiles/test_deck.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_deck.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_deck.dir/clean

CMakeFiles/test_deck.dir/depend:
	cd /home/jesper/projekt/1_2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jesper/projekt/1_2 /home/jesper/projekt/1_2 /home/jesper/projekt/1_2/build /home/jesper/projekt/1_2/build /home/jesper/projekt/1_2/build/CMakeFiles/test_deck.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_deck.dir/depend

