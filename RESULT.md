[IEEE printf](http://pubs.opengroup.org/onlinepubs/9699919799/functions/printf.html) says:
> For o conversion, it increases the precision (if necessary) to force the first digit of the result to be zero. For x or X conversion specifiers, a non-zero result shall have 0x (or 0X) prefixed to it. For a, A, e, E, f, F, g , and G conversion specifiers, the result shall always contain a radix character, even if no digits follow the radix character. Without this flag, a radix character appears in the result of these conversions only if a digit follows it. For g and G conversion specifiers, trailing zeros shall not be removed from the result as they normally are. For other conversion specifiers, the behavior is undefined.

# Hex(%#x)

## Group "0x0"

- Python(2.7.9), PyPy(2.5.1), Python(3.4.2), Cython, Jython(2.7.0)
- Clojure (1.6.0)
- Golang(go1.4.2)
- Gauche(0.9.4)+SLIB(3b5)
- Rust(1.0.0)
- Java(1.8.0_45)
- Scala(2.11.6)
- Node-printf(node.js + https://github.com/wdavidw/node-printf)
- Julia(0.3.8)
- Hive
- Tcl(8.4, 8.5, 8.6)
- Groovy

## Group "0"

- clang(Apple LLVM version 6.1.0)
- gcc(Homebrew gcc 5.1.0)
- iostream: clang++(Apple LLVM version 6.1.0)
- Lua(5.2.3)
- Nim(0.11.2)
- Perl(v5.18.2)
- Ruby(2.2.0p0), JRuby(1.7.19), mRuby(1.1.0)
- zsh builtin(5.0.7)
- GNU awk(4.1.2)
- OSX Yosemite /usr/bin/printf
- OSX Yosemite awk(20070501)
- Haskell(7.10.1)
- Emacs Lisp(GNU Emacs 24.5.1)
- busybox printf(1.15.1)
- GNU coreutils printf(8.4, 8.22)
- boost::format(1.58.0)
- Dlang(2.067.0)
- GNU m4(1.4.6)
- R
- Octave
- Gnuplot
- Ocaml(4.02.1)

## does not support

- PHP(5.5.20)
- Node.js(v0.12.2, util.format)
- C#(mono 4.0.1)
- Pike(v7.8)

# Oct(%#o)

## Group "00"

## Group "0"

## Group "0o0"

- Rust(1.0.0)
