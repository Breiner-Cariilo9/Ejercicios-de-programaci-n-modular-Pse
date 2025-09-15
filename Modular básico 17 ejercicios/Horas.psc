// ========== FUNCIONES ==========

// Función para leer horas trabajadas con validación
Funcion horas <- LeerHorasTrabajadas(Dato1)
    Escribir "=== INGRESO DE DATOS LABORALES ==="
    Escribir "Ingrese las horas trabajadas:"
    Leer horas
    
    Mientras horas < 0 O horas > 168 Hacer
        Si horas < 0 Entonces
            Escribir "Error: Las horas no pueden ser negativas"
        SiNo
            Escribir "Error: No se pueden trabajar más de 168 horas por semana"
        FinSi
        Escribir "Ingrese las horas trabajadas:"
        Leer horas
    FinMientras
FinFuncion

// Función para calcular costo total con análisis de horas extras
Funcion costoTotal <- CalcularCostoPorTiempo(horas, tarifaPorHora, horasNormales Por Referencia, horasExtras Por Referencia, pagoNormal Por Referencia, pagoExtras Por Referencia)
    Definir limiteSemanal Como Entero
    limiteSemanal <- 40
    
    Si horas <= limiteSemanal Entonces
        horasNormales <- horas
        horasExtras <- 0
        pagoNormal <- horas * tarifaPorHora
        pagoExtras <- 0
    SiNo
        horasNormales <- limiteSemanal
        horasExtras <- horas - limiteSemanal
        pagoNormal <- horasNormales * tarifaPorHora
        pagoExtras <- horasExtras * (tarifaPorHora * 1.5)  // 50% extra por horas extras
    FinSi
    
    costoTotal <- pagoNormal + pagoExtras
FinFuncion

// Función para mostrar desglose detallado de pagos
Funcion MostrarDesglosePago(horas, tarifaPorHora, horasNormales, horasExtras, pagoNormal, pagoExtras, costoTotal)
    Escribir ""
    Escribir "=== DESGLOSE DE PAGO ==="
    Escribir "--------------------------------"
    Escribir "Tarifa por hora:         $", tarifaPorHora
    Escribir "Total de horas:          ", horas
    Escribir "--------------------------------"
    Escribir "Horas normales (1-40):   ", horasNormales, " horas"
    Escribir "Pago horas normales:     $", pagoNormal
    
    Si horasExtras > 0 Entonces
        Escribir "Horas extras (>40):      ", horasExtras, " horas"
        Escribir "Tarifa horas extras:     $", tarifaPorHora * 1.5, "/hora"
        Escribir "Pago horas extras:       $", pagoExtras
    FinSi
    
    Escribir "--------------------------------"
    Escribir "PAGO TOTAL:              $", costoTotal
    Escribir "--------------------------------"
    
    // Análisis de carga laboral
    Si horas > 60 Entonces
        Escribir "⚠️ SOBRECARGA LABORAL - Más de 60 horas semanales"
        Escribir "Se recomienda evaluar el equilibrio trabajo-vida"
    SiNo
        Si horas > 45 Entonces
            Escribir "📊 CARGA ALTA - Entre 45 y 60 horas semanales"
        SiNo
            Si horas >= 35 Entonces
                Escribir "✅ CARGA NORMAL - Tiempo completo estándar"
            SiNo
                Si horas >= 20 Entonces
                    Escribir "⏰ MEDIO TIEMPO - Entre 20 y 35 horas"
                SiNo
                    Escribir "🕒 TIEMPO PARCIAL - Menos de 20 horas"
                FinSi
            FinSi
        FinSi
    FinSi
    
    // Proyecciones
    Escribir ""
    Escribir "=== PROYECCIONES ==="
    Escribir "Proyección mensual (4 semanas): $", costoTotal * 4
    Escribir "Proyección anual (52 semanas):  $", costoTotal * 52
    
    Si horasExtras > 0 Entonces
        Escribir "Ahorro si se evitan horas extras: $", pagoExtras - (horasExtras * tarifaPorHora)
    FinSi
FinFuncion

// ========== PROGRAMA PRINCIPAL ==========

Algoritmo CostoPorTiempo
    Definir horas, tarifaPorHora, costoTotal Como Real
    Definir horasNormales, horasExtras, pagoNormal, pagoExtras Como Real
    
    Escribir "=== CALCULADORA DE COSTO POR TIEMPO ==="
    Escribir "Programa para calcular salarios con análisis de horas extras"
    Escribir ""
    
    horas <- LeerHorasTrabajadas(Dato1)
    
    Escribir "Ingrese la tarifa por hora:"
    Leer tarifaPorHora
    
    Mientras tarifaPorHora <= 0 Hacer
        Escribir "Error: La tarifa debe ser mayor que cero"
        Escribir "Ingrese la tarifa por hora:"
        Leer tarifaPorHora
    FinMientras
    
    costoTotal <- CalcularCostoPorTiempo(horas, tarifaPorHora, horasNormales, horasExtras, pagoNormal, pagoExtras)
    MostrarDesglosePago(horas, tarifaPorHora, horasNormales, horasExtras, pagoNormal, pagoExtras, costoTotal)
    
    Escribir ""
    Escribir "¡Gracias por usar el calculador de costos laborales!"
    
FinAlgoritmo
