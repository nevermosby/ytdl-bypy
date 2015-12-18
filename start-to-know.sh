#!/bin/sh

targetUrl=$1
if [ ! -f /usr/app/video/dl.log ]; then
    echo "" > /usr/app/video/dl.log
fi

youtube-dl -o '/usr/app/video/%(uploader)s-%(title)s-%(id)s.%(ext)s' \
	--exec 'created_time=`date +%Y-%m-%d:%H:%M:%S`;comment='thisishighlight';echo {} > /usr/app/video/latest.log;echo {}::::$created_time::::$comment >> /usr/app/video/dl.log' $1
videoname=$(cat /usr/app/video/latest.log)
echo "video name is ${videoname}"
 
bypy.py -vd upload "${videoname}"

