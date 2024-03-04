## Chat básico con Named Pipes en Linux

Este proyecto crea un chat básico entre dos participantes utilizando Named Pipes en bash en Linux.

### Pasos para usar el chat:

1. **Crear las named pipes:**

```bash
mknod pipe1 p
mknod pipe2 p
```

2. **Ejecutar el servidor:**

```bash
while true; do
  read message < pipe1
  echo "$message"
  echo "Tu mensaje: " > pipe2
done
```

3. **Ejecutar el cliente:**

```bash
while true; do
  echo "Tu mensaje: "
  read message
  echo "$message" > pipe1
  read response < pipe2
  echo "$response"
done
```

4. **Escribir mensajes:**

```
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

```

Escriba sus mensajes en la terminal donde se ejecuta el cliente. El servidor mostrará los mensajes recibidos.

### Funcionamiento:

* Se crean dos named pipes: `pipe1` y `pipe2`.
* El servidor lee mensajes de `pipe1` y los muestra en la pantalla.
* El servidor escribe mensajes en `pipe2`.
* El cliente escribe mensajes en `pipe1`.
* El cliente lee mensajes de `pipe2`.

### Limitaciones:

* Este chat solo funciona entre dos participantes.
* No hay soporte para archivos o emojis.

### Mejoras:

* Se pueden agregar más funcionalidades, como:
    * Soporte para archivos.
    * Soporte para emojis.
    * Historial de mensajes.
    * Notificaciones de mensajes nuevos.

