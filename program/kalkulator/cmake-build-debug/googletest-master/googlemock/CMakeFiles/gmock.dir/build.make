# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /home/zyrafau/clion-2018.3.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/zyrafau/clion-2018.3.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zyrafau/CLionProjects/kalkulator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zyrafau/CLionProjects/kalkulator/cmake-build-debug

# Include any dependencies generated for this target.
include googletest-master/googlemock/CMakeFiles/gmock.dir/depend.make

# Include the progress variables for this target.
include googletest-master/googlemock/CMakeFiles/gmock.dir/progress.make

# Include the compile flags for this target's objects.
include googletest-master/googlemock/CMakeFiles/gmock.dir/flags.make

googletest-master/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o: googletest-master/googlemock/CMakeFiles/gmock.dir/flags.make
googletest-master/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o: /home/zyrafau/CLionProjects/googletest-master/googlemock/src/gmock-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zyrafau/CLionProjects/kalkulator/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object googletest-master/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o"
	cd /home/zyrafau/CLionProjects/kalkulator/cmake-build-debug/googletest-master/googlemock && /usr/bin/clang++-6.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gmock.dir/src/gmock-all.cc.o -c /home/zyrafau/CLionProjects/googletest-master/googlemock/src/gmock-all.cc

googletest-master/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmock.dir/src/gmock-all.cc.i"
	cd /home/zyrafau/CLionProjects/kalkulator/cmake-build-debug/googletest-master/googlemock && /usr/bin/clang++-6.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zyrafau/CLionProjects/googletest-master/googlemock/src/gmock-all.cc > CMakeFiles/gmock.dir/src/gmock-all.cc.i

googletest-master/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmock.dir/src/gmock-all.cc.s"
	cd /home/zyrafau/CLionProjects/kalkulator/cmake-build-debug/googletest-master/googlemock && /usr/bin/clang++-6.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zyrafau/CLionProjects/googletest-master/googlemock/src/gmock-all.cc -o CMakeFiles/gmock.dir/src/gmock-all.cc.s

# Object files for target gmock
gmock_OBJECTS = \
"CMakeFiles/gmock.dir/src/gmock-all.cc.o"

# External object files for target gmock
gmock_EXTERNAL_OBJECTS =

googletest-master/googlemock/libgmockd.a: googletest-master/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o
googletest-master/googlemock/libgmockd.a: googletest-master/googlemock/CMakeFiles/gmock.dir/build.make
googletest-master/googlemock/libgmockd.a: googletest-master/googlemock/CMakeFiles/gmock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zyrafau/CLionProjects/kalkulator/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libgmockd.a"
	cd /home/zyrafau/CLionProjects/kalkulator/cmake-build-debug/googletest-master/googlemock && $(CMAKE_COMMAND) -P CMakeFiles/gmock.dir/cmake_clean_target.cmake
	cd /home/zyrafau/CLionProjects/kalkulator/cmake-build-debug/googletest-master/googlemock && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gmock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
googletest-master/googlemock/CMakeFiles/gmock.dir/build: googletest-master/googlemock/libgmockd.a

.PHONY : googletest-master/googlemock/CMakeFiles/gmock.dir/build

googletest-master/googlemock/CMakeFiles/gmock.dir/clean:
	cd /home/zyrafau/CLionProjects/kalkulator/cmake-build-debug/googletest-master/googlemock && $(CMAKE_COMMAND) -P CMakeFiles/gmock.dir/cmake_clean.cmake
.PHONY : googletest-master/googlemock/CMakeFiles/gmock.dir/clean

googletest-master/googlemock/CMakeFiles/gmock.dir/depend:
	cd /home/zyrafau/CLionProjects/kalkulator/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zyrafau/CLionProjects/kalkulator /home/zyrafau/CLionProjects/googletest-master/googlemock /home/zyrafau/CLionProjects/kalkulator/cmake-build-debug /home/zyrafau/CLionProjects/kalkulator/cmake-build-debug/googletest-master/googlemock /home/zyrafau/CLionProjects/kalkulator/cmake-build-debug/googletest-master/googlemock/CMakeFiles/gmock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : googletest-master/googlemock/CMakeFiles/gmock.dir/depend

