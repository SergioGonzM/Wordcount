De acuerdo a cada una de las tablas y diagramas mostrados en el siguiente reporte: https://www.dropbox.com/s/7rkoes01h984hjg/Diagnóstico%20MachineCorpz%20%28telcom%29%20v1.0.pdf?dl=0.

¿Como se puede obtener cada una de las tablas y diagramas?

### Tabla 1. Líneas de código efectivas y lenguaje de programación

Haciendo una busqueda encontre la herramienta cloc que puede ayudar para este proposito, despues de instalarla solo se ejecuta el comando:
```text 
cloc directory_name
```
y nos mostrara los lenguajes que se ocuparon en este proyecto asi como las lineas efectivas de codigo sin contar los espacios en blanco.
![image](https://user-images.githubusercontent.com/99292588/169403432-a5942c83-71c4-4769-aa68-9515ae098090.png)


### Figura 1. Grafo de dependencias entre los distintos repositorios

Para realizar este diagrama se puede analizar el archivo mix.exs de cada proyecto para observar cuales dependencias estan agregadas al proyecto, para 
diferenciar las dependendias que no son de terceros. Tambien esta el comando: ```èlixir mix deps.tree```
que nos ayudara a observar como estan relacionadas las dependencias dentro de nuestro proyecto, aunque la unica desventaja es que tambien muestra las dependencias de terceros.

![image](https://user-images.githubusercontent.com/99292588/169404063-f0cad417-8be9-4887-b1a8-253110f7aaef.png)


### Tabla 2. Metricas de pruebas por proyecto
Para ver el numero de pruebas realizadas se utiliza el comando:```elixir mix test```
Para realizar la cobertura de las pruebas de nuestro codigo se utiliza la libreria excoveralls con el comando: ```elixirmix coveralls```
![image](https://user-images.githubusercontent.com/99292588/169404363-256981bf-942c-4fcb-9b8b-ded43a71b277.png)


### Tabla 3. Warnings de compilacion por proyecto
Para saber el número los warnings de compilación por cada proyecto se puede utilizar el comando: ```elixir mix compile```
![image](https://user-images.githubusercontent.com/99292588/169404602-8c39c900-7e05-42e6-a19f-f4294865846a.png)

### Tabla 4. Conteo de warnings clasificados por tipo. 
Para sacar esta tabla se ejecuta la instrucción ```elixir mix compile``` y nos despliega los warnings que existen en el proyecto, se pueden clasificar por el tipo de warning que nos muestra cada uno. 
Los que pueden ser potencialmente bugs son las funciones que dependen de alguna otra función o variable.

![image](https://user-images.githubusercontent.com/99292588/169404997-67ee5b00-5b05-4aac-ad21-d44d7e91b9c7.png)


### Tabla 5. Hallazgos de calidad encontrados con herramientas de analisis
Esta tabla se puede llenar con la información que es proporcionada por el comando mix credo -a. Esta librería nos sera de ayuda para saber que inconsistencias se encuentran en el código y cuales son la oportunidades para mejorarlo. 

![image](https://user-images.githubusercontent.com/99292588/169405107-d516f7b1-68d4-429c-9545-d77bd44ad0ef.png)

### Tabla 6. Lineas de accion propuestas:

Según el diagnostico que se haya realizado durante todo el proyecto, con las herramientas que fueron mencionadas previamente, se establecen lineas de accion a tomar para el proyecto, ademas dependiendo de los conocimientos y habilidades del desarrollador se añaden mas acciones que pueden ser de utilidad en el proyecto. Los dias de esfuerzo se pueden medir de acuerdo a las habilidades del desarrollador(es) y la complejidad de la tarea. 

