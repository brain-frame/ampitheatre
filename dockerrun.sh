#!/bin/sh


docker run \
	-v $PWD:/ampitheatre \
	--rm -it ampitheatre $@

