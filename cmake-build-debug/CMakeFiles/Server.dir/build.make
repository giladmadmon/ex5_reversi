# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /opt/clion-2017.2.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/clion-2017.2.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/gilad/CLionProjects/Task_05 (copy)"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/gilad/CLionProjects/Task_05 (copy)/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Server.dir/flags.make

CMakeFiles/Server.dir/src/server/src/Game.cpp.o: CMakeFiles/Server.dir/flags.make
CMakeFiles/Server.dir/src/server/src/Game.cpp.o: ../src/server/src/Game.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/gilad/CLionProjects/Task_05 (copy)/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Server.dir/src/server/src/Game.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Server.dir/src/server/src/Game.cpp.o -c "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/Game.cpp"

CMakeFiles/Server.dir/src/server/src/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Server.dir/src/server/src/Game.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/Game.cpp" > CMakeFiles/Server.dir/src/server/src/Game.cpp.i

CMakeFiles/Server.dir/src/server/src/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Server.dir/src/server/src/Game.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/Game.cpp" -o CMakeFiles/Server.dir/src/server/src/Game.cpp.s

CMakeFiles/Server.dir/src/server/src/Game.cpp.o.requires:

.PHONY : CMakeFiles/Server.dir/src/server/src/Game.cpp.o.requires

CMakeFiles/Server.dir/src/server/src/Game.cpp.o.provides: CMakeFiles/Server.dir/src/server/src/Game.cpp.o.requires
	$(MAKE) -f CMakeFiles/Server.dir/build.make CMakeFiles/Server.dir/src/server/src/Game.cpp.o.provides.build
.PHONY : CMakeFiles/Server.dir/src/server/src/Game.cpp.o.provides

CMakeFiles/Server.dir/src/server/src/Game.cpp.o.provides.build: CMakeFiles/Server.dir/src/server/src/Game.cpp.o


CMakeFiles/Server.dir/src/server/src/ConsoleServerPrinter.cpp.o: CMakeFiles/Server.dir/flags.make
CMakeFiles/Server.dir/src/server/src/ConsoleServerPrinter.cpp.o: ../src/server/src/ConsoleServerPrinter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/gilad/CLionProjects/Task_05 (copy)/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Server.dir/src/server/src/ConsoleServerPrinter.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Server.dir/src/server/src/ConsoleServerPrinter.cpp.o -c "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/ConsoleServerPrinter.cpp"

CMakeFiles/Server.dir/src/server/src/ConsoleServerPrinter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Server.dir/src/server/src/ConsoleServerPrinter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/ConsoleServerPrinter.cpp" > CMakeFiles/Server.dir/src/server/src/ConsoleServerPrinter.cpp.i

CMakeFiles/Server.dir/src/server/src/ConsoleServerPrinter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Server.dir/src/server/src/ConsoleServerPrinter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/ConsoleServerPrinter.cpp" -o CMakeFiles/Server.dir/src/server/src/ConsoleServerPrinter.cpp.s

CMakeFiles/Server.dir/src/server/src/ConsoleServerPrinter.cpp.o.requires:

.PHONY : CMakeFiles/Server.dir/src/server/src/ConsoleServerPrinter.cpp.o.requires

CMakeFiles/Server.dir/src/server/src/ConsoleServerPrinter.cpp.o.provides: CMakeFiles/Server.dir/src/server/src/ConsoleServerPrinter.cpp.o.requires
	$(MAKE) -f CMakeFiles/Server.dir/build.make CMakeFiles/Server.dir/src/server/src/ConsoleServerPrinter.cpp.o.provides.build
.PHONY : CMakeFiles/Server.dir/src/server/src/ConsoleServerPrinter.cpp.o.provides

CMakeFiles/Server.dir/src/server/src/ConsoleServerPrinter.cpp.o.provides.build: CMakeFiles/Server.dir/src/server/src/ConsoleServerPrinter.cpp.o


