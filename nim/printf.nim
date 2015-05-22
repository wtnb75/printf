proc printf(formatstr: cstring)
  {.header: "<stdio.h>", varargs.}

printf("%#x %#x %#o %#o\n", 0, 1, 0, 1)
