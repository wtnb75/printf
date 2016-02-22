// Small, safe and fast formatting library for C++
//  -> http://cppformat.github.io/
//  -> https://github.com/cppformat/cppformat
// g++ cppformat.cpp -o cppformat -lformat

#include <format.h>

int main(int argc, char **argv){
  fmt::printf("%#x %#x %#o %#o\n", 0, 1, 0, 1);
  return 0;
}
