# minitalk - gmacias-
El propósito de este proyecto es crear un pequeño programa de intercambio de datos utilizando señales UNIX.

### Indice
* [Que es minitalk?](#que-es-minitalk)
* [Que utilizamos?](#que-utilizamos)
* [Como funciona?](#como-funciona)

### Que es minitalk?
Este proyecto consiste en la creacion de un juego 2D, donde debes recoger todos los consumibles y escapar en la menor cantidad de movimientos posibles de un mapa creado por ti mismo!

En el siguiente ejemplo tenemos los siguientes componentes del mapa:

*1111111  
1**P**0**C**0**E**1  
1111111*  

◦ '1': Paredes, para poder jugar todo el mapa debe estar rodeado de ellos.

◦ 'P': Será el jugador y solo podra haber uno en todo el mapa.

◦ 'E': Será la salida y solo podra haber uno en todo el mapa.

◦ 'C': Los consumibles, podran haber tantos como gustes (minimo 1) y deberan ser alcanzables en todo momento.

***Cabe recalcar que el mapa debe ser realizable en todo momento, en caso de que sea imposible, retornara error.***  

Por último estos serán los siguientes controles:
|TECLA|ACCIÓN|
|---|---|
|`W`|Mover el personaje hacia arriba|
|`A`|Mover el personaje hacia la izquierda|
|`S`|Mover el personaje hacia abajo|
|`D` |Mover el personaje hacia la derecha|
|`ESC`|Cierra el juego sin **memory leaks**|

### Que utilizamos?
En nuestro **so_long** tenemos solo las siguentes funciones de librerias externas autorizadas:

| Función  | Descripción														 			|
|-------|-----------------------------------------------------------------------------------|
| malloc | Solicitar un bloque de memoria del tamaño suministrado como parámetro.     													|
| free | Desasigna un bloque de memoria que se había asignado previamente mediante una llamada. 											|
| write | Hace que los bytes que indiques del buffer sean escritos en el file descriptor seleccionado.								|
| open |  Abre el archivo del sistema seleccionado.													|
| close |  Cierra el archivo del sistema seleccionado.               											|
| read |  Lee el contenido del archivo del sistema seleccionado.               									|
| exit | Finaliza inmediatamente el programa liberando la memoria dinamica asignada        |

Tambien necesitaremos **OBLIGATORIAMENTE** la libreria *minilibx* para este proyecto.

### Como funciona?

Para compilar el programa seguimos los siguientes pasos:

	git clone https://github.com/gjmacias/so_long
	cd so_long
	make
Luego ejecutamos el programa pasandole de parametro la ubicacion del archivo del mapa:

	./so_long maps/map.ber

¡Y eso seria todo!¡Estas liso para jugar!

# Quizás pueda interesarte!

### - Para ver mi progresion en 42 🌠
[AQUÍ](https://github.com/gjmacias/42BCN)

### - Mi perfil de 42 👾
[AQUÍ](https://profile.intra.42.fr/users/gmacias-)

### - Mis proyectos personales 🧐
[AQUÍ🗒️](https://github.com/gjmacias/autoproyectos)

# Contacto 📥

◦ Email: gmacias-@student.42barcelona.com

[1]: https://www.42barcelona.com/ "42 BCN"
