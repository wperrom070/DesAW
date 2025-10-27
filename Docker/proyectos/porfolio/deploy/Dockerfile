# Partimos de una imagen base de ubuntu 
FROM ubuntu
RUN apt update && apt install -yq --no-install-recommends \
    apache2 \
    curl \
    nano \
    net-tools iputils-ping 
RUN useradd -rm -d /home/wendy/ -s /bin/bash wendy 
# Para crear el password usamos el comando chpasswd
RUN echo "wendy:holamundo" | chpasswd
