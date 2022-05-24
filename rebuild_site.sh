#!/bin/sh
echo './blogit clean build'
./blogit clean build

echo 'find data -type f -exec cp {} blog/ \;'
[ ! -d data/ ] && exit 0
find data -type f -exec cp {} blog/ \;
