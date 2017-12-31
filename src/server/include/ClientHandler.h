/**************
* Student name: Gilad Madmon
* Student name: Dafna Magid
* Exercise name: Exercise 5
**************/

#ifndef TASK_05_CLIENTHANDLER_H
#define TASK_05_CLIENTHANDLER_H

#include "CommandManager.h"

class ClientHandler {
 public:
  ClientHandler();
  ~ClientHandler();
  void CloseAll();
  void Handle(int client_socket);
 private:
  CommandManager *command_manager_;

};

#endif //TASK_05_CLIENTHANDLER_H
