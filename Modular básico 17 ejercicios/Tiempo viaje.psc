// EJERCICIO 15: Calcular el tiempo total de viaje sumando tiempos parciales

Funcion tiempoTotal <- SumarTiemposViaje()
    Definir tiempo, tiempoTotal Como Real
    Definir continuar Como Caracter
    Definir numTramos Como Entero
    
    tiempoTotal <- 0
    numTramos <- 0
    
    Escribir "=== CÁLCULO DE TIEMPO TOTAL DE VIAJE ==="
    Escribir ""
    
    Repetir
        numTramos <- numTramos + 1
        Escribir "TRAMO ", numTramos, ":"
        Escribir "Ingrese el tiempo del tramo (en horas):"
        Leer tiempo
        tiempoTotal <- tiempoTotal + tiempo
        
        Escribir "¿Hay más tramos en el viaje? (S/N):"
        Leer continuar
        continuar <- Mayusculas(continuar)
        Escribir ""
        
    Hasta Que continuar = "N"
    
    Escribir "Número total de tramos: ", numTramos
    SumarTiemposViaje <- tiempoTotal
FinFuncion

Funcion ConvertirHorasAHorasMinutos(horas)
    Definir horasEnteras, minutos Como Entero
    horasEnteras <- Trunc(horas)
    minutos <- Trunc((horas - horasEnteras) * 60)
    
    Escribir horasEnteras, " horas y ", minutos, " minutos"
FinFuncion

Algoritmo TiempoTotalViaje
    Definir tiempoTotal Como Real
    
    tiempoTotal <- SumarTiemposViaje()
    
    Escribir "=== RESUMEN DEL VIAJE ==="
    Escribir "Tiempo total de viaje: ", tiempoTotal, " horas"
    Escribir "Equivalente a: "
    ConvertirHorasAHorasMinutos(tiempoTotal)
    
    // Clasificación del viaje
    Escribir ""
    Si tiempoTotal <= 2 Entonces
        Escribir "🚗 Viaje corto"
    SiNo
        Si tiempoTotal <= 6 Entonces
            Escribir "🛣️ Viaje mediano"
        SiNo
            Si tiempoTotal <= 12 Entonces
                Escribir "🚛 Viaje largo"
            SiNo
                Escribir "✈️ Viaje muy largo"
            FinSi
        FinSi
    FinSi
    
FinAlgoritmo
