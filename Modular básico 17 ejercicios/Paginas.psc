// EJERCICIO 17: Calcular el costo de impresión basado en páginas y precio por página

Funcion costoTotal <- CalcularCostoImpresion(numPaginas, costoPorPagina)
    costoTotal <- numPaginas * costoPorPagina
FinFuncion

Funcion descuento <- CalcularDescuentoPorVolumen(numPaginas)
    Si numPaginas >= 100 Entonces
        descuento <- 0.15  // 15% de descuento
    SiNo
        Si numPaginas >= 50 Entonces
            descuento <- 0.10  // 10% de descuento
        SiNo
            Si numPaginas >= 20 Entonces
                descuento <- 0.05  // 5% de descuento
            SiNo
                descuento <- 0     // Sin descuento
            FinSi
        FinSi
    FinSi
FinFuncion

Algoritmo CostoImpresion
    Definir numPaginas Como Entero
    Definir costoPorPagina, costoBase, descuento, montoDescuento, costoFinal Como Real
    Definir tipoImpresion Como Caracter
    
    Escribir "=== CALCULADORA DE COSTO DE IMPRESIÓN ==="
    Escribir ""
    
    Escribir "Ingrese el número de páginas a imprimir:"
    Leer numPaginas
    
    Escribir "Tipo de impresión:"
    Escribir "1. Blanco y Negro"
    Escribir "2. Color"
    Escribir "Seleccione el tipo (1 o 2):"
    Leer tipoImpresion
    
    // Definir costo por página según el tipo
    Si tipoImpresion = "1" Entonces
        costoPorPagina <- 0.10  // 10 centavos por página B/N
        Escribir "Tipo seleccionado: Blanco y Negro"
    SiNo
        costoPorPagina <- 0.25  // 25 centavos por página color
        Escribir "Tipo seleccionado: Color"
    FinSi
    
    // Calcular costo base
    costoBase <- CalcularCostoImpresion(numPaginas, costoPorPagina)
    
    // Calcular descuento por volumen
    descuento <- CalcularDescuentoPorVolumen(numPaginas)
    montoDescuento <- costoBase * descuento
    costoFinal <- costoBase - montoDescuento
    
    // Mostrar cotización detallada
    Escribir ""
    Escribir "=== COTIZACIÓN DE IMPRESIÓN ==="
    Escribir "Número de páginas: ", numPaginas
    Escribir "Costo por página: $", costoPorPagina
    Escribir "Subtotal: $", costoBase
    
    Si descuento > 0 Entonces
        Escribir ""
        Escribir "🎉 Descuento por volumen: ", (descuento * 100), "%"
        Escribir "Monto descontado: $", montoDescuento
    FinSi
    
    Escribir "----------------------------------------"
    Escribir "COSTO TOTAL: $", costoFinal
    
    // Tiempo estimado de impresión
    Escribir ""
    Escribir "=== INFORMACIÓN ADICIONAL ==="
    Escribir "Tiempo estimado: ", (numPaginas * 0.5), " minutos"
    
    Si numPaginas <= 10 Entonces
        Escribir "📄 Trabajo pequeño - Listo en pocos minutos"
    SiNo
        Si numPaginas <= 50 Entonces
            Escribir "📚 Trabajo mediano - Considere recoger en 1 hora"
        SiNo
            Escribir "📖 Trabajo grande - Recoger al día siguiente"
        FinSi
    FinSi
    
FinAlgoritmo