CMakeFiles/Server.dir/src/server/src/ServerConfigParser.cpp.o: CMakeFiles/Server.dir/flags.make
CMakeFiles/Server.dir/src/server/src/ServerConfigParser.cpp.o: ../src/server/src/ServerConfigParser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/gilad/CLionProjects/Task_05 (copy)/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Server.dir/src/server/src/ServerConfigParser.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Server.dir/src/server/src/ServerConfigParser.cpp.o -c "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/ServerConfigParser.cpp"

CMakeFiles/Server.dir/src/server/src/ServerConfigParser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Server.dir/src/server/src/ServerConfigParser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/ServerConfigParser.cpp" > CMakeFiles/Server.dir/src/server/src/ServerConfigParser.cpp.i

CMakeFiles/Server.dir/src/server/src/ServerConfigParser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Server.dir/src/server/src/ServerConfigParser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/ServerConfigParser.cpp" -o CMakeFiles/Server.dir/src/server/src/ServerConfigParser.cpp.s

CMakeFiles/Server.dir/src/server/src/ServerConfigParser.cpp.o.requires:

.PHONY : CMakeFiles/Server.dir/src/server/src/ServerConfigParser.cpp.o.requires

CMakeFiles/Server.dir/src/server/src/ServerConfigParser.cpp.o.provides: CMakeFiles/Server.dir/src/server/src/ServerConfigParser.cpp.o.requires
	$(MAKE) -f CMakeFiles/Server.dir/build.make CMakeFiles/Server.dir/src/server/src/ServerConfigParser.cpp.o.provides.build
.PHONY : CMakeFiles/Server.dir/src/server/src/ServerConfigParser.cpp.o.provides

CMakeFiles/Server.dir/src/server/src/ServerConfigParser.cpp.o.provides.build: CMakeFiles/Server.dir/src/server/src/ServerConfigParser.cpp.o


CMakeFiles/Server.dir/src/server/src/Server.cpp.o: CMakeFiles/Server.dir/flags.make
CMakeFiles/Server.dir/src/server/src/Server.cpp.o: ../src/server/src/Server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/gilad/CLionProjects/Task_05 (copy)/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Server.dir/src/server/src/Server.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Server.dir/src/server/src/Server.cpp.o -c "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/Server.cpp"

CMakeFiles/Server.dir/src/server/src/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Server.dir/src/server/src/Server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/Server.cpp" > CMakeFiles/Server.dir/src/server/src/Server.cpp.i

CMakeFiles/Server.dir/src/server/src/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Server.dir/src/server/src/Server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/Server.cpp" -o CMakeFiles/Server.dir/src/server/src/Server.cpp.s

CMakeFiles/Server.dir/src/server/src/Server.cpp.o.requires:

.PHONY : CMakeFiles/Server.dir/src/server/src/Server.cpp.o.requires

CMakeFiles/Server.dir/src/server/src/Server.cpp.o.provides: CMakeFiles/Server.dir/src/server/src/Server.cpp.o.requires
	$(MAKE) -f CMakeFiles/Server.dir/build.make CMakeFiles/Server.dir/src/server/src/Server.cpp.o.provides.build
.PHONY : CMakeFiles/Server.dir/src/server/src/Server.cpp.o.provides

CMakeFiles/Server.dir/src/server/src/Server.cpp.o.provides.build: CMakeFiles/Server.dir/src/server/src/Server.cpp.o


CMakeFiles/Server.dir/src/server/src/CommandStart.cpp.o: CMakeFiles/Server.dir/flags.make
CMakeFiles/Server.dir/src/server/src/CommandStart.cpp.o: ../src/server/src/CommandStart.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/gilad/CLionProjects/Task_05 (copy)/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Server.dir/src/server/src/CommandStart.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Server.dir/src/server/src/CommandStart.cpp.o -c "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/CommandStart.cpp"

