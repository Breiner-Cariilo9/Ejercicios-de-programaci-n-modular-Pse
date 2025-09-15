// ========== FUNCIONES ==========

// Función para leer datos del producto
Funcion LeerDatosProducto(precio Por Referencia, cantidad Por Referencia)
    Escribir "=== INGRESO DE DATOS ==="
    Escribir "Ingrese el precio unitario del producto:"
    Leer precio
    Escribir "Ingrese la cantidad a comprar:"
    Leer cantidad
    
    // Validación básica
    Mientras precio <= 0 O cantidad <= 0 Hacer
        Escribir "Error: El precio y la cantidad deben ser mayores que cero"
        Escribir "Ingrese el precio unitario:"
        Leer precio
        Escribir "Ingrese la cantidad:"
        Leer cantidad
    FinMientras
FinFuncion

// Función para calcular subtotal, IVA y total
Funcion total <- CalcularTotalConIVA(precio, cantidad, subtotal Por Referencia, iva Por Referencia)
    Definir porcentajeIVA Como Real
    porcentajeIVA <- 19  // 19% de IVA
    
    subtotal <- precio * cantidad
    iva <- subtotal * (porcentajeIVA / 100)
    total <- subtotal + iva
FinFuncion

// Función para mostrar factura detallada
Funcion MostrarFactura(precio, cantidad, subtotal, iva, total)
    Escribir ""
    Escribir "=== FACTURA DETALLADA ==="
    Escribir "----------------------------"
    Escribir "Precio unitario:    $", precio
    Escribir "Cantidad:           ", cantidad, " unidades"
    Escribir "----------------------------"
    Escribir "Subtotal:          $", subtotal
    Escribir "IVA (19%):         $", iva
    Escribir "----------------------------"
    Escribir "TOTAL A PAGAR:     $", total
    Escribir "----------------------------"
    
    // Análisis adicional
    Si total > 1000 Entonces
        Escribir "💰 Compra de alto valor"
    SiNo
        Si total > 100 Entonces
            Escribir "🛒 Compra moderada"
        SiNo
            Escribir "🛍️ Compra pequeña"
        FinSi
    FinSi
FinFuncion

// ========== PROGRAMA PRINCIPAL ==========

Algoritmo CalculoTotalIVA
    Definir precio, cantidad, subtotal, iva, total Como Real
    
    Escribir "=== CALCULADORA DE TOTAL CON IVA ==="
    Escribir "Programa para calcular el total de una compra incluyendo IVA del 19%"
    Escribir ""
    
    LeerDatosProducto(precio, cantidad)
    total <- CalcularTotalConIVA(precio, cantidad, subtotal, iva)
    MostrarFactura(precio, cantidad, subtotal, iva, total)
    
    Escribir ""
    Escribir "¡Gracias por usar la calculadora!"
    
FinAlgoritmo
