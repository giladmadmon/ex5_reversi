/**************
* Student name: Gilad Madmon
* Student name: Dafna Magid
* Exercise name: Exercise 5
**************/
#ifndef TASK_04_SERVER_H
#define TASK_04_SERVER_H

#define NO_MOVE_MSG "NoMove"
#define END_GAME_MSG "End"
#define LONGEST_COMMAND 27

#include <string>
#include "ServerPrinter.h"
enum GameStatus { NO_MOVE, GAME_ENDED, PLAYING, ERROR, CLIENT_DISCONNECTED };

class Server {
 public:
  Server(int port, ServerPrinter &printer);
  void Start();
  void Stop();
  void Play();

 private:
  int port;
  int serverSocket; // the socket's file descriptor
  ServerPrinter &printer_;
  int TellTurn(int firstClientSocket, int secondClientSocket);
  int ConnectClients(int &firstClientSocket, int &secondClientSocket);
  GameStatus PlayOneTurn(int currentClient, int otherClient);
  void SwapClients(int &currentClient, int &otherClient);
  void PrintStatus(GameStatus status, string msg);
};

#endif //TASK_04_SERVER_H