CMakeFiles/Server.dir/src/server/src/CommandStart.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Server.dir/src/server/src/CommandStart.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/CommandStart.cpp" > CMakeFiles/Server.dir/src/server/src/CommandStart.cpp.i

CMakeFiles/Server.dir/src/server/src/CommandStart.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Server.dir/src/server/src/CommandStart.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/CommandStart.cpp" -o CMakeFiles/Server.dir/src/server/src/CommandStart.cpp.s

CMakeFiles/Server.dir/src/server/src/CommandStart.cpp.o.requires:

.PHONY : CMakeFiles/Server.dir/src/server/src/CommandStart.cpp.o.requires

CMakeFiles/Server.dir/src/server/src/CommandStart.cpp.o.provides: CMakeFiles/Server.dir/src/server/src/CommandStart.cpp.o.requires
	$(MAKE) -f CMakeFiles/Server.dir/build.make CMakeFiles/Server.dir/src/server/src/CommandStart.cpp.o.provides.build
.PHONY : CMakeFiles/Server.dir/src/server/src/CommandStart.cpp.o.provides

CMakeFiles/Server.dir/src/server/src/CommandStart.cpp.o.provides.build: CMakeFiles/Server.dir/src/server/src/CommandStart.cpp.o


CMakeFiles/Server.dir/src/server/src/CommandListGames.cpp.o: CMakeFiles/Server.dir/flags.make
CMakeFiles/Server.dir/src/server/src/CommandListGames.cpp.o: ../src/server/src/CommandListGames.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/gilad/CLionProjects/Task_05 (copy)/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Server.dir/src/server/src/CommandListGames.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Server.dir/src/server/src/CommandListGames.cpp.o -c "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/CommandListGames.cpp"

CMakeFiles/Server.dir/src/server/src/CommandListGames.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Server.dir/src/server/src/CommandListGames.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/CommandListGames.cpp" > CMakeFiles/Server.dir/src/server/src/CommandListGames.cpp.i

CMakeFiles/Server.dir/src/server/src/CommandListGames.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Server.dir/src/server/src/CommandListGames.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/CommandListGames.cpp" -o CMakeFiles/Server.dir/src/server/src/CommandListGames.cpp.s

CMakeFiles/Server.dir/src/server/src/CommandListGames.cpp.o.requires:

.PHONY : CMakeFiles/Server.dir/src/server/src/CommandListGames.cpp.o.requires

CMakeFiles/Server.dir/src/server/src/CommandListGames.cpp.o.provides: CMakeFiles/Server.dir/src/server/src/CommandListGames.cpp.o.requires
	$(MAKE) -f CMakeFiles/Server.dir/build.make CMakeFiles/Server.dir/src/server/src/CommandListGames.cpp.o.provides.build
.PHONY : CMakeFiles/Server.dir/src/server/src/CommandListGames.cpp.o.provides

CMakeFiles/Server.dir/src/server/src/CommandListGames.cpp.o.provides.build: CMakeFiles/Server.dir/src/server/src/CommandListGames.cpp.o


CMakeFiles/Server.dir/src/server/src/CommandJoin.cpp.o: CMakeFiles/Server.dir/flags.make
CMakeFiles/Server.dir/src/server/src/CommandJoin.cpp.o: ../src/server/src/CommandJoin.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/gilad/CLionProjects/Task_05 (copy)/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Server.dir/src/server/src/CommandJoin.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Server.dir/src/server/src/CommandJoin.cpp.o -c "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/CommandJoin.cpp"

CMakeFiles/Server.dir/src/server/src/CommandJoin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Server.dir/src/server/src/CommandJoin.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/CommandJoin.cpp" > CMakeFiles/Server.dir/src/server/src/CommandJoin.cpp.i

CMakeFiles/Server.dir/src/server/src/CommandJoin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Server.dir/src/server/src/CommandJoin.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/CommandJoin.cpp" -o CMakeFiles/Server.dir/src/server/src/CommandJoin.cpp.s

