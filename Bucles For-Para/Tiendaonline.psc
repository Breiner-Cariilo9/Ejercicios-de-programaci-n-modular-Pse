// PROGRAMA 5: PROCESO DE VENTAS EN TIENDA

Funcion numeroVentas <- SolicitarCantidadVentas()
    Definir numeroVentas Como Entero
    Repetir
        Escribir "¿Cuántas ventas desea registrar?: "
        Leer numeroVentas
        Si numeroVentas <= 0 Entonces
            Escribir "El número de ventas debe ser mayor que cero."
        FinSi
    Hasta Que numeroVentas > 0
FinFuncion

Funcion producto <- SolicitarProducto(numeroVenta)
    Definir producto Como Caracter
    Escribir "Ingrese el nombre del producto para la venta #", numeroVenta, ": "
    Leer producto
FinFuncion

Funcion precio <- SolicitarPrecio()
    Definir precio Como Real
    Repetir
        Escribir "Ingrese el precio unitario: $"
        Leer precio
        Si precio <= 0 Entonces
            Escribir "El precio debe ser mayor que cero."
        FinSi
    Hasta Que precio > 0
FinFuncion

Funcion cantidad <- SolicitarCantidad()
    Definir cantidad Como Entero
    Repetir
        Escribir "Ingrese la cantidad vendida: "
        Leer cantidad
        Si cantidad <= 0 Entonces
            Escribir "La cantidad debe ser mayor que cero."
        FinSi
    Hasta Que cantidad > 0
FinFuncion

Funcion MostrarReporteVentas(listaVentas, totalVentas, totalProductos, ventaMayor)
    Definir promedioVenta Como Real
    
    Escribir ""
    Escribir "=== REPORTE DE VENTAS DEL DÍA ==="
    Escribir "DETALLE DE VENTAS:"
    Escribir listaVentas
    Escribir "Total de transacciones: ", totalProductos
    Escribir "MONTO TOTAL DE VENTAS: $", totalVentas
    
    Si totalProductos > 0 Entonces
        promedioVenta <- totalVentas / totalProductos
        Escribir "VENTA PROMEDIO: $", promedioVenta
    FinSi
    
    Escribir "VENTA MAYOR: $", ventaMayor
    Escribir "¡Reporte generado exitosamente!"
    Escribir "================================="
FinFuncion

Algoritmo ProcesoVentasTienda
    Definir numeroVentas, totalProductos, cantidad Como Entero
    Definir producto, listaVentas Como Caracter
    Definir precio, totalVenta, totalVentas, ventaMayor Como Real
    Definir i Como Entero
    
    totalVentas <- 0
    totalProductos <- 0
    ventaMayor <- 0
    listaVentas <- ""
    
    Escribir "=== SISTEMA DE REGISTRO DE VENTAS ==="
    Escribir ""
    
    numeroVentas <- SolicitarCantidadVentas()
    
    Para i <- 1 Hasta numeroVentas Con Paso 1 Hacer
        Escribir ""
        Escribir "--- VENTA #", i, " ---"
        
        producto <- SolicitarProducto(i)
        precio <- SolicitarPrecio()
        cantidad <- SolicitarCantidad()
        
        // Calcular total de esta venta
        totalVenta <- precio * cantidad
        totalVentas <- totalVentas + totalVenta
        totalProductos <- totalProductos + cantidad
        
        // Verificar si es la venta mayor
        Si totalVenta > ventaMayor Entonces
            ventaMayor <- totalVenta
        FinSi
        
        // Agregar al reporte
        listaVentas <- listaVentas + i + ". " + producto + " - Cant: " + ConvertirATexto(cantidad) + " - Precio: $" + ConvertirATexto(precio) + " - Total: $" + ConvertirATexto(totalVenta) + "\n"
        
        Escribir "Venta registrada: ", producto
        Escribir "Cantidad: ", cantidad, " - Precio unitario: $", precio
        Escribir "Total de esta venta: $", totalVenta
        Escribir "Total acumulado: $", totalVentas
        
    FinPara
    
    MostrarReporteVentas(listaVentas, totalVentas, totalProductos, ventaMayor)
    
FinAlgoritmo
