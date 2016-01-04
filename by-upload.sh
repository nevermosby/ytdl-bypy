#!/bin/bash

set -e

video_path=$1
#nfs_src=${NFS_SRC}
#nfs_target=${NFS_TARGET}

rpcbind

mkdir -p ${NFS_TARGET}

mount -t nfs -o proto=tcp,port=2049 ${NFS_SERVER}:${NFS_SRC} ${NFS_TARGET}

bypy.py -vd upload "${video_path}"


