#debian
#server
nc -lkp 8080

#client
nc localhost 8080

##osx
#server
nc -l 8080

#client
nc localhost 8080

#open connection
netstat -ntpl


#!/bin/bash -x
while true; do { echo -e "HTTP/1.1 200 OK\r\n$(date)\r\n\r\nhello from $(hostname) on $(date)" |  nc -vlp 8080; } done
