#!/bin/sh

targetUrl=$1
comment=$2
echo "video comment $comment"
if [ ! -f /shared-data/video/dl.log ]; then
    echo "" > /shared-data/video/dl.log
fi

youtube-dl -o '/shared-data/video/%(uploader)s-%(title)s-%(id)s.%(ext)s' \
--exec 'created_time=`date +%Y-%m-%d:%H:%M:%S`;video_comment=$(echo "$comment");echo {} > /shared-data/video/latest.log;echo {}::::$created_time::::$video_comment >> /shared-data/video/dl.log' $1

videoname=$(cat /shared-data/video/latest.log)
echo "video name is ${videoname}"
 
