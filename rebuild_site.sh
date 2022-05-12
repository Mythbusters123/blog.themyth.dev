#!/bin/sh
echo './blogit clean build'
./blogit clean build

echo 'find data -type f -exec cp {} blog/ \;'
find data -type f -exec cp {} blog/ \;
