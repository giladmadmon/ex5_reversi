/**************
* Student name: Gilad Madmon
* Student name: Dafna Magid
* Exercise name: Exercise 5
**************/

#ifndef TASK_05_COMMUNICATION_H
#define TASK_05_COMMUNICATION_H

#include <unistd.h>
#include <sstream>

#define SUCCESS 1
#define FAILURE -1

using namespace std;

class Communication {
 public:
  static int SendMsg(int client_socket, const string &msg);
  static int ReadMsg(int client_socket, string &msg);
};

#endif //TASK_05_COMMUNICATION_H
