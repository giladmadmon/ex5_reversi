/**************
* Student name: Gilad Madmon
* Student name: Dafna Magid
* Exercise name: Exercise 5
**************/

#include <sstream>
#include "../include/GameManager.h"
#include "../include/Communication.h"

GameManager *GameManager::instance = NULL;

void *JoinGame(void *args) {
  Game *game = (Game *) args;

  game->Play();
}

int GameManager::Start(int client_socket, string name) {
  if (available_game_list_.count(name))
    return FAILURE;

  pair<string, Game *> new_game(name, new Game(client_socket));
  available_game_list_.insert(new_game);

  return SUCCESS;
}

vector<string> GameManager::GameList() {
  vector<string> games_name;

  for (map<string, Game *>::iterator it = available_game_list_.begin(); it != available_game_list_.end(); ++it) {
    games_name.push_back(it->first);
  }

  return games_name;
}

int GameManager::Join(int client_socket, string name) {
  if (available_game_list_.count(name)) {
    pthread_t thread;
    map<string, Game *>::iterator game = available_game_list_.find(name);

    game->second->AddClient(client_socket);

    pthread_create(&thread, NULL, JoinGame, game->second);
    pair<Game *, pthread_t> wanted_game(game->second, thread);
    games_list_.insert(wanted_game);

    available_game_list_.erase(name);

    return SUCCESS;
  }
  return FAILURE;
}

GameManager *GameManager::Instance() {
  if (!instance)
    instance = new GameManager();
  return instance;
}

void GameManager::FinishAllGames() {
  pthread_mutex_lock(&games_closing_mutex_);
  games_closing = 1;
  pthread_mutex_unlock(&games_closing_mutex_);

  for (map<Game *, thread_t>::iterator it = games_list_.begin(); it != games_list_.end(); it++) {
    it->first->CloseGame();
  }

  for (map<Game *, thread_t>::iterator it = games_list_.begin(); it != games_list_.end(); it++) {
    pthread_join(it->second, NULL);
    delete it->first;
  }
}
void GameManager::GameEnded(Game *game) {
  pthread_mutex_lock(&games_closing_mutex_);
  if (!games_closing) {
    games_list_.erase(game);
    delete game;
  }
  pthread_mutex_unlock(&games_closing_mutex_);
}