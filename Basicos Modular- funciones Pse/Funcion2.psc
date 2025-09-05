Algoritmo Funcion2
	Dato_edad <- tomar_edad
	Dato_mensaje <- Crear_saludo(Dato_edad)
	Imprimir (Dato_mensaje)
FinAlgoritmo

Funcion EdadCliente <- tomar_edad
	Definir EdadCliente Como Cadena
	Escribir "¿Cual es su edad? ";
	Leer EdadCliente
FinFuncion

Funcion mensaje <- Crear_saludo(Dato_edad)
	
	mensaje <- "Tu edad es " + Dato_edad

FinFuncion

Funcion imprimir_saludo(dato_saludo)
	Escribir dato_saludo
FinFuncion

	