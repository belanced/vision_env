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
CMAKE_SOURCE_DIR = /home/lance/myWorkspace/vision_env/ceres-solver/OpenLib/ceres-solver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lance/myWorkspace/vision_env/ceres-solver/OpenLib/ceres-bin

# Include any dependencies generated for this target.
include internal/ceres/CMakeFiles/c_api_test.dir/depend.make

# Include the progress variables for this target.
include internal/ceres/CMakeFiles/c_api_test.dir/progress.make

# Include the compile flags for this target's objects.
include internal/ceres/CMakeFiles/c_api_test.dir/flags.make

internal/ceres/CMakeFiles/c_api_test.dir/c_api_test.cc.o: internal/ceres/CMakeFiles/c_api_test.dir/flags.make
internal/ceres/CMakeFiles/c_api_test.dir/c_api_test.cc.o: /home/lance/myWorkspace/vision_env/ceres-solver/OpenLib/ceres-solver/internal/ceres/c_api_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lance/myWorkspace/vision_env/ceres-solver/OpenLib/ceres-bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object internal/ceres/CMakeFiles/c_api_test.dir/c_api_test.cc.o"
	cd /home/lance/myWorkspace/vision_env/ceres-solver/OpenLib/ceres-bin/internal/ceres && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/c_api_test.dir/c_api_test.cc.o -c /home/lance/myWorkspace/vision_env/ceres-solver/OpenLib/ceres-solver/internal/ceres/c_api_test.cc

internal/ceres/CMakeFiles/c_api_test.dir/c_api_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/c_api_test.dir/c_api_test.cc.i"
	cd /home/lance/myWorkspace/vision_env/ceres-solver/OpenLib/ceres-bin/internal/ceres && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lance/myWorkspace/vision_env/ceres-solver/OpenLib/ceres-solver/internal/ceres/c_api_test.cc > CMakeFiles/c_api_test.dir/c_api_test.cc.i

internal/ceres/CMakeFiles/c_api_test.dir/c_api_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/c_api_test.dir/c_api_test.cc.s"
	cd /home/lance/myWorkspace/vision_env/ceres-solver/OpenLib/ceres-bin/internal/ceres && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lance/myWorkspace/vision_env/ceres-solver/OpenLib/ceres-solver/internal/ceres/c_api_test.cc -o CMakeFiles/c_api_test.dir/c_api_test.cc.s

# Object files for target c_api_test
c_api_test_OBJECTS = \
"CMakeFiles/c_api_test.dir/c_api_test.cc.o"

# External object files for target c_api_test
c_api_test_EXTERNAL_OBJECTS =

bin/c_api_test: internal/ceres/CMakeFiles/c_api_test.dir/c_api_test.cc.o
bin/c_api_test: internal/ceres/CMakeFiles/c_api_test.dir/build.make
bin/c_api_test: lib/libgtest.a
bin/c_api_test: lib/libtest_util.a
bin/c_api_test: lib/libceres.a
bin/c_api_test: /usr/lib/x86_64-linux-gnu/libspqr.so
bin/c_api_test: lib/libgtest.a
bin/c_api_test: lib/libceres.a
bin/c_api_test: /usr/lib/x86_64-linux-gnu/libspqr.so
bin/c_api_test: /usr/lib/x86_64-linux-gnu/libglog.so
bin/c_api_test: /usr/lib/x86_64-linux-gnu/libcholmod.so
bin/c_api_test: /usr/lib/x86_64-linux-gnu/libamd.so
bin/c_api_test: /usr/lib/x86_64-linux-gnu/libcamd.so
bin/c_api_test: /usr/lib/x86_64-linux-gnu/libccolamd.so
bin/c_api_test: /usr/lib/x86_64-linux-gnu/libcolamd.so
bin/c_api_test: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.so
bin/c_api_test: /usr/lib/x86_64-linux-gnu/libcxsparse.so
bin/c_api_test: /usr/local/cuda-11.6/lib64/libcudart_static.a
bin/c_api_test: /usr/lib/x86_64-linux-gnu/librt.so
bin/c_api_test: /usr/local/cuda-11.6/lib64/libcublas.so
bin/c_api_test: /usr/local/cuda-11.6/lib64/libcusolver.so
bin/c_api_test: /usr/local/cuda-11.6/lib64/libcusparse.so
bin/c_api_test: /usr/lib/x86_64-linux-gnu/liblapack.so
bin/c_api_test: /usr/lib/x86_64-linux-gnu/libf77blas.so
bin/c_api_test: /usr/lib/x86_64-linux-gnu/libatlas.so
bin/c_api_test: /usr/lib/x86_64-linux-gnu/libgflags.so.2.2.2
bin/c_api_test: internal/ceres/CMakeFiles/c_api_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lance/myWorkspace/vision_env/ceres-solver/OpenLib/ceres-bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/c_api_test"
	cd /home/lance/myWorkspace/vision_env/ceres-solver/OpenLib/ceres-bin/internal/ceres && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/c_api_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
internal/ceres/CMakeFiles/c_api_test.dir/build: bin/c_api_test

.PHONY : internal/ceres/CMakeFiles/c_api_test.dir/build

internal/ceres/CMakeFiles/c_api_test.dir/clean:
	cd /home/lance/myWorkspace/vision_env/ceres-solver/OpenLib/ceres-bin/internal/ceres && $(CMAKE_COMMAND) -P CMakeFiles/c_api_test.dir/cmake_clean.cmake
.PHONY : internal/ceres/CMakeFiles/c_api_test.dir/clean

internal/ceres/CMakeFiles/c_api_test.dir/depend:
	cd /home/lance/myWorkspace/vision_env/ceres-solver/OpenLib/ceres-bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lance/myWorkspace/vision_env/ceres-solver/OpenLib/ceres-solver /home/lance/myWorkspace/vision_env/ceres-solver/OpenLib/ceres-solver/internal/ceres /home/lance/myWorkspace/vision_env/ceres-solver/OpenLib/ceres-bin /home/lance/myWorkspace/vision_env/ceres-solver/OpenLib/ceres-bin/internal/ceres /home/lance/myWorkspace/vision_env/ceres-solver/OpenLib/ceres-bin/internal/ceres/CMakeFiles/c_api_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : internal/ceres/CMakeFiles/c_api_test.dir/depend

