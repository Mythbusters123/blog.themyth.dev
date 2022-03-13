#!/bin/sh

./blogit clean build
# Make this look like the makefile
cat << __EOF__
./blogit clean build
find data -type f | while read -r line; do
  cp \$line blog/
done
__EOF__
find data -type f | while read -r line; do
  cp $line blog/
done
