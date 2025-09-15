// EJERCICIO 12: Sumar calorías consumidas durante el día y mostrar el total

Funcion totalCalorias <- SumarCaloriasDia()
    Definir calorias, totalCalorias Como Real
    Definir continuar Como Caracter
    totalCalorias <- 0
    
    Escribir "=== REGISTRO DE CALORÍAS DIARIAS ==="
    Escribir ""
    
    Repetir
        Escribir "Ingrese las calorías de la comida/bebida:"
        Leer calorias
        totalCalorias <- totalCalorias + calorias
        
        Escribir "¿Desea agregar más alimentos? (S/N):"
        Leer continuar
        continuar <- Mayusculas(continuar)
        
    Hasta Que continuar = "N"
    
    SumarCaloriasDia <- totalCalorias
FinFuncion

Algoritmo ContadorCalorias
    Definir totalDia Como Real
    
    totalDia <- SumarCaloriasDia()
    
    Escribir ""
    Escribir "=== RESUMEN DEL DÍA ==="
    Escribir "Total de calorías consumidas: ", totalDia, " kcal"
    Escribir ""
    
    // Recomendaciones generales
    Si totalDia < 1200 Entonces
        Escribir "⚠️ Consumo muy bajo de calorías"
    SiNo
        Si totalDia <= 2000 Entonces
            Escribir "✅ Consumo moderado de calorías"
        SiNo
            Si totalDia <= 2500 Entonces
                Escribir "⚠️ Consumo alto de calorías"
            SiNo
                Escribir "🚨 Consumo muy alto de calorías"
            FinSi
        FinSi
    FinSi
    
FinAlgoritmo
