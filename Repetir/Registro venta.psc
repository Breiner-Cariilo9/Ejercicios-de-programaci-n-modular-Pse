// PROGRAMA 6: REGISTRO DE VENTAS

Funcion producto <- SolicitarProducto(numeroVenta)
    Definir producto Como Caracter
    Escribir "Ingrese el nombre del producto #", numeroVenta, ": "
    Leer producto
FinFuncion

Funcion precio <- SolicitarPrecio()
    Definir precio Como Real
    Repetir
        Escribir "Ingrese el precio del producto: $"
        Leer precio
        Si precio <= 0 Entonces
            Escribir "El precio debe ser mayor que cero."
        FinSi
    Hasta Que precio > 0
FinFuncion

Funcion ActualizarEstadisticas(precio, Por Referencia totalVentas, Por Referencia cantidadProductos)
    totalVentas <- totalVentas + precio
    cantidadProductos <- cantidadProductos + 1
FinFuncion

Funcion MostrarResumenVentas(totalVentas, listaProductos, cantidadProductos)
    Definir promedioVenta Como Real
    
    Escribir ""
    Escribir "=== RESUMEN DE VENTAS ==="
    Escribir "PRODUCTOS VENDIDOS:"
    Escribir listaProductos
    Escribir "Cantidad total de productos: ", cantidadProductos
    Escribir "Monto total de ventas: $", totalVentas
    
    Si cantidadProductos > 0 Entonces
        promedioVenta <- totalVentas / cantidadProductos
        Escribir "Precio promedio por producto: $", promedioVenta
    FinSi
    
    Escribir "¡Gracias por usar el sistema de ventas!"
    Escribir "========================"
FinFuncion

Algoritmo RegistroVentas
    Definir producto, listaProductos, continuar Como Caracter
    Definir precio, totalVentas Como Real
    Definir cantidadProductos Como Entero
    
    totalVentas <- 0
    cantidadProductos <- 0
    listaProductos <- ""
    
    Escribir "=== SISTEMA DE REGISTRO DE VENTAS ==="
    Escribir ""
    
    Repetir
        Escribir "--- NUEVA VENTA ---"
        
        producto <- SolicitarProducto(cantidadProductos + 1)
        precio <- SolicitarPrecio()
        
        ActualizarEstadisticas(precio, totalVentas, cantidadProductos)
        
        // Agregar al acumulador de texto
        listaProductos <- listaProductos + "- " + producto + " = $" + ConvertirATexto(precio) + "\n"
        
        Escribir "Venta registrada: ", producto, " - $", precio
        Escribir "Total acumulado: $", totalVentas
        Escribir ""
        
        Repetir
            Escribir "¿Desea registrar otra venta? (s/n): "
            Leer continuar
            Si continuar <> "s" Y continuar <> "S" Y continuar <> "n" Y continuar <> "N" Entonces
                Escribir "Por favor, ingrese 's' para sí o 'n' para no."
            FinSi
        Hasta Que continuar = "s" O continuar = "S" O continuar = "n" O continuar = "N"
        
    Hasta Que continuar = "n" O continuar = "N"
    
    MostrarResumenVentas(totalVentas, listaProductos, cantidadProductos)
    
FinAlgoritmo
