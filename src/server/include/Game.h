/**************
* Student name: Gilad Madmon
* Student name: Dafna Magid
* Exercise name: Exercise 5
**************/
#ifndef TASK_04_SERVER_H
#define TASK_04_SERVER_H

#define NO_MOVE_MSG "NoMove"
#define END_GAME_MSG "End"

#include <memory.h>

enum GameStatus { NO_MOVE, GAME_ENDED, PLAYING, ERROR, CLIENT_DISCONNECTED };

class Game {
 public:
  Game(int first_client);
  void AddClient(int second_client);
  void Play();
  void CloseGame();
  Game(Game &game);
  Game &operator=(Game &game);

 private:
  int TellTurn(int firstClientSocket, int secondClientSocket);
  GameStatus PlayOneTurn(int currentClient, int otherClient);
  void SwapClients(int &currentClient, int &otherClient);

  int first_client_socket_;
  int second_client_socket_;
  int is_closed_;
};

#endif //TASK_04_SERVER_H
