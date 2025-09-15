// ========== FUNCIONES ==========

// Función para validar y leer el precio original
Funcion precio <- LeerPrecioOriginal()
    Escribir "Ingrese el precio original del producto:"
    Leer precio
    
    Mientras precio <= 0 Hacer
        Escribir "Error: El precio debe ser mayor que cero"
        Escribir "Ingrese el precio original:"
        Leer precio
    FinMientras
FinFuncion

// Función para calcular descuento y precio final
Funcion precioFinal <- CalcularDescuento(precioOriginal, porcentajeDescuento, montoDescuento Por Referencia)
    montoDescuento <- precioOriginal * (porcentajeDescuento / 100)
    precioFinal <- precioOriginal - montoDescuento
FinFuncion

// Función para mostrar resumen de descuento
Funcion MostrarResumenDescuento(precioOriginal, porcentajeDescuento, montoDescuento, precioFinal)
    Escribir ""
    Escribir "=== RESUMEN DE DESCUENTO ==="
    Escribir "--------------------------------"
    Escribir "Precio original:     $", precioOriginal
    Escribir "Descuento (%s%):      $", porcentajeDescuento, montoDescuento
    Escribir "--------------------------------"
    Escribir "PRECIO FINAL:        $", precioFinal
    Escribir "--------------------------------"
    Escribir "Ahorro obtenido:     $", montoDescuento
    
    // Análisis del descuento
    Si porcentajeDescuento >= 50 Entonces
        Escribir "🎉 ¡SÚPER DESCUENTO! Más del 50% de ahorro"
    SiNo
        Si porcentajeDescuento >= 30 Entonces
            Escribir "🛍️ ¡Buen descuento! Ahorro considerable"
        SiNo
            Si porcentajeDescuento >= 10 Entonces
                Escribir "💰 Descuento moderado"
            SiNo
                Escribir "💸 Descuento pequeño"
            FinSi
        FinSi
    FinSi
FinFuncion

// ========== PROGRAMA PRINCIPAL ==========

Algoritmo CalculadorDescuento
    Definir precioOriginal, porcentajeDescuento, montoDescuento, precioFinal Como Real
    
    Escribir "=== CALCULADORA DE DESCUENTOS ==="
    Escribir "Programa para calcular descuentos y precio final"
    Escribir ""
    
    precioOriginal <- LeerPrecioOriginal()
    
    Escribir "Ingrese el porcentaje de descuento (ejemplo: 20 para 20%):"
    Leer porcentajeDescuento
    
    Mientras porcentajeDescuento < 0 O porcentajeDescuento > 100 Hacer
        Escribir "Error: El porcentaje debe estar entre 0 y 100"
        Escribir "Ingrese el porcentaje de descuento:"
        Leer porcentajeDescuento
    FinMientras
    
    precioFinal <- CalcularDescuento(precioOriginal, porcentajeDescuento, montoDescuento)
    MostrarResumenDescuento(precioOriginal, porcentajeDescuento, montoDescuento, precioFinal)
    
    Escribir ""
    Escribir "¡Gracias por usar la calculadora de descuentos!"
    
FinAlgoritmo
