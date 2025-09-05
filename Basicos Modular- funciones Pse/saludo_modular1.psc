	//tomar nombre
	Funcion nom <- leerNombre(nombre)
		Definir nom Como Cadena
		Escribir "Ingrese su nombre: "
		Leer nom
FinFuncion
//tomar apellido
Funcion ape <- leerApellido(apellido)
	Definir ape Como Cadena
	Escribir "Ingrese su apellido: "
	Leer ape
FinFuncion
//saludo
Funcion sal <- saludar(nombre, apellido)
	Definir saludos Como Cadena
	sal <- "Buenos días, " + nombre + " " + apellido
FinFuncion
//Proceso 
Algoritmo saludo_modular
	Definir nombre, apellido, sal Como Cadena
	
	nombre <- leerNombre(nombre)
	apellido <- leerApellido(apellido)
	sal <- saludar(nombre, apellido)
	
	Escribir sal
FinAlgoritmo
