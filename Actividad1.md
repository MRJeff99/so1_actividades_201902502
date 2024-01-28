**Tipos de Kernel y sus diferencias**

El kernel es la parte más fundamental de un sistema operativo. Es el software que se ejecuta en el nivel más bajo de la pila de software y es responsable de controlar los recursos del hardware del sistema. Hay varios tipos diferentes de kernels, cada uno con sus propias ventajas y desventajas.

**Kernel monolítico**

El kernel monolítico es el tipo de kernel más simple y tradicional. Es un único programa que contiene todo el código del sistema operativo. Esto hace que sea fácil de implementar y mantener, pero también puede ser lento y poco escalable.

![Kernel monolítico](./Src/T1/1.png)

**Ventajas:**

* Fácil de implementar y mantener
* Rendimiento óptimo

**Desventajas:**

* Puede ser lento y poco escalable

**Kernel micronúcleo**

El kernel micronúcleo es un tipo de kernel más moderno que separa el código del sistema operativo en dos capas: el núcleo y las extensiones. El núcleo contiene solo el código más esencial, como la gestión de procesos y memoria. Las extensiones son módulos que pueden cargarse y descargarse dinámicamente, lo que hace que el kernel sea más flexible y escalable.


![Image of Kernel micronúcleo](/Src/T1/2.png)

**Ventajas:**

* Flexible y escalable
* Fácil de mantener

**Desventajas:**

* Puede ser más complejo de implementar
* Rendimiento inferior al kernel monolítico

**Kernel híbrido**

El kernel híbrido es un tipo de kernel que combina las características del kernel monolítico y micronúcleo. El núcleo contiene un conjunto básico de funciones, como la gestión de procesos y memoria. Las extensiones pueden agregar funciones adicionales, como el soporte para dispositivos de hardware o sistemas de archivos.


![Image of Kernel híbrido](/Src/T1/3.png)

**Ventajas:**

* Combina las ventajas de los kernels monolíticos y micronúcleos

**Desventajas:**

* Puede ser más complejo de implementar que el kernel monolítico

**User vs Kernel Mode**

Los modos de usuario y kernel son dos estados en los que puede ejecutarse un programa en un sistema operativo. El modo de usuario es el estado en el que se ejecutan los programas de usuario. El modo kernel es el estado en el que se ejecuta el kernel del sistema operativo.

**Modo de usuario**

En el modo de usuario, los programas tienen acceso limitado a los recursos del sistema. Solo pueden acceder a los recursos que les han sido asignados por el kernel. Esto ayuda a proteger el sistema operativo de los programas malicioso.


![Image of Kernel híbrido](/Src/T1/4.png)

**Ventajas:**

* Seguridad mejorada
* Mayor eficiencia

**Desventajas:**

* Acceso limitado a recursos

**Modo kernel**

En el modo kernel, los programas tienen acceso completo a los recursos del sistema. Esto les permite realizar tareas que no pueden realizarse en el modo de usuario, como acceder al hardware o cambiar la configuración del sistema operativo.



**Ventajas:**

* Acceso completo a recursos
* Mayor flexibilidad

**Desventajas:**

* Seguridad reducida
* Menor eficiencia

**Interruptions vs traps**

Las interrupciones y las trampas son dos eventos que pueden hacer que el kernel del sistema operativo se ejecute en modo kernel.

**Interrupciones**

Una interrupción es un evento externo que ocurre en el hardware del sistema. Por ejemplo, una interrupción puede ocurrir cuando un dispositivo de hardware solicita atención del kernel.

[Image of Interrupciones]

**Trampas**

Una trampa es un evento interno que ocurre en el software del sistema. Por ejemplo, una trampa puede ocurrir cuando un programa de usuario intenta realizar una operación que está prohibida en el modo de usuario.

[Image of Trampas]

**Diferencias entre interrupciones y trampas**

| Característica | Interrupciones | Trampas |
|---|---|---|
| Causa | Evento externo | Evento interno |
| Momento | Pueden ocurrir en cualquier momento | Ocurren en momentos específicos |
| Manejo | Pueden ser manejadas por el kernel o por el programa de usuario que causó la interrupción | Siempre son manejadas por el kernel |

**Conclusión**

Los sistemas operativos son sistemas complejos que requieren una comprensión de una variedad de conceptos diferentes. Los tipos de kernel, los modos de usuario y kernel, y las interrupciones y trampas son algunos de los conceptos más importantes que deben comprenderse.