#!/usr/bin

curl -X post mysites.com/artist -d"name=MFDOOM"
curl -X get mysites.com/artist/MFDOOM
curl -X post mysites.com/artist/MFDOOM -d"name=JJDOOM"
curl -X get mysites.com/artist


