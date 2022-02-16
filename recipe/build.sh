#!/bin/bash

set -ex

./configure --host=$HOST --build=$BUILD --prefix=$PREFIX
make
make check
make install
