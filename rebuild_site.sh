#!/bin/sh
echo './blogit clean build'
./blogit clean build

cat << __EOF__
find data -type f -exec cp {} blog/ \;
__EOF__
find data -type f -exec cp {} blog/ \;
