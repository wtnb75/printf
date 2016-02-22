// gcc -o apr apr.c $(pkg-config apr-1 --libs --cflags)
#include <unistd.h>
#include <apr_strings.h>

int main(int argc, char **argv){
  char buf[1024];
  int res=apr_snprintf(buf, sizeof(buf), "%#x %#x %#o %#o\n", 0, 1, 0, 1);
  write(1, buf, res);
  return 0;
}
