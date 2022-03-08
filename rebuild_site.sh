#!/bin/sh
./blogit clean build
find data -type f | while read -r line; do
  cp $line blog/
done
