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


# Server
#!/bin/bash -x
while true; do { echo -e "HTTP/1.1 200 OK\r\n$(date)\r\n\r\nhello from $(hostname) on $(date)" |  nc -vlp 8080; } done


#Tunnel
ssh -nNT -L 9000:localhost:8080 rajeevt@35.247.2.233 &

#client connect
nc localhost 9000



#Remote port forwarding

# Public ip: 35.247.2.233
# Corp-Mac: localhost
#Tunnel
ssh -nNT -R 12022:localhost:22 rajeevt@35.247.2.233 &

#ssh to Public
ssh rajeevt@35.247.2.233

#Connect to mac
ssh -p 12022 rajthakur@localhost
