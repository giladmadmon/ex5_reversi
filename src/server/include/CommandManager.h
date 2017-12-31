/**************
* Student name: Gilad Madmon
* Student name: Dafna Magid
* Exercise name: Exercise 5
**************/

#ifndef TASK_05_COMMANDMANAGER_H
#define TASK_05_COMMANDMANAGER_H

#include <iostream>
#include <vector>
#include <map>
#include "Command.h"

using namespace std;

class CommandManager {
 public:
  CommandManager();
  ~CommandManager();
  void ExecuteCommand(string command, vector<string> args);
 private:
  map<string, Command *> command_map_;
};

#endif //TASK_05_COMMANDMANAGER_H
