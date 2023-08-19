# minitalk - gmacias-
El propósito de este proyecto es crear un pequeño programa de intercambio de datos utilizando señales UNIX.

### Indice
* [Que es minitalk?](#que-es-minitalk)
* [Que utilizamos?](#que-utilizamos)
* [Como funciona?](#como-funciona)

### Que es minitalk?

minitalk es un projecto de [42][1] donde creamos un programa el cual consiste de un servidor y un cliente. este enviará
datos mediante dos señales; SIGUSR1 y SIGUSR2. 

Estas se encargaran de codificar y decodificar el mensaje mientras que la comunicación entre servidor y cliente se hará mediante un PID.

### Que utilizamos?
En nuestro **minitalk** tenemos  las siguentes funciones de librerias externas autorizadas:

| Función  | Descripción														 			|
|-------|-----------------------------------------------------------------------------------|
| malloc | Solicitar un bloque de memoria del tamaño suministrado como parámetro.     													|
| free | Desasigna un bloque de memoria que se había asignado previamente mediante una llamada. 											|
| write | Hace que los bytes que indiques del buffer sean escritos en el file descriptor seleccionado.								|
| signal |  Gestiona las señales asincronas													|
| getpid |  Se utiliza para obtener el ID de proceso (PID)               											|
| kill | Envia señales a procesos específicos, permitiendo controlar y comunicarse con ellos           							|
| usleep |  Suspende la ejecución de un programa por un período de tiempo expresado en microsegundos.               									|
| exit | Finaliza inmediatamente el programa liberando la memoria dinamica asignada        |


### Como funciona?

Para compilar el programa seguimos los siguientes pasos:

	git clone https://github.com/gjmacias/minitalk
	cd minitalk
	make
 
Luego ejecutamos en una terminal el server:

	./server
 
Este te dará el PID para comunicarse con los clientes:

	SUCCESS!, Server is ready :D! The PID: *VWXYZ*

 Luego ejecutamos desde **OTRA** terminal el client y le añadimos los parametros de PID y los parametros a pasar:

	./client *VWXYZ* "soy un comentario que voy a pasar del cliente al servidor" 
 	👇🏼	👇🏼	👇🏼	👇🏼	👇🏼	👇🏼	👇🏼	👇🏼	👇🏼	👇🏼
	./server soy un comentario que voy a pasar del cliente al servidor


¡Y eso seria todo!

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
