## Características principales del Completely Fair Scheduler (CFS) de Linux:

* **Planificación basada en tiempo**: CFS asigna tiempo de CPU a los procesos en lugar de simplemente priorizarlos. Esto se logra mediante un árbol rojo-negro que rastrea el tiempo de CPU utilizado por cada proceso y sus subprocesos.
* **Justicia**: CFS se esfuerza por dar a cada proceso una cantidad justa de tiempo de CPU. Esto significa que los procesos con mayor necesidad de CPU recibirán más tiempo que los procesos con menor necesidad.
* **Escalabilidad**: CFS puede manejar eficientemente un gran número de procesos. Esto lo hace adecuado para sistemas con muchos usuarios o aplicaciones que requieren mucha CPU.
* **Flexibilidad**: CFS se puede configurar para adaptarse a diferentes necesidades. Por ejemplo, se pueden establecer diferentes prioridades para diferentes tipos de procesos.

## Funcionamiento del CFS:

1. **Árbol rojo-negro**: El núcleo del CFS es un árbol rojo-negro que rastrea el tiempo de CPU utilizado por cada proceso y sus subprocesos. El árbol se actualiza constantemente para reflejar el uso de la CPU por parte de cada proceso.
2. **VirtuaRun**: CFS utiliza un concepto llamado "VirtuaRun" para determinar qué proceso debería ejecutarse a continuación. El VirtuaRun es un valor que representa la cantidad de tiempo que un proceso ha estado esperando para ejecutarse. El proceso con el VirtuaRun más alto será el siguiente en ejecutarse.
3. **Cuota de tiempo**: Cada proceso tiene una cuota de tiempo que define la cantidad máxima de CPU que puede usar en un período determinado. Si un proceso excede su cuota de tiempo, se le puede poner en espera hasta que haya más CPU disponible.
4. **Prioridades**: CFS permite establecer diferentes prioridades para diferentes tipos de procesos. Las prioridades más altas se traducen en un VirtuaRun más alto, lo que significa que los procesos con mayor prioridad tendrán más posibilidades de ejecutarse antes.
