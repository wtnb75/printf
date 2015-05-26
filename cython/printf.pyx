# cython printf.pyx
# gcc -I/usr/local/opt/pyenv/versions/2.7.8/include/python2.7/ -shared -undefined dynamic_lookup -o printf.so printf.c
# python test-printf.py

import cython

def ptest():
  cdef int a=0, b=1
  return "%#x %#x %#o %#o" %(a, b, a, b)
