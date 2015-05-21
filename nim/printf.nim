proc printf(formatstr: cstring)
  {.header: "<stdio.h>", varargs.}

printf("%#x %#x\n", 0, 1)
