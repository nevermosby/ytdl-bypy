#!/bin/sh

docker run -it --rm \
	-v ~/.bypy/bypy.json:/root/.bypy/bypy.json \
	-v $(pwd):/usr/app \
	david/youknownothing bash
