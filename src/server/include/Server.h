/**************
* Student name: Gilad Madmon
* Student name: Dafna Magid
* Exercise name: Exercise 5
**************/

#ifndef TASK_05_GAMEMANAGER_H
#define TASK_05_GAMEMANAGER_H

#define MAX_CONNECTED_CLIENTS 10

#include <string>
#include "ServerPrinter.h"
#include "ClientHandler.h"

class Server {
 public:
  Server(int port, ServerPrinter &printer);
  void Start();
  void AcceptConnections();
  void Stop();
  int WaitForConnection();

 private:
  int is_closed_;
  int port_;
  int server_socket_; // the socket's file descriptor
  ClientHandler client_handler_;

};

#endif //TASK_05_GAMEMANAGER_H
