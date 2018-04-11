#!/bin/bash
#filename=$(readlink -f $1)
#dirname=$(dirname $filename)
dirname="/Users/limx/Documents/GitHub/docker/new/scripts"

for i in `cat $dirname/list`
do
	tmpname=`echo lmx09199/docker:$i`
	#docker pull $tmpname
	echo "docker pull $tmpname"
	realname=`cat $dirname/../$i | awk '{print $2}'`
	#docker tag $tmpname $realname
	echo "docker tag $tmpname $realname"
	#docker rmi $tmpname
	echo "docker rmi $tmpname"
	#docker save $realname | gzip > ${i}.tar.gz
	echo "docker save $realname | gzip > ${i}.tar.gz"
done

