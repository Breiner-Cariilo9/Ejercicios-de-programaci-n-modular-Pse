// PROGRAMA 2: TIENDA VIRTUAL

Funcion cantidadProductos <- SolicitarCantidadProductos()
    Definir cantidadProductos Como Entero
    Repetir
        Escribir "¿Cuántos productos desea agregar al carrito?: "
        Leer cantidadProductos
        Si cantidadProductos <= 0 Entonces
            Escribir "La cantidad de productos debe ser mayor que cero."
        FinSi
    Hasta Que cantidadProductos > 0
FinFuncion

Funcion nombre <- SolicitarNombreProducto(numeroProducto)
    Definir nombre Como Caracter
    Escribir "Ingrese el nombre del producto #", numeroProducto, ": "
    Leer nombre
FinFuncion

Funcion precio <- SolicitarPrecioProducto()
    Definir precio Como Real
    Repetir
        Escribir "Ingrese el precio del producto: $"
        Leer precio
        Si precio <= 0 Entonces
            Escribir "El precio debe ser mayor que cero."
        FinSi
    Hasta Que precio > 0
FinFuncion

Funcion MostrarFactura(carritoCompras, totalCompra, cantidadItems)
    Escribir ""
    Escribir "=== FACTURA DE COMPRA ==="
    Escribir "PRODUCTOS EN EL CARRITO:"
    Escribir carritoCompras
    Escribir "Cantidad total de items: ", cantidadItems
    Escribir "TOTAL A PAGAR: $", totalCompra
    Escribir "¡Gracias por su compra!"
    Escribir "========================="
FinFuncion

Algoritmo TiendaVirtual
    Definir cantidadProductos Como Entero
    Definir nombreProducto, carritoCompras Como Caracter
    Definir precio, totalCompra Como Real
    Definir i Como Entero
    
    totalCompra <- 0
    carritoCompras <- ""
    
    Escribir "=== BIENVENIDO A LA TIENDA VIRTUAL ==="
    Escribir ""
    
    cantidadProductos <- SolicitarCantidadProductos()
    
    Para i <- 1 Hasta cantidadProductos Con Paso 1 Hacer
        Escribir ""
        Escribir "--- PRODUCTO #", i, " ---"
        
        nombreProducto <- SolicitarNombreProducto(i)
        precio <- SolicitarPrecioProducto()
        
        // Agregar al carrito
        carritoCompras <- carritoCompras + i + ". " + nombreProducto + " - $" + ConvertirATexto(precio) + "\n"
        totalCompra <- totalCompra + precio
        
        Escribir "Producto agregado: ", nombreProducto, " - $", precio
        Escribir "Subtotal actual: $", totalCompra
        
    FinPara
    
    MostrarFactura(carritoCompras, totalCompra, cantidadProductos)
    
FinAlgoritmo
