PS1="\[\033[01;31m\]"$(hostname -i)":\w $\[\033[00m\] "
docker run -it alpine sh
apk update
apk add --no-cache openssh vim