CMakeFiles/Server.dir/src/server/src/CommandJoin.cpp.o.requires:

.PHONY : CMakeFiles/Server.dir/src/server/src/CommandJoin.cpp.o.requires

CMakeFiles/Server.dir/src/server/src/CommandJoin.cpp.o.provides: CMakeFiles/Server.dir/src/server/src/CommandJoin.cpp.o.requires
	$(MAKE) -f CMakeFiles/Server.dir/build.make CMakeFiles/Server.dir/src/server/src/CommandJoin.cpp.o.provides.build
.PHONY : CMakeFiles/Server.dir/src/server/src/CommandJoin.cpp.o.provides

CMakeFiles/Server.dir/src/server/src/CommandJoin.cpp.o.provides.build: CMakeFiles/Server.dir/src/server/src/CommandJoin.cpp.o


CMakeFiles/Server.dir/src/server/src/GameManager.cpp.o: CMakeFiles/Server.dir/flags.make
CMakeFiles/Server.dir/src/server/src/GameManager.cpp.o: ../src/server/src/GameManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/gilad/CLionProjects/Task_05 (copy)/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Server.dir/src/server/src/GameManager.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Server.dir/src/server/src/GameManager.cpp.o -c "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/GameManager.cpp"

CMakeFiles/Server.dir/src/server/src/GameManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Server.dir/src/server/src/GameManager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/GameManager.cpp" > CMakeFiles/Server.dir/src/server/src/GameManager.cpp.i

CMakeFiles/Server.dir/src/server/src/GameManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Server.dir/src/server/src/GameManager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/GameManager.cpp" -o CMakeFiles/Server.dir/src/server/src/GameManager.cpp.s

CMakeFiles/Server.dir/src/server/src/GameManager.cpp.o.requires:

.PHONY : CMakeFiles/Server.dir/src/server/src/GameManager.cpp.o.requires

CMakeFiles/Server.dir/src/server/src/GameManager.cpp.o.provides: CMakeFiles/Server.dir/src/server/src/GameManager.cpp.o.requires
	$(MAKE) -f CMakeFiles/Server.dir/build.make CMakeFiles/Server.dir/src/server/src/GameManager.cpp.o.provides.build
.PHONY : CMakeFiles/Server.dir/src/server/src/GameManager.cpp.o.provides

CMakeFiles/Server.dir/src/server/src/GameManager.cpp.o.provides.build: CMakeFiles/Server.dir/src/server/src/GameManager.cpp.o


CMakeFiles/Server.dir/src/server/src/Convert.cpp.o: CMakeFiles/Server.dir/flags.make
CMakeFiles/Server.dir/src/server/src/Convert.cpp.o: ../src/server/src/Convert.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/gilad/CLionProjects/Task_05 (copy)/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Server.dir/src/server/src/Convert.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Server.dir/src/server/src/Convert.cpp.o -c "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/Convert.cpp"

CMakeFiles/Server.dir/src/server/src/Convert.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Server.dir/src/server/src/Convert.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/Convert.cpp" > CMakeFiles/Server.dir/src/server/src/Convert.cpp.i

CMakeFiles/Server.dir/src/server/src/Convert.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Server.dir/src/server/src/Convert.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/Convert.cpp" -o CMakeFiles/Server.dir/src/server/src/Convert.cpp.s

CMakeFiles/Server.dir/src/server/src/Convert.cpp.o.requires:

.PHONY : CMakeFiles/Server.dir/src/server/src/Convert.cpp.o.requires

CMakeFiles/Server.dir/src/server/src/Convert.cpp.o.provides: CMakeFiles/Server.dir/src/server/src/Convert.cpp.o.requires
	$(MAKE) -f CMakeFiles/Server.dir/build.make CMakeFiles/Server.dir/src/server/src/Convert.cpp.o.provides.build
