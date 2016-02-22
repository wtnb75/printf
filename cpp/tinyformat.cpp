// Minimal, type safe printf replacement library for C++
//  -> https://github.com/c42f/tinyformat

#include "tinyformat.h"

int main(int argc, char **argv){
  tfm::printf("%#x %#x %#o %#o\n", 0, 1, 0, 1);
  return 0;
}
