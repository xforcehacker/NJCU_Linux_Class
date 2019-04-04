#!/bin/bash

# demo for the Flask/Rest API
# Note: The API is listening on port 8000. There is nothing listening on port 80 (or at least responding)

get1=$(curl 148.76.16.252:8000/todos -X GET)
post1=$(curl 148.76.16.252:8000/todos -X POST -d"task=Demo task for HW")
post2=$(curl 148.76.16.252:8000/todos/1 -X POST -d"task=HW Demo")
get2=$(curl 148.76.16.252:8000/todos/1 -X GET)

echo $get1
echo $post1
echo $post2
echo $get2
