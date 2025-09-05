Algoritmo Modular_basico3
	Dato_producto <- Tomar_producto
	Dato_precio <- tomar_precio
	Dato_mensaje <- Crear_mensaje(Dato_producto, Dato_precio)
	Imprimir (Dato_mensaje)
FinAlgoritmo

Funcion Producto <- Tomar_producto
	Definir Producto Como Cadena
	Escribir "Escribe el Producto a asignar ";
	Leer Producto
FinFuncion

Funcion Precio <- tomar_precio
	Definir Precio Como Cadena
	Escribir "Asigne el precio del prodcuto asignado ";
	Leer Precio;
FinFuncion

Funcion mensaje <- Crear_mensaje(Dato_producto, Dato_precio)
	
	mensaje <- "El Precio del Producto " + Dato_producto + " es de " + Dato_precio
	
FinFuncion

Funcion saludo
	Imprimir Dato_mensaje
FinFuncion


