# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/robert/ROS/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/robert/ROS/build

# Include any dependencies generated for this target.
include exercise3/CMakeFiles/map_goals.dir/depend.make

# Include the progress variables for this target.
include exercise3/CMakeFiles/map_goals.dir/progress.make

# Include the compile flags for this target's objects.
include exercise3/CMakeFiles/map_goals.dir/flags.make

exercise3/CMakeFiles/map_goals.dir/src/map_goals.cpp.o: exercise3/CMakeFiles/map_goals.dir/flags.make
exercise3/CMakeFiles/map_goals.dir/src/map_goals.cpp.o: /home/robert/ROS/src/exercise3/src/map_goals.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/robert/ROS/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object exercise3/CMakeFiles/map_goals.dir/src/map_goals.cpp.o"
	cd /home/robert/ROS/build/exercise3 && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/map_goals.dir/src/map_goals.cpp.o -c /home/robert/ROS/src/exercise3/src/map_goals.cpp

exercise3/CMakeFiles/map_goals.dir/src/map_goals.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/map_goals.dir/src/map_goals.cpp.i"
	cd /home/robert/ROS/build/exercise3 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/robert/ROS/src/exercise3/src/map_goals.cpp > CMakeFiles/map_goals.dir/src/map_goals.cpp.i

exercise3/CMakeFiles/map_goals.dir/src/map_goals.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/map_goals.dir/src/map_goals.cpp.s"
	cd /home/robert/ROS/build/exercise3 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/robert/ROS/src/exercise3/src/map_goals.cpp -o CMakeFiles/map_goals.dir/src/map_goals.cpp.s

exercise3/CMakeFiles/map_goals.dir/src/map_goals.cpp.o.requires:
.PHONY : exercise3/CMakeFiles/map_goals.dir/src/map_goals.cpp.o.requires

exercise3/CMakeFiles/map_goals.dir/src/map_goals.cpp.o.provides: exercise3/CMakeFiles/map_goals.dir/src/map_goals.cpp.o.requires
	$(MAKE) -f exercise3/CMakeFiles/map_goals.dir/build.make exercise3/CMakeFiles/map_goals.dir/src/map_goals.cpp.o.provides.build
.PHONY : exercise3/CMakeFiles/map_goals.dir/src/map_goals.cpp.o.provides

exercise3/CMakeFiles/map_goals.dir/src/map_goals.cpp.o.provides.build: exercise3/CMakeFiles/map_goals.dir/src/map_goals.cpp.o

# Object files for target map_goals
map_goals_OBJECTS = \
"CMakeFiles/map_goals.dir/src/map_goals.cpp.o"

# External object files for target map_goals
map_goals_EXTERNAL_OBJECTS =

/home/robert/ROS/devel/lib/exercise3/map_goals: exercise3/CMakeFiles/map_goals.dir/src/map_goals.cpp.o
/home/robert/ROS/devel/lib/exercise3/map_goals: exercise3/CMakeFiles/map_goals.dir/build.make
/home/robert/ROS/devel/lib/exercise3/map_goals: /opt/ros/indigo/lib/libcv_bridge.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/robert/ROS/devel/lib/exercise3/map_goals: /opt/ros/indigo/lib/libtf.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /opt/ros/indigo/lib/libtf2_ros.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /opt/ros/indigo/lib/libactionlib.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /opt/ros/indigo/lib/libmessage_filters.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /opt/ros/indigo/lib/libroscpp.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /opt/ros/indigo/lib/libtf2.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /opt/ros/indigo/lib/librosconsole.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/liblog4cxx.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /opt/ros/indigo/lib/librostime.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /opt/ros/indigo/lib/libcpp_common.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/robert/ROS/devel/lib/exercise3/map_goals: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/robert/ROS/devel/lib/exercise3/map_goals: exercise3/CMakeFiles/map_goals.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/robert/ROS/devel/lib/exercise3/map_goals"
	cd /home/robert/ROS/build/exercise3 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/map_goals.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
exercise3/CMakeFiles/map_goals.dir/build: /home/robert/ROS/devel/lib/exercise3/map_goals
.PHONY : exercise3/CMakeFiles/map_goals.dir/build

exercise3/CMakeFiles/map_goals.dir/requires: exercise3/CMakeFiles/map_goals.dir/src/map_goals.cpp.o.requires
.PHONY : exercise3/CMakeFiles/map_goals.dir/requires

exercise3/CMakeFiles/map_goals.dir/clean:
	cd /home/robert/ROS/build/exercise3 && $(CMAKE_COMMAND) -P CMakeFiles/map_goals.dir/cmake_clean.cmake
.PHONY : exercise3/CMakeFiles/map_goals.dir/clean

exercise3/CMakeFiles/map_goals.dir/depend:
	cd /home/robert/ROS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robert/ROS/src /home/robert/ROS/src/exercise3 /home/robert/ROS/build /home/robert/ROS/build/exercise3 /home/robert/ROS/build/exercise3/CMakeFiles/map_goals.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : exercise3/CMakeFiles/map_goals.dir/depend

