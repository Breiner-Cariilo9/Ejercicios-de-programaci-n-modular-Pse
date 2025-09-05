Algoritmo Ejercicio1_suma
	Escribir "Calculadora de suma [5 numeros]"
	dato_suma1 <- tomar_suma1
	dato_suma2 <- tomar_suma2
	dato_suma3 <- tomar_suma3
	dato_suma4 <- tomar_suma4
	dato_suma5 <- tomar_suma5
	X <-tomar_num(dato_suma1, dato_suma2, dato_suma3, dato_suma4, dato_suma5)
FinAlgoritmo

Funcion suma1 <- tomar_suma1
	Definir suma1 Como Real
	Escribir "Digite un numero ";
	Leer suma1;
FinFuncion

Funcion suma2 <- tomar_suma2
	Definir suma2 Como Real
	Escribir "Digite un numero ";
	Leer suma2;
FinFuncion

Funcion suma3 <- tomar_suma3
	Definir suma3 Como Real
	Escribir "Digite un numero ";
	Leer suma3;
FinFuncion

Funcion suma4 <- tomar_suma4
	Definir suma4 Como Real
	Escribir "Digite un numero ";
	Leer suma4;
FinFuncion

Funcion suma5 <- tomar_suma5
	Definir suma5 Como Real
	Escribir "Digite un numero ";
	Leer suma5;
FinFuncion

Funcion sumas <- tomar_num(dato_suma1, dato_suma2, dato_suma3, dato_suma4, dato_suma5)
	sumas <- dato_suma1 + dato_suma2 + dato_suma3 + dato_suma4 + dato_suma5
	Escribir "La suma total de los numeros asignados es de ", sumas
	
FinFuncion