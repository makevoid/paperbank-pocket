#!/usr/bin/env bash
echo "bundling with browserify..."

coffee -c paperbank.coffee &&                  \

/usr/bin/time -f "bundled in min %E seconds"    \
  browserify --fast paperbank.js -o bundle.js
