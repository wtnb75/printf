#include <iostream>
#include <boost/format.hpp>

using namespace std;

int main(int argc, char **argv){
  cout << boost::format("%#x %#x %#o %#o") % 0 % 1 % 0 % 1 << endl;
  return 0;
}
