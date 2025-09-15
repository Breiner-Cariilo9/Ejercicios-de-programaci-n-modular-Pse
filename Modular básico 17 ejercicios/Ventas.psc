// EJERCICIO 14: Sumar unidades vendidas por tres productos diferentes y el total a pagar

Funcion subtotal <- CalcularSubtotal(unidades, precio)
    subtotal <- unidades * precio
FinFuncion

Funcion totalGeneral <- SumarTotales(subtotal1, subtotal2, subtotal3)
    totalGeneral <- subtotal1 + subtotal2 + subtotal3
FinFuncion

Algoritmo VentasTresProductos
    Definir unidades1, precio1, unidades2, precio2, unidades3, precio3 Como Real
    Definir subtotal1, subtotal2, subtotal3, totalVentas, totalUnidades Como Real
    
    Escribir "=== SISTEMA DE VENTAS - TRES PRODUCTOS ==="
    Escribir ""
    
    // Producto 1
    Escribir "PRODUCTO 1:"
    Escribir "Ingrese las unidades vendidas:"
    Leer unidades1
    Escribir "Ingrese el precio unitario:"
    Leer precio1
    
    // Producto 2
    Escribir ""
    Escribir "PRODUCTO 2:"
    Escribir "Ingrese las unidades vendidas:"
    Leer unidades2
    Escribir "Ingrese el precio unitario:"
    Leer precio2
    
    // Producto 3
    Escribir ""
    Escribir "PRODUCTO 3:"
    Escribir "Ingrese las unidades vendidas:"
    Leer unidades3
    Escribir "Ingrese el precio unitario:"
    Leer precio3
    
    // Calcular subtotales
    subtotal1 <- CalcularSubtotal(unidades1, precio1)
    subtotal2 <- CalcularSubtotal(unidades2, precio2)
    subtotal3 <- CalcularSubtotal(unidades3, precio3)
    
    // Calcular totales
    totalVentas <- SumarTotales(subtotal1, subtotal2, subtotal3)
    totalUnidades <- unidades1 + unidades2 + unidades3
    
    // Mostrar factura
    Escribir ""
    Escribir "=== FACTURA DE VENTA ==="
    Escribir "Producto 1: ", unidades1, " unidades x $", precio1, " = $", subtotal1
    Escribir "Producto 2: ", unidades2, " unidades x $", precio2, " = $", subtotal2
    Escribir "Producto 3: ", unidades3, " unidades x $", precio3, " = $", subtotal3
    Escribir "----------------------------------------"
    Escribir "Total unidades vendidas: ", totalUnidades
    Escribir "TOTAL A PAGAR: $", totalVentas
    
    // Producto más vendido
    Escribir ""
    Si unidades1 > unidades2 Y unidades1 > unidades3 Entonces
        Escribir "Producto más vendido: Producto 1"
    SiNo
        Si unidades2 > unidades1 Y unidades2 > unidades3 Entonces
            Escribir "Producto más vendido: Producto 2"
        SiNo
            Si unidades3 > unidades1 Y unidades3 > unidades2 Entonces
                Escribir "Producto más vendido: Producto 3"
            SiNo
                Escribir "Hay empate en ventas entre productos"
            FinSi
        FinSi
    FinSi
    
FinAlgoritmo
