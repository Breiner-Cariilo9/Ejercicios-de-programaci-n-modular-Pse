// ========== FUNCIONES ==========

// Función para leer datos físicos de una persona
Funcion LeerDatosPersona(numeroPersona, peso Por Referencia, altura Por Referencia)
    Escribir "=== PERSONA ", numeroPersona, " ==="
    Escribir "Ingrese el peso en kilogramos:"
    Leer peso
    
    Mientras peso <= 0 O peso > 500 Hacer
        Escribir "Error: Peso inválido. Debe estar entre 1 y 500 kg"
        Escribir "Ingrese el peso en kilogramos:"
        Leer peso
    FinMientras
    
    Escribir "Ingrese la altura en metros (ejemplo: 1.75):"
    Leer altura
    
    Mientras altura <= 0 O altura > 3 Hacer
        Escribir "Error: Altura inválida. Debe estar entre 0.5 y 3 metros"
        Escribir "Ingrese la altura en metros:"
        Leer altura
    FinMientras
FinFuncion

// Función para calcular IMC y clasificar estado nutricional
Funcion imc <- CalcularIMC(peso, altura, clasificacion Por Referencia, riesgo Por Referencia)
    imc <- peso / (altura * altura)
    
    // Clasificación según OMS
    Si imc < 18.5 Entonces
        clasificacion <- "Bajo peso"
        riesgo <- "Bajo (riesgo de problemas nutricionales)"
    SiNo
        Si imc < 25 Entonces
            clasificacion <- "Peso normal"
            riesgo <- "Promedio"
        SiNo
            Si imc < 30 Entonces
                clasificacion <- "Sobrepeso"
                riesgo <- "Aumentado"
            SiNo
                Si imc < 35 Entonces
                    clasificacion <- "Obesidad Grado I"
                    riesgo <- "Moderado"
                SiNo
                    Si imc < 40 Entonces
                        clasificacion <- "Obesidad Grado II"
                        riesgo <- "Severo"
                    SiNo
                        clasificacion <- "Obesidad Grado III"
                        riesgo <- "Muy severo"
                    FinSi
                FinSi
            FinSi
        FinSi
    FinSi
FinFuncion

// Función para mostrar análisis comparativo completo
Funcion MostrarAnalisisComparativo(A1)
    Definir peso1, altura1, peso2, altura2 Como Real
    Definir imc1, imc2 Como Real
    Definir clasi1, clasi2, riesgo1, riesgo2 Como Caracter
    Definir diferencia Como Real
    
    LeerDatosPersona(1, peso1, altura1)
    LeerDatosPersona(2, peso2, altura2)
    
    imc1 <- CalcularIMC(peso1, altura1, clasi1, riesgo1)
    imc2 <- CalcularIMC(peso2, altura2, clasi2, riesgo2)
    
    diferencia <- imc1 - imc2
    
    Escribir ""
    Escribir "=== RESULTADOS IMC ==="
    Escribir "----------------------------------------"
    Escribir "PERSONA 1:"
    Escribir "  Peso: ", peso1, " kg"
    Escribir "  Altura: ", altura1, " m"
    Escribir "  IMC: ", imc1
    Escribir "  Clasificación: ", clasi1
    Escribir "  Riesgo: ", riesgo1
    Escribir ""
    Escribir "PERSONA 2:"
    Escribir "  Peso: ", peso2, " kg"
    Escribir "  Altura: ", altura2, " m"
    Escribir "  IMC: ", imc2
    Escribir "  Clasificación: ", clasi2
    Escribir "  Riesgo: ", riesgo2
    Escribir "----------------------------------------"
    
    Escribir ""
    Escribir "=== ANÁLISIS COMPARATIVO ==="
    Si diferencia > 0 Entonces
        Escribir "La Persona 1 tiene un IMC ", diferencia, " puntos mayor"
    SiNo
        Si diferencia < 0 Entonces
            Escribir "La Persona 2 tiene un IMC ", diferencia * (-1), " puntos mayor"
        SiNo
            Escribir "Ambas personas tienen el mismo IMC"
        FinSi
    FinSi
    
    Escribir ""
    Escribir "=== RECOMENDACIONES GENERALES ==="
    Escribir "• Mantener una alimentación balanceada"
    Escribir "• Realizar actividad física regular"
    Escribir "• Consultar con profesionales de la salud"
    Escribir "• Controlar el peso periódicamente"
    
    Si imc1 < 18.5 O imc2 < 18.5 Entonces
        Escribir "⚠️ ATENCIÓN: Bajo peso detectado - considerar evaluación nutricional"
    FinSi
    
    Si imc1 >= 30 O imc2 >= 30 Entonces
        Escribir "🚨 IMPORTANTE: Obesidad detectada - se recomienda consulta médica"
    FinSi
FinFuncion

// ========== PROGRAMA PRINCIPAL ==========

Algoritmo IMCDosPersonas
    Escribir "=== CALCULADORA DE IMC - 2 PERSONAS ==="
    Escribir "Programa para calcular y comparar el Índice de Masa Corporal"
    Escribir "IMC = Peso (kg) / Altura² (m)"
    Escribir ""
    
    MostrarAnalisisComparativo(A1)
    
    Escribir ""
    Escribir "¡Gracias por usar el calculador de IMC!"
    
FinAlgoritmo
