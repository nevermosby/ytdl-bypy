#!/bin/sh

docker run -it --rm \
	-v ~/.bypy/bypy.json:/root/.bypy/bypy.json \
	-v $(pwd):/usr/app \
	david/youknownothing ./start-to-know.sh https://youtu.be/9w870glQOOg
