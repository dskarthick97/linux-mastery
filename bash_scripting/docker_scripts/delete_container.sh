#!/bin/bash

container_ids=$(docker ps -a | awk '{print $1}')
container_id_arr=("$container_ids")
#echo "$container_id_arr"

#container_id_arr=(  )
for container_id in container_id_arr; do
	echo "Container id - $container_id"
done

#echo "$container_id_arr"
#echo "${container_id_arr[@]:1}"
