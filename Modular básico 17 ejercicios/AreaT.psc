// ========== FUNCIONES ==========

// Función para leer dimensiones del rectángulo con validación
Funcion LeerDimensiones(base Por Referencia, altura Por Referencia)
    Escribir "=== INGRESO DE DIMENSIONES ==="
    Escribir "Ingrese la base del rectángulo (en metros):"
    Leer base
    Escribir "Ingrese la altura del rectángulo (en metros):"
    Leer altura
    
    Mientras base <= 0 O altura <= 0 Hacer
        Escribir "Error: Las dimensiones deben ser mayores que cero"
        Escribir "Ingrese la base:"
        Leer base
        Escribir "Ingrese la altura:"
        Leer altura
    FinMientras
FinFuncion

// Función para calcular área y perímetro
Funcion area <- CalcularAreaRectangulo(base, altura, perimetro Por Referencia)
    area <- base * altura
    perimetro <- 2 * (base + altura)
FinFuncion

// Función para mostrar resultados y clasificar el rectángulo
Funcion MostrarResultados(base, altura, area, perimetro)
    Escribir ""
    Escribir "=== RESULTADOS DEL RECTÁNGULO ==="
    Escribir "-----------------------------------"
    Escribir "Base:           ", base, " metros"
    Escribir "Altura:         ", altura, " metros"
    Escribir "-----------------------------------"
    Escribir "Área:           ", area, " metros cuadrados"
    Escribir "Perímetro:      ", perimetro, " metros"
    Escribir "-----------------------------------"
    
    // Clasificación del rectángulo
    Si base = altura Entonces
        Escribir "Tipo: CUADRADO (base = altura)"
    SiNo
        Si base > altura Entonces
            Escribir "Tipo: Rectángulo HORIZONTAL (base > altura)"
        SiNo
            Escribir "Tipo: Rectángulo VERTICAL (altura > base)"
        FinSi
    FinSi
    
    // Análisis del área
    Si area >= 100 Entonces
        Escribir "🏠 Área GRANDE (≥ 100 m²)"
    SiNo
        Si area >= 25 Entonces
            Escribir "🏡 Área MEDIANA (25-99 m²)"
        SiNo
            Escribir "🏘️ Área PEQUEÑA (< 25 m²)"
        FinSi
    FinSi
    
    // Relación de aspecto
    Definir relacionAspecto Como Real
    relacionAspecto <- base / altura
    Escribir "Relación de aspecto: ", relacionAspecto, ":1"
FinFuncion

// ========== PROGRAMA PRINCIPAL ==========

Algoritmo AreaRectangulo
    Definir base, altura, area, perimetro Como Real
    
    Escribir "=== CALCULADORA DE ÁREA DE RECTÁNGULO ==="
    Escribir "Programa para calcular el área y perímetro de un rectángulo"
    Escribir ""
    
    LeerDimensiones(base, altura)
    area <- CalcularAreaRectangulo(base, altura, perimetro)
    MostrarResultados(base, altura, area, perimetro)
    
    Escribir ""
    Escribir "¡Gracias por usar la calculadora de área!"
    
FinAlgoritmo