.PHONY : CMakeFiles/Server.dir/src/server/src/Convert.cpp.o.provides

CMakeFiles/Server.dir/src/server/src/Convert.cpp.o.provides.build: CMakeFiles/Server.dir/src/server/src/Convert.cpp.o


CMakeFiles/Server.dir/src/server/src/Communication.cpp.o: CMakeFiles/Server.dir/flags.make
CMakeFiles/Server.dir/src/server/src/Communication.cpp.o: ../src/server/src/Communication.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/gilad/CLionProjects/Task_05 (copy)/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/Server.dir/src/server/src/Communication.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Server.dir/src/server/src/Communication.cpp.o -c "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/Communication.cpp"

CMakeFiles/Server.dir/src/server/src/Communication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Server.dir/src/server/src/Communication.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/Communication.cpp" > CMakeFiles/Server.dir/src/server/src/Communication.cpp.i

CMakeFiles/Server.dir/src/server/src/Communication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Server.dir/src/server/src/Communication.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/Communication.cpp" -o CMakeFiles/Server.dir/src/server/src/Communication.cpp.s

CMakeFiles/Server.dir/src/server/src/Communication.cpp.o.requires:

.PHONY : CMakeFiles/Server.dir/src/server/src/Communication.cpp.o.requires

CMakeFiles/Server.dir/src/server/src/Communication.cpp.o.provides: CMakeFiles/Server.dir/src/server/src/Communication.cpp.o.requires
	$(MAKE) -f CMakeFiles/Server.dir/build.make CMakeFiles/Server.dir/src/server/src/Communication.cpp.o.provides.build
.PHONY : CMakeFiles/Server.dir/src/server/src/Communication.cpp.o.provides

CMakeFiles/Server.dir/src/server/src/Communication.cpp.o.provides.build: CMakeFiles/Server.dir/src/server/src/Communication.cpp.o


CMakeFiles/Server.dir/src/server/src/CommandManager.cpp.o: CMakeFiles/Server.dir/flags.make
CMakeFiles/Server.dir/src/server/src/CommandManager.cpp.o: ../src/server/src/CommandManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/gilad/CLionProjects/Task_05 (copy)/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/Server.dir/src/server/src/CommandManager.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Server.dir/src/server/src/CommandManager.cpp.o -c "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/CommandManager.cpp"

CMakeFiles/Server.dir/src/server/src/CommandManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Server.dir/src/server/src/CommandManager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/CommandManager.cpp" > CMakeFiles/Server.dir/src/server/src/CommandManager.cpp.i

CMakeFiles/Server.dir/src/server/src/CommandManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Server.dir/src/server/src/CommandManager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/CommandManager.cpp" -o CMakeFiles/Server.dir/src/server/src/CommandManager.cpp.s

CMakeFiles/Server.dir/src/server/src/CommandManager.cpp.o.requires:

.PHONY : CMakeFiles/Server.dir/src/server/src/CommandManager.cpp.o.requires

CMakeFiles/Server.dir/src/server/src/CommandManager.cpp.o.provides: CMakeFiles/Server.dir/src/server/src/CommandManager.cpp.o.requires
	$(MAKE) -f CMakeFiles/Server.dir/build.make CMakeFiles/Server.dir/src/server/src/CommandManager.cpp.o.provides.build
.PHONY : CMakeFiles/Server.dir/src/server/src/CommandManager.cpp.o.provides

CMakeFiles/Server.dir/src/server/src/CommandManager.cpp.o.provides.build: CMakeFiles/Server.dir/src/server/src/CommandManager.cpp.o


CMakeFiles/Server.dir/src/server/src/ClientHandler.cpp.o: CMakeFiles/Server.dir/flags.make
CMakeFiles/Server.dir/src/server/src/ClientHandler.cpp.o: ../src/server/src/ClientHandler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/gilad/CLionProjects/Task_05 (copy)/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/Server.dir/src/server/src/ClientHandler.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Server.dir/src/server/src/ClientHandler.cpp.o -c "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/ClientHandler.cpp"

