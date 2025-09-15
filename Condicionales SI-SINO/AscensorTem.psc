// EJERCICIO 3: Sensor de temperatura ambiente - Verifica si está en rango aceptable

Funcion enRango <- VerificarTemperatura(temperatura, tempMin, tempMax)
    Si temperatura >= tempMin Y temperatura <= tempMax Entonces
        enRango <- Verdadero
    SiNo
        enRango <- Falso
    FinSi
FinFuncion

Funcion ClasificarTemperatura(temp)
    Si temp < 0 Entonces
        Escribir "🥶 Temperatura extremadamente fría"
    SiNo
        Si temp < 10 Entonces
            Escribir "❄️ Temperatura muy fría"
        SiNo
            Si temp < 18 Entonces
                Escribir "🌡️ Temperatura fresca"
            SiNo
                Si temp <= 25 Entonces
                    Escribir "😊 Temperatura ideal"
                SiNo
                    Si temp <= 30 Entonces
                        Escribir "🌞 Temperatura cálida"
                    SiNo
                        Si temp <= 35 Entonces
                            Escribir "🔥 Temperatura calurosa"
                        SiNo
                            Escribir "🌡️💥 Temperatura peligrosamente alta"
                        FinSi
                    FinSi
                FinSi
            FinSi
        FinSi
    FinSi
FinFuncion

Funcion GenerarRecomendacion(temperatura, tempMin, tempMax)
    Si VerificarTemperatura(temperatura, tempMin, tempMax) Entonces
        Escribir "✅ La temperatura está en el rango óptimo"
        Escribir "💡 Recomendación: Mantener las condiciones actuales"
    SiNo
        Si temperatura < tempMin Entonces
            Escribir "🔴 Temperatura por debajo del rango deseado"
            Escribir "💡 Recomendaciones:"
            Escribir "   • Encender la calefacción"
            Escribir "   • Cerrar ventanas"
            Escribir "   • Usar ropa abrigada"
            Escribir "   • Diferencia: ", (tempMin - temperatura), "°C por debajo"
        SiNo
            Escribir "🔴 Temperatura por encima del rango deseado"
            Escribir "💡 Recomendaciones:"
            Escribir "   • Encender el aire acondicionado"
            Escribir "   • Abrir ventanas"
            Escribir "   • Usar ventiladores"
            Escribir "   • Diferencia: ", (temperatura - tempMax), "°C por encima"
        FinSi
    FinSi
FinFuncion

Algoritmo SensorTemperatura
    Definir temperaturaActual, temperaturaMinima, temperaturaMaxima Como Real
    Definir continuar Como Caracter
    
    // Configuración del rango aceptable
    temperaturaMinima <- 18
    temperaturaMaxima <- 25
    
    Escribir "=== SENSOR DE TEMPERATURA AMBIENTE ==="
    Escribir "Rango aceptable: ", temperaturaMinima, "°C - ", temperaturaMaxima, "°C"
    Escribir ""
    
    Repetir
        Escribir "Ingrese la temperatura actual (°C):"
        Leer temperaturaActual
        Escribir ""
        
        Escribir "=== ANÁLISIS DE TEMPERATURA ==="
        Escribir "Temperatura detectada: ", temperaturaActual, "°C"
        
        // Clasificar la temperatura
        ClasificarTemperatura(temperaturaActual)
        Escribir ""
        
        // Generar recomendación
        GenerarRecomendacion(temperaturaActual, temperaturaMinima, temperaturaMaxima)
        Escribir ""
        
        // Mostrar estado del sistema
        Escribir "=== ESTADO DEL SISTEMA ==="
        Si VerificarTemperatura(temperaturaActual, temperaturaMinima, temperaturaMaxima) Entonces
            Escribir "🟢 Sistema: NORMAL"
            Escribir "🏠 Ambiente: CONFORTABLE"
        SiNo
            Escribir "🟡 Sistema: ALERTA"
            Escribir "⚠️ Ambiente: REQUIERE AJUSTE"
        FinSi
        
        Escribir ""
        Escribir "¿Desea tomar otra lectura? (S/N):"
        Leer continuar
        continuar <- Mayusculas(continuar)
        Escribir ""
        
    Hasta Que continuar = "N"
    
    Escribir "Sensor de temperatura desactivado"
    
FinAlgoritmo
