#!/bin/bash
cmake -S . -B build
make -C build
sudo make -C build install

echo
echo "### CLANG STATIC ANALYZER CHECKERS ###"
echo
clang-19 -cc1 -load /usr/local/lib/libPostgresChecker.so -analyzer-checker-help | grep postgres
echo
