/**************
* Student name: Gilad Madmon
* Student name: Dafna Magid
* Exercise name: Exercise 5
**************/

#ifndef TASK_05_COMMONFUNCTIONS_H
#define TASK_05_COMMONFUNCTIONS_H

#include <iostream>
using namespace std;

class Convert {
 public:
  static int ConvertStringToInt(string str, int startIndex, int endIndex);
  static int ConvertStringToInt(string str);
  static string ConvertIntToString(int num);
};

#endif //TASK_05_COMMONFUNCTIONS_H
