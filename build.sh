#!/usr/bin/env bash

find challenges -type d -mindepth 1 -maxdepth 1 -exec bash -c \
  'pushd {} && cp ../../CMakeLists.txt.head ./ && mv CMakeLists.txt CMakeLists.txt.tail && cat CMakeLists.txt.head CMakeLists.txt.tail > CMakeLists.txt && cp -av ../../include/ ./lib_include && mkdir build && cd build && cmake -GNinja .. && ninja && popd' \;
