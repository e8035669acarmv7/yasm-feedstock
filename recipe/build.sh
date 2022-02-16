#!/bin/bash

set -ex

# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* .

./configure --host=$HOST --build=$BUILD --prefix=$PREFIX
make
make check
make install
