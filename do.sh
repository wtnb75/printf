#! /bin/bash

run_awk(){
  local fn=$1
  echo -n ${fn} $(awk -f ${fn})' '
  awk --version | head -n 1
}

run_c(){
  local fn=$1
  local compiler
  for compiler in gcc gcc-5; do
    $compiler -o ${fn}.exe ${fn}
    echo -n ${fn} $(./${fn}.exe)' '
    rm ./${fn}.exe
    $compiler -v 2>&1 | grep -w version
  done
}

run_cpp(){
  local fn=$1
  local compiler
  for compiler in g++ g++-5; do
    $compiler -o ${fn}.exe ${fn}
    echo -n ${fn} $(./${fn}.exe)' '
    rm ./${fn}.exe
    $compiler -v 2>&1 | grep -w version
  done
}

run_clojure(){
  local fn=$1
  local jar=$HOME/Downloads/clojure-1.6.0/clojure-1.6.0.jar
  echo -n ${fn} $(java -jar ${jar} ${fn})' '
  echo $(basename $jar .jar)
}

run_csharp(){
  local fn=$1
  mcs ${fn} -o ${fn%.cs}.exe >/dev/null 2>&1
  echo -n ${fn} $(mono ${fn%.cs}.exe)' '
  rm -f ${fn%.cs}.exe
  mono --version | grep -w version
}

run_d(){
  local fn=$1
  echo -n ${fn} $(dmd -run ${fn})' '
  dmd --version | head -n 1
}

run_emacs(){
  local fn=$1
  echo -n ${fn} $(emacs --script ${fn} 2>&1)' '
  emacs --version | head -n 1
}

run_gnuplot(){
  local fn=$1
  echo -n ${fn} $(gnuplot ${fn} 2>&1)' '
  gnuplot --version
}

run_golang(){
  local fn=$1
  echo -n ${fn} $(go run ${fn})' '
  go version
}

run_lua(){
  local fn=$1
  echo -n ${fn} $(lua ${fn})' '
  lua -v
}

run_julia(){
  local fn=$1
  echo -n ${fn} $(julia ${fn})' '
  julia -v
}

run_m4(){
  local fn=$1
  echo -n ${fn} $(m4 ${fn})' '
  m4 --version | head -n1
}

if [ $# = 0 ] ; then
  for i in */; do
    for j in ${i%/}/*.* ; do
      cmd=run_${i%/}
      type $cmd > /dev/null 2>&1 || continue
      run_${i%/} ${j}
    done
  done
else
  for i; do
    for j in ${i%/}/*.* ; do
      cmd=run_${i%/}
      type $cmd > /dev/null 2>&1 || continue
      run_${i%/} ${j}
    done
  done
fi
