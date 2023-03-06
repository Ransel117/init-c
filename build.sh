#!/bin/bash

MUSL_ROOT=$(find /usr -iname 'musl' -type d -not -path '*/\.*')
MUSL_INC="$MUSL_ROOT/include"
MUSL_LIB="$MUSL_ROOT/lib"
MUSL_BIN="$MUSL_ROOT/bin"

CC="$MUSL_BIN/musl-gcc"
CFLAGS="-Wall -Wpedantic -ggdb -std=c99"
CDEFINES=""
CINCLUDES=""
CFILES="main.c"
CLIBS=""

EXEC="main"

echo "--------COMPILING--------"
echo $CC $CFLAGS $CDEFINES $CINCLUDES $CFILES -o $EXEC $CLIBS
$CC $CFLAGS $CDEFINES $CINCLUDES $CFILES -o $EXEC $CLIBS

echo "---------RUNNING---------"
echo ./$EXEC
./$EXEC
