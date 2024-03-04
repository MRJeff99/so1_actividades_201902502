#!/bin/bash

# Nombre del usuario
USER=$1

# Verificación del argumento
if [ -z "$USER" ]; then
    echo "Uso: $0 <nombre_usuario>"
    exit 1
fi

# Verificación de existencia de los Named Pipes
if [ ! -p "fifo_${USER}" ]; then
    mkfifo "fifo_${USER}"
fi

# Bucle principal
while true; do
    # Leer el mensaje del otro usuario
    OTHER_USER=$(echo "$USER" | sed 's/user1/user2/;s/user2/user1/')
    if [ -p "fifo_${OTHER_USER}" ]; then
        read -r MESSAGE < "fifo_${OTHER_USER}"
        echo "[$OTHER_USER]: $MESSAGE"
    fi

    # Escribir el mensaje propio
    read -r -p "[$USER]: " MESSAGE
    echo "$MESSAGE" > "fifo_${USER}"
done
