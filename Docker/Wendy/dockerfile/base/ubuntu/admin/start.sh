#!/bin/bash

newUser(){
    useradd -rm -d /home/wendy -s /bin/bash wendy
    echo "wendy:1234" | chpasswd
    echo "Bienvenido Wendy ..." > /home/wendy/bienvenido.txt
}

main(){
    newUser
    tail -f /dev/null
}

main 