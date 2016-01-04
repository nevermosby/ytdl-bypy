#!/bin/sh

docker run --rm --privileged --net=twp \
-v ~/.bypy/bypy.json:/root/.bypy/bypy.json \
-e NFS_SERVER=nfs-server -e NFS_SRC=/shared-data -e NFS_TARGET=/shared-data \
david/youknownothing-upload ./by-upload.sh "$1"