CMakeFiles/Server.dir/src/server/src/ClientHandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Server.dir/src/server/src/ClientHandler.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/ClientHandler.cpp" > CMakeFiles/Server.dir/src/server/src/ClientHandler.cpp.i

CMakeFiles/Server.dir/src/server/src/ClientHandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Server.dir/src/server/src/ClientHandler.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/ClientHandler.cpp" -o CMakeFiles/Server.dir/src/server/src/ClientHandler.cpp.s

CMakeFiles/Server.dir/src/server/src/ClientHandler.cpp.o.requires:

.PHONY : CMakeFiles/Server.dir/src/server/src/ClientHandler.cpp.o.requires

CMakeFiles/Server.dir/src/server/src/ClientHandler.cpp.o.provides: CMakeFiles/Server.dir/src/server/src/ClientHandler.cpp.o.requires
	$(MAKE) -f CMakeFiles/Server.dir/build.make CMakeFiles/Server.dir/src/server/src/ClientHandler.cpp.o.provides.build
.PHONY : CMakeFiles/Server.dir/src/server/src/ClientHandler.cpp.o.provides

CMakeFiles/Server.dir/src/server/src/ClientHandler.cpp.o.provides.build: CMakeFiles/Server.dir/src/server/src/ClientHandler.cpp.o


CMakeFiles/Server.dir/src/server/src/main.cpp.o: CMakeFiles/Server.dir/flags.make
CMakeFiles/Server.dir/src/server/src/main.cpp.o: ../src/server/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/gilad/CLionProjects/Task_05 (copy)/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/Server.dir/src/server/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Server.dir/src/server/src/main.cpp.o -c "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/main.cpp"

CMakeFiles/Server.dir/src/server/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Server.dir/src/server/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/main.cpp" > CMakeFiles/Server.dir/src/server/src/main.cpp.i

CMakeFiles/Server.dir/src/server/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Server.dir/src/server/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/gilad/CLionProjects/Task_05 (copy)/src/server/src/main.cpp" -o CMakeFiles/Server.dir/src/server/src/main.cpp.s

CMakeFiles/Server.dir/src/server/src/main.cpp.o.requires:

.PHONY : CMakeFiles/Server.dir/src/server/src/main.cpp.o.requires

CMakeFiles/Server.dir/src/server/src/main.cpp.o.provides: CMakeFiles/Server.dir/src/server/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Server.dir/build.make CMakeFiles/Server.dir/src/server/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/Server.dir/src/server/src/main.cpp.o.provides

CMakeFiles/Server.dir/src/server/src/main.cpp.o.provides.build: CMakeFiles/Server.dir/src/server/src/main.cpp.o


# Object files for target Server
Server_OBJECTS = \
"CMakeFiles/Server.dir/src/server/src/Game.cpp.o" \
"CMakeFiles/Server.dir/src/server/src/ConsoleServerPrinter.cpp.o" \
"CMakeFiles/Server.dir/src/server/src/ServerConfigParser.cpp.o" \
"CMakeFiles/Server.dir/src/server/src/Server.cpp.o" \
"CMakeFiles/Server.dir/src/server/src/CommandStart.cpp.o" \
"CMakeFiles/Server.dir/src/server/src/CommandListGames.cpp.o" \
"CMakeFiles/Server.dir/src/server/src/CommandJoin.cpp.o" \
"CMakeFiles/Server.dir/src/server/src/GameManager.cpp.o" \
"CMakeFiles/Server.dir/src/server/src/Convert.cpp.o" \
"CMakeFiles/Server.dir/src/server/src/Communication.cpp.o" \
"CMakeFiles/Server.dir/src/server/src/CommandManager.cpp.o" \
"CMakeFiles/Server.dir/src/server/src/ClientHandler.cpp.o" \
"CMakeFiles/Server.dir/src/server/src/main.cpp.o"

