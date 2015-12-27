#!/usr/bin/env bash
echo "bundling with browserify..."

coffee -b -c paperbank.coffee &&              \
coffee -b -c make-qr.coffee   &&              \

/usr/bin/time -f "bundled in min %E seconds"  \
  browserify --fast paperbank.js -o bundle.js
