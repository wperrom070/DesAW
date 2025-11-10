FROM ubuntu
RUN apt update && apt install -yq --no-install-recommends \
    apache2 \
    curl \
    nano \
    net-tools iputils-ping 

# Delegar la responsabilidad de la configuracion de las imagenes (no se hace en el DFile)
# a los scripts llamados Entrypoints (script de inicio para un contenedor)
# Mantener vivo el contenedor
# Tail es un comando que nunca acaba sin ejecución 
# CMD [ "tail", "-f", "/dev/null" ]
# Copiar los entrypoint (admin) dentro del contenedor en /root /bin/admin 
RUN mkdir -p /root/base/ubuntu/admin
# Directorio actual dentro del contenedor 
WORKDIR /root/base/ubuntu/admin
# 1. --> es referente al contexto en docker compose
# 2. --> es referente al WORKDIR dentro del contenedor  
COPY ./dockerfile/base/ubuntu/admin .
RUN chmod o+x ./start.sh

# Script de arranque para crear la iso y ejecutar el contenido
ENTRYPOINT [ "./start.sh" ]
