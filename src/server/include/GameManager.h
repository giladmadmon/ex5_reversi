/**************
* Student name: Gilad Madmon
* Student name: Dafna Magid
* Exercise name: Exercise 5
**************/

#ifndef TASK_05_GAMEMANGER_H
#define TASK_05_GAMEMANGER_H

#include "Game.h"

#include <map>
#include <vector>
#include <thread_db.h>

using namespace std;

class GameManager {

 public:
  static GameManager *Instance();

  int Start(int client_socket, string name);
  vector<string> GameList();
  int Join(int client, string name);
  void GameEnded(Game *game);
  void FinishAllGames();

 private:
  static GameManager *instance;

  map<Game *, thread_t> games_list_;
  map<string, Game *> available_game_list_;
  pthread_mutex_t games_closing_mutex_;
  int games_closing;

  GameManager() : games_closing(0) {
    pthread_mutex_init(&games_closing_mutex_, NULL);
  }
  GameManager(GameManager &) {};
  GameManager &operator=(GameManager &) {};
};

#endif //TASK_05_GAMEMANGER_H
