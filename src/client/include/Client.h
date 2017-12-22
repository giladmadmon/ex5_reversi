/**************
* Student name: Gilad Madmon
* Student name: Dafna Magid
* Exercise name: Exercise 5
**************/

#ifndef TASK_04_FINAL_CLIENT_H
#define TASK_04_FINAL_CLIENT_H

#define NO_MOVE_MSG "NoMove"
#define END_GAME_MSG "End"
#define LONGEST_COMMAND 27

#include <string>
#include "Printer.h"
class Client {
 public:
  /**
   * Constructor.
   * @param name the name of the player.
   */
  Client(const char *serverIP, int serverPort);

  /**
   * Connect the player to rhe server.
   * @param printer the printer used to print messages along the connection process.
   */
  void connectToServer(Printer &printer);

  /**
  * Sends a message  to the server.
  * @param printer the printer used to print messages along the game.
  */

  int SendMsg(string msg);
  int ReadMsg(char msg[LONGEST_COMMAND]);
  int ReadMsg(int &msg);

 private:
  const char *server_IP_;
  int server_port_;
  int client_socket_;
  PlayerColor color_;
};
#endif //TASK_04_FINAL_CLIENT_H
