#! /bin/bash

# Just browse throught the directories and build all the Dockerfiles found.
for directory in `find . -name Dockerfile -exec dirname {} \;` ;do
	cd ${directory}
	docker build .
done 

#Do the same with fig
for directory in `find . -name fig.yml -exec dirname {} \;` ;do
	cd ${directory}
	fig build 
	fig up
	fig stop
done 
