FROM ubuntu
RUN apt update && apt install -yq --no-install-recommends \
    apache2 \
    curl \
    nano \
    net-tools iputils-ping 

#Mantener vivo el contenedor
CMD [ "tall -f /dev/null" ]