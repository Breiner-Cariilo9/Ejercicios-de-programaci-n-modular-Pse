// ========== FUNCIONES ==========

// Función para leer ventas de un día específico
Funcion venta <- LeerVentaDia(nombreDia)
    Escribir "Ingrese las ventas del ", nombreDia, ":"
    Leer venta
    
    Mientras venta < 0 Hacer
        Escribir "Error: Las ventas no pueden ser negativas"
        Escribir "Ingrese las ventas del ", nombreDia, ":"
        Leer venta
    FinMientras
FinFuncion

// Función para sumar todas las ventas de la semana
Funcion totalSemana <- SumarVentasSemana(ven)
    Definir diasSemana Como Caracter
    Definir ventaDia Como Real
    Definir i Como Entero
    Dimension diasSemana[7]
    
    diasSemana[1] <- "Lunes"
    diasSemana[2] <- "Martes"
    diasSemana[3] <- "Miércoles"
    diasSemana[4] <- "Jueves"
    diasSemana[5] <- "Viernes"
    diasSemana[6] <- "Sábado"
    diasSemana[7] <- "Domingo"
    
    totalSemana <- 0
    
    Escribir "=== INGRESO DE VENTAS DIARIAS ==="
    Para i <- 1 Hasta 7 Con Paso 1 Hacer
        ventaDia <- LeerVentaDia(diasSemana[i])
        totalSemana <- totalSemana + ventaDia
    FinPara
FinFuncion

// Función para mostrar análisis completo de ventas
Funcion MostrarAnalisisVentas(totalSemana)
    Definir promedioDiario Como Real
    promedioDiario <- totalSemana / 7
    
    Escribir ""
    Escribir "=== RESUMEN DE VENTAS SEMANAL ==="
    Escribir "--------------------------------------"
    Escribir "Total de ventas de la semana: $", totalSemana
    Escribir "Promedio diario de ventas:    $", promedioDiario
    Escribir "--------------------------------------"
    
    // Análisis de desempeño
    Si totalSemana >= 10000 Entonces
        Escribir "🎉 EXCELENTE SEMANA - Ventas superiores a $10,000"
        Escribir "Meta alcanzada con gran éxito"
    SiNo
        Si totalSemana >= 7000 Entonces
            Escribir "👍 MUY BUENA SEMANA - Ventas entre $7,000 y $10,000"
            Escribir "Desempeño por encima del promedio"
        SiNo
            Si totalSemana >= 5000 Entonces
                Escribir "✅ BUENA SEMANA - Ventas entre $5,000 y $7,000"
                Escribir "Desempeño satisfactorio"
            SiNo
                Si totalSemana >= 3000 Entonces
                    Escribir "⚠️ SEMANA REGULAR - Ventas entre $3,000 y $5,000"
                    Escribir "Hay oportunidad de mejora"
                SiNo
                    Escribir "📈 SEMANA BAJA - Ventas menores a $3,000"
                    Escribir "Se recomienda revisar estrategias de venta"
                FinSi
            FinSi
        FinSi
    FinSi
    
    // Proyecciones
    Escribir ""
    Escribir "=== PROYECCIONES ==="
    Escribir "Proyección mensual (4 semanas): $", totalSemana * 4
    Escribir "Proyección anual (52 semanas):  $", totalSemana * 52
FinFuncion

// ========== PROGRAMA PRINCIPAL ==========

Algoritmo VentasSemana
    Definir totalVentas Como Real
    
    Escribir "=== CALCULADORA DE VENTAS SEMANALES ==="
    Escribir "Programa para registrar y analizar ventas de toda la semana"
    Escribir ""
    
    totalVentas <- SumarVentasSemana(ven)
    MostrarAnalisisVentas(totalVentas)
    
    Escribir ""
    Escribir "¡Gracias por usar el calculador de ventas!"
    
FinAlgoritmo
