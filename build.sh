#!/usr/bin/env bash
echo "bundling with browserify..."

coffee -b -c paperbank.coffee &&                  \

/usr/bin/time -f "bundled in min %E seconds"    \
  browserify paperbank.js -o bundle.js