# External object files for target Server
Server_EXTERNAL_OBJECTS =

Server: CMakeFiles/Server.dir/src/server/src/Game.cpp.o
Server: CMakeFiles/Server.dir/src/server/src/ConsoleServerPrinter.cpp.o
Server: CMakeFiles/Server.dir/src/server/src/ServerConfigParser.cpp.o
Server: CMakeFiles/Server.dir/src/server/src/Server.cpp.o
Server: CMakeFiles/Server.dir/src/server/src/CommandStart.cpp.o
Server: CMakeFiles/Server.dir/src/server/src/CommandListGames.cpp.o
Server: CMakeFiles/Server.dir/src/server/src/CommandJoin.cpp.o
Server: CMakeFiles/Server.dir/src/server/src/GameManager.cpp.o
Server: CMakeFiles/Server.dir/src/server/src/Convert.cpp.o
Server: CMakeFiles/Server.dir/src/server/src/Communication.cpp.o
Server: CMakeFiles/Server.dir/src/server/src/CommandManager.cpp.o
Server: CMakeFiles/Server.dir/src/server/src/ClientHandler.cpp.o
Server: CMakeFiles/Server.dir/src/server/src/main.cpp.o
Server: CMakeFiles/Server.dir/build.make
Server: CMakeFiles/Server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/gilad/CLionProjects/Task_05 (copy)/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable Server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Server.dir/build: Server

.PHONY : CMakeFiles/Server.dir/build

CMakeFiles/Server.dir/requires: CMakeFiles/Server.dir/src/server/src/Game.cpp.o.requires
CMakeFiles/Server.dir/requires: CMakeFiles/Server.dir/src/server/src/ConsoleServerPrinter.cpp.o.requires
CMakeFiles/Server.dir/requires: CMakeFiles/Server.dir/src/server/src/ServerConfigParser.cpp.o.requires
CMakeFiles/Server.dir/requires: CMakeFiles/Server.dir/src/server/src/Server.cpp.o.requires
CMakeFiles/Server.dir/requires: CMakeFiles/Server.dir/src/server/src/CommandStart.cpp.o.requires
CMakeFiles/Server.dir/requires: CMakeFiles/Server.dir/src/server/src/CommandListGames.cpp.o.requires
CMakeFiles/Server.dir/requires: CMakeFiles/Server.dir/src/server/src/CommandJoin.cpp.o.requires
CMakeFiles/Server.dir/requires: CMakeFiles/Server.dir/src/server/src/GameManager.cpp.o.requires
CMakeFiles/Server.dir/requires: CMakeFiles/Server.dir/src/server/src/Convert.cpp.o.requires
CMakeFiles/Server.dir/requires: CMakeFiles/Server.dir/src/server/src/Communication.cpp.o.requires
CMakeFiles/Server.dir/requires: CMakeFiles/Server.dir/src/server/src/CommandManager.cpp.o.requires
CMakeFiles/Server.dir/requires: CMakeFiles/Server.dir/src/server/src/ClientHandler.cpp.o.requires
CMakeFiles/Server.dir/requires: CMakeFiles/Server.dir/src/server/src/main.cpp.o.requires

.PHONY : CMakeFiles/Server.dir/requires

CMakeFiles/Server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Server.dir/clean

CMakeFiles/Server.dir/depend:
	cd "/home/gilad/CLionProjects/Task_05 (copy)/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/gilad/CLionProjects/Task_05 (copy)" "/home/gilad/CLionProjects/Task_05 (copy)" "/home/gilad/CLionProjects/Task_05 (copy)/cmake-build-debug" "/home/gilad/CLionProjects/Task_05 (copy)/cmake-build-debug" "/home/gilad/CLionProjects/Task_05 (copy)/cmake-build-debug/CMakeFiles/Server.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Server.dir/depend

