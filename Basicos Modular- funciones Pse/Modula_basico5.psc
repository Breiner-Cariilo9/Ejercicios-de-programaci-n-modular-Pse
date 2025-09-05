Algoritmo Modula_basico5
	dato_edad <- tomar_edad
	dato_saludo <- saludar(dato_edad)
	dato_mesaje <- mensajee(dato_saludo)
	Imprimir dato_mesaje
FinAlgoritmo

Funcion edad <- tomar_edad
	Definir edad Como Cadena
	Escribir "¿Que edad tiene usted? ";
	Leer edad
FinFuncion

Funcion Proce_saludo <- saludar(dato_edad)
	Proce_saludo <- "Tu edad es de " + dato_edad + " años.";
FinFuncion

Funcion ImprimirMensaje <- mensajee(dato_saludo)
	Escribir dato_saludo;
	Escribir " "
	Escribir "Hasta luego";
	
FinFuncion



	