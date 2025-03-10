# FRI-Manipulador-Cerveza
Este repositorio contiene el proyecto final de la asignatura de Fundamentos de robótica industrial de la universidad nacional de colombia para el periodo 2024-II. El proyecto fue realizado por Juan Camilo Gomez, Seykarim Mestre, Juan Carlos García, y Juan Esteban Cerquera; consistió en la integración de un PAC xxxx, una banda transportadora, 2 manipuladores ABB IRB140 y sus controladores ABB IRC5. El proceso inicia con el primer manipulador, que toma una estiba en madera con 3 cervezas y la posiciona en una banda transportadora, que la transporta hasta la posición del segundo manipulador, allí este toma una por una las botellas y las posiciona sobre una caja de cartón. Durante el proyecto se diseñaron y modelaron 2 grippers, uno para tomar la estiba de madera para el manipulador 1, y otro para tomar las botellas de vidrio para el manipulador 2, accionado por un sistema neumático. Durante todo el proceso se envían y reciben señales en el PAC y en los controladores de cada robot, para indicar inicio y finalización de procesos, arrancar y detener la banda transportadora, y accionar la electroválvula del gripper.

## Programación

La programación de los robots se realizó a través del software ABB RobotStudio, allí se incorporaron los 2 robots, se programaron las trayectorias de cada uno y se diseñó toda la lógica de simulación, incluyendo las entradas y salidas digitales de ambos controladores. Al momento de implementar los programas en los robots reales, se realizaron pruebas para ajustar la posición de los robtargets para que coincidieran con las condiciones reales y las velocidades de ejecución de los movimientos.

![image](https://github.com/user-attachments/assets/75095ebb-f105-4af8-8daa-1c2a06152475)

## PACK
Para el control de la secuencia del proceso se utilizó el PACK de Rockwell disponible en el laboratorio y se programó de acuerdo al sigiuente diagrama de flujo:

![image](https://github.com/user-attachments/assets/0e25c532-dfe9-4a2f-b012-9e4beb372cb7)

El programa resultante en Ladder fue el siguiente:

![image](https://github.com/user-attachments/assets/28b04b26-4aa9-4f93-b6bc-6a4f12bf3869)

Por último se realizó una HMI para inicio y monitoreo del proceso como se muestra a continuación:

![image](https://github.com/user-attachments/assets/c0f21f0f-68e9-4585-950e-fe7a58eb3246)



## Modelado 3D

Se realizo el diseño y desarrollo de los elementos necesarios para transportar botellas de cerveza, apoyados en la herramienta "Autodesk Inventor Professional (AIP) 2025": 

**Botellas:** Heineken y Mahou. Se utilizo la técnica de multicuerpo para modelar tanto las botellas como el líquido contenido (cerveza, densidad aprox de 1.004 gr/cm^3). Gracias a los modelos se determina el centro de masa.

![image](https://github.com/user-attachments/assets/2e628bef-0f79-4823-a3f9-b57ef6f14c0a)

**Bandeja tipo Palet:** para transportar hasta 3 botellas, material madera.

![image](https://github.com/user-attachments/assets/13ed70cc-0271-46b8-908e-006cdb22d4d9)

**Griper Cervezas:** para tomar y transportar cervezas:

Se toma como referencia y punto de partida, el manual (tipo catálogo) Mindman.

![image](https://github.com/user-attachments/assets/cd203ce4-cf5f-4545-9850-cdbe7dee72d0)

**Dedos griper:** Se diseñaron buscando optimizar su peso, se llevaron acabo estudios de optimización topológica y análisis estático por técnicas de elementos finitos, buscando encontrar el factor de seguridad menor posible, es decir no sobrediseñar.

Se realiza un análisis gráfico (vectorial) de las cargas (condiciones de operación) a soportar por los dedos del griper. Se parte de una apertura de 30° sin tomar las botellas y se lleva a una apertura de 22° al tomar (agarrar) cada una de las cervezas.

![image](https://github.com/user-attachments/assets/dd87efb8-437a-474a-9259-0fb8e6b16ea2)

Análisis estático (factor de seguridad).

![image](https://github.com/user-attachments/assets/1525621e-1357-41e2-af1e-759128811353)

**Efector Final.**

![image](https://github.com/user-attachments/assets/eca96de1-7228-42b5-87ed-5fe0eaebdc74)

**Gripper para Bandeja tipo Palet:** se diseña un efector que tome la bandeja con tres envases y los transporte.

![image](https://github.com/user-attachments/assets/2e8410d0-ccc4-465d-afcc-e7646c8cb3bc)

**Interacción con Robotstudio (RS):** Los efectores (herramientas a crear en RS) se convierten a formato *.OBJ. Se consulta en AIP parámetros de peso, centro de masa (gravedad) y momentos de inercia.

## Fabricación

**Manufactura Aditiva:**

Se convierten a formato *.STL dedos y gripers.

Nota, Los agujeros son máquinados con posterioridad a la impresión.

**Carpinteria:**

Con la orientación de los planos mostratos a continuación se fabrica la **Bandeja.**

**Ensamble:**

![image](https://github.com/user-attachments/assets/d17fada9-58e8-438c-a7d4-9ddbc329b30d)

**Despiece:**

![image](https://github.com/user-attachments/assets/bbf881f7-c08d-4884-acbc-b18e4cb48c71)

![image](https://github.com/user-attachments/assets/7f5455e9-aae3-4786-a305-cbaafd09a814)

![image](https://github.com/user-attachments/assets/677fe986-7daa-44bc-9698-3a275baeab73)

**Metal-mecánica:**

Se fabrican las guías ....
