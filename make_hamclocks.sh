#!/usr/bin/env bash
set -e

make clean

for target in \
  hamclock-web-800x480 \
  hamclock-web-1600x960 \
  hamclock-web-2400x1440 \
  hamclock-web-3200x1920
do
  make "$target"
  mv "$target" ./hamclock_bin
  make clean
done