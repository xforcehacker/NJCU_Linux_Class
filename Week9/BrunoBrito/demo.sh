#!/bin/bash

# demo for the Flask/Rest API
# Note: server.com used because testing occurred from the same network that the server is on (and I had to eddit /etc/hosts to make it work)
#	server.com can be replaced with 148.76.16.252 when testing outside the network
# Note: The API is listening on port 8000. There is nothing listening on port 80 (or at least responding)

get1=$(curl server.com:8000/todos -X GET)
post1=$(curl server.com:8000/todos -X POST -d"task=Demo task for HW")
post2=$(curl server.com:8000/todos/1 -X POST -d"task=HW Demo")
get2=$(curl server.com:8000/todos/1 -X GET)

echo $get1
echo $post1
echo $post2
echo $get2
