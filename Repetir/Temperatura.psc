// PROGRAMA 3: SENSOR DE TEMPERATURA

Funcion temperatura <- SolicitarTemperatura()
    Definir temperatura Como Real
    Escribir "Ingrese la temperatura actual (°C): "
    Leer temperatura
FinFuncion

Funcion resultado <- VerificarRango(temperatura, minimo, maximo)
    Definir resultado Como Logico
    Si temperatura >= minimo Y temperatura <= maximo Entonces
        resultado <- Verdadero
    SiNo
        resultado <- Falso
    FinSi
FinFuncion

Funcion MostrarAlerta(temperatura)
    Escribir "¡ALERTA! Temperatura fuera de rango: ", temperatura, "°C"
    Si temperatura < 18 Entonces
        Escribir "La temperatura está muy baja. Verifique el sistema de calefacción."
    SiNo
        Escribir "La temperatura está muy alta. Verifique el sistema de refrigeración."
    FinSi
FinFuncion

Funcion MostrarEstadoNormal(temperatura)
    Escribir "Temperatura dentro del rango aceptable: ", temperatura, "°C"
    Escribir "Sistema funcionando correctamente."
FinFuncion

Algoritmo SensorTemperatura
    Definir temperatura, tempMinima, tempMaxima Como Real
    Definir dentroRango Como Logico
    Definir lecturas Como Entero
    
    tempMinima <- 18
    tempMaxima <- 25
    lecturas <- 0
    
    Escribir "=== SISTEMA DE MONITOREO DE TEMPERATURA ==="
    Escribir "Rango aceptable: ", tempMinima, "°C - ", tempMaxima, "°C"
    Escribir ""
    
    Repetir
        lecturas <- lecturas + 1
        Escribir "--- LECTURA #", lecturas, " ---"
        
        temperatura <- SolicitarTemperatura()
        dentroRango <- VerificarRango(temperatura, tempMinima, tempMaxima)
        
        Si dentroRango Entonces
            MostrarEstadoNormal(temperatura)
            Escribir "Monitoreo completado exitosamente."
            Escribir ""
        SiNo
            MostrarAlerta(temperatura)
            Escribir "Por favor, tome las medidas correctivas necesarias."
            Escribir ""
        FinSi
        
    Hasta Que dentroRango = Verdadero
    
    Escribir "=== FIN DEL MONITOREO ==="
    Escribir "Total de lecturas realizadas: ", lecturas
    
FinAlgoritmo
