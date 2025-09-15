// PROGRAMA 2: MENÚ DE COMIDAS RÁPIDAS

Funcion MostrarMenu()
    Escribir "=== MENÚ DE COMIDAS RÁPIDAS ==="
    Escribir "1. Hamburguesa - $15000"
    Escribir "2. Pizza Personal - $18000"
    Escribir "3. Perro Caliente - $8000"
    Escribir "4. Papas Fritas - $6000"
    Escribir "5. Gaseosa - $3000"
    Escribir "6. Combo Completo - $25000"
    Escribir "================================="
FinFuncion

Funcion precio <- ObtenerPrecio(opcion)
    Segun opcion Hacer
        1: precio <- 15000
        2: precio <- 18000
        3: precio <- 8000
        4: precio <- 6000
        5: precio <- 3000
        6: precio <- 25000
        De Otro Modo: precio <- 0
    FinSegun
FinFuncion

Funcion nombre <- ObtenerNombreProducto(opcion)
    Segun opcion Hacer
        1: nombre <- "Hamburguesa"
        2: nombre <- "Pizza Personal"
        3: nombre <- "Perro Caliente"
        4: nombre <- "Papas Fritas"
        5: nombre <- "Gaseosa"
        6: nombre <- "Combo Completo"
        De Otro Modo: nombre <- "Producto no válido"
    FinSegun
FinFuncion

Funcion MostrarResumen(totalPedido, listaPedidos)
    Escribir ""
    Escribir "=== RESUMEN DEL PEDIDO ==="
    Escribir listaPedidos
    Escribir "TOTAL A PAGAR: $", totalPedido
    Escribir "¡Gracias por su compra!"
    Escribir "=========================="
FinFuncion

Algoritmo MenuComidasRapidas
    Definir opcion Como Entero
    Definir totalPedido, precio Como Real
    Definir continuar Como Caracter
    Definir listaPedidos, nombreProducto Como Caracter
    
    totalPedido <- 0
    listaPedidos <- ""
    
    Escribir "¡Bienvenido a nuestro restaurante!"
    
    Repetir
        MostrarMenu()
        
        Repetir
            Escribir "Seleccione una opción (1-6): "
            Leer opcion
            Si opcion < 1 O opcion > 6 Entonces
                Escribir "Opción no válida. Por favor, seleccione entre 1 y 6."
            FinSi
        Hasta Que opcion >= 1 Y opcion <= 6
        
        nombreProducto <- ObtenerNombreProducto(opcion)
        precio <- ObtenerPrecio(opcion)
        
        totalPedido <- totalPedido + precio
        listaPedidos <- listaPedidos + "- " + nombreProducto + " = $" + ConvertirATexto(precio) + "\n"
        
        Escribir "Agregado: ", nombreProducto, " - $", precio
        Escribir "Subtotal: $", totalPedido
        
        Repetir
            Escribir "¿Desea agregar otro producto? (s/n): "
            Leer continuar
            Si continuar <> "s" Y continuar <> "S" Y continuar <> "n" Y continuar <> "N" Entonces
                Escribir "Por favor, ingrese 's' para sí o 'n' para no."
            FinSi
        Hasta Que continuar = "s" O continuar = "S" O continuar = "n" O continuar = "N"
        
    Hasta Que continuar = "n" O continuar = "N"
    
    MostrarResumen(totalPedido, listaPedidos)
    
FinAlgoritmo
