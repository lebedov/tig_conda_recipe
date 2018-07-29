#!/bin/sh

make configure
CPPFLAGS=-I$PREFIX/include LDFLAGs=-L$PREFIX/lib ./configure --prefix=$PREFIX
make -j $CPU_COUNT
make install
make install-doc
