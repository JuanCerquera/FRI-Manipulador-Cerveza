# FRI-Manipulador-Cerveza
Este repositorio contiene el proyecto final de la asignatura de Fundamentos de robótica industrial de la universidad nacional de colombia para el periodo 2024-II. El proyecto fue realizado por Juan Camilo Gomez, Seykarim Mestre, Juan Carlos García, y Juan Esteban Cerquera; consistió en la integración de un PAC xxxx, una banda transportadora, 2 manipuladores ABB IRB140 y sus controladores ABB IRC5. El proceso inicia con el primer manipulador, que toma una estiba en madera con 3 cervezas y la posiciona en una banda transportadora, que la transporta hasta la posición del segundo manipulador, allí este toma una por una las botellas y las posiciona sobre una caja de cartón. Durante el proyecto se diseñaron y modelaron 2 grippers, uno para tomar la estiba de madera para el manipulador 1, y otro para tomar las botellas de vidrio para el manipulador 2, accionado por un sistema neumático. Durante todo el proceso se envían y reciben señales en el PAC y en los controladores de cada robot, para indicar inicio y finalización de procesos, arrancar y detener la banda transportadora, y accionar la electroválvula del gripper.

## Programación

La programación de los robots se realizó a través del software ABB RobotStudio, allí se incorporaron los 2 robots, se programaron las trayectorias de cada uno y se diseñó toda la lógica de simulación, incluyendo las entradas y salidas digitales de ambos controladores. Al momento de implementar los programas en los robots reales, se realizaron pruebas para ajustar la posición de los robtargets para que coincidieran con las condiciones reales y las velocidades de ejecución de los movimientos.

![image](https://github.com/user-attachments/assets/75095ebb-f105-4af8-8daa-1c2a06152475)

## PAC

## Modelado 3D

Se realizo el diseño y desarrollo de los elementos necesarios para transportar botellas de cerveza: 

**Botellas:** Heineken y Mahou. Se utilizo la técnica de multicuerpo para modelar tanto las botellas como el líquido contenido (cerveza, densidad aprox de 1.004 gr/cm^3). Gracias a los modelos se determina el centro de masa.

![image](https://github.com/user-attachments/assets/2e628bef-0f79-4823-a3f9-b57ef6f14c0a)

**Bandeja tipo Palet:** para transportar hasta 3 botellas, meterial madera.

![image](https://github.com/user-attachments/assets/13ed70cc-0271-46b8-908e-006cdb22d4d9)

**Griper Cervezas:** para tomar y transportar cervezas:

Se toma como referencia y punto de partida, el manual (tipo catálogo) Midman.

![image](https://github.com/user-attachments/assets/cd203ce4-cf5f-4545-9850-cdbe7dee72d0)

**Dedos griper:** Se diseño buscando optimizar su peso, se llevaron acabo estudios de optimización topológica y análisis estático por técnicas de elementos finitos, buscando encontrar el factor de seguridad menor posible, es decir no sobrediseñar.

## Fabricación
