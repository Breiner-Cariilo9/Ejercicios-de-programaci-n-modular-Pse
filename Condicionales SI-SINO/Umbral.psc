// EJERCICIO 4: Sensor con umbral de alerta - Verifica si está por encima del umbral

Funcion hayAlerta <- VerificarUmbralAlerta(temperatura, umbral)
    Si temperatura > umbral Entonces
        hayAlerta <- Verdadero
    SiNo
        hayAlerta <- Falso
    FinSi
FinFuncion

Funcion CalcularNivelRiesgo(temperatura, umbral)
    Definir diferencia, nivelRiesgo Como Real
    
    Si temperatura > umbral Entonces
        diferencia <- temperatura - umbral
        Si diferencia <= 2 Entonces
            nivelRiesgo <- 1  // Riesgo bajo
        SiNo
            Si diferencia <= 5 Entonces
                nivelRiesgo <- 2  // Riesgo medio
            SiNo
                Si diferencia <= 10 Entonces
                    nivelRiesgo <- 3  // Riesgo alto
                SiNo
                    nivelRiesgo <- 4  // Riesgo crítico
                FinSi
            FinSi
        FinSi
    SiNo
        nivelRiesgo <- 0  // Sin riesgo
    FinSi
    
    CalcularNivelRiesgo <- nivelRiesgo
FinFuncion

Funcion MostrarMensajeSegunNivel(nivelRiesgo, temperatura, umbral)
    Segun nivelRiesgo Hacer
        Caso 0:
            Escribir "✅ ESTADO NORMAL"
            Escribir "🌡️ Temperatura dentro de parámetros seguros"
            Escribir "😊 No se requiere acción"
            
        Caso 1:
            Escribir "🟡 ALERTA LEVE"
            Escribir "⚠️ Temperatura ligeramente elevada"
            Escribir "💡 Recomendación: Monitorear de cerca"
            
        Caso 2:
            Escribir "🟠 ALERTA MEDIA"
            Escribir "🔥 Temperatura moderadamente alta"
            Escribir "💡 Recomendaciones:"
            Escribir "   • Verificar sistema de ventilación"
            Escribir "   • Reducir fuentes de calor"
            
        Caso 3:
            Escribir "🔴 ALERTA ALTA"
            Escribir "🌡️🔥 Temperatura peligrosamente elevada"
            Escribir "💡 Acciones inmediatas:"
            Escribir "   • Activar sistemas de enfriamiento"
            Escribir "   • Evacuar si es necesario"
            Escribir "   • Llamar al personal técnico"
            
        Caso 4:
            Escribir "🚨 ALERTA CRÍTICA"
            Escribir "💥 TEMPERATURA EXTREMADAMENTE PELIGROSA"
            Escribir "🚨 ACCIONES URGENTES:"
            Escribir "   • EVACUACIÓN INMEDIATA"
            Escribir "   • LLAMAR A EMERGENCIAS"
            Escribir "   • CORTAR SUMINISTROS ELÉCTRICOS"
            
    FinSegun
    
    Si nivelRiesgo > 0 Entonces
        Escribir ""
        Escribir "📊 Detalles de la alerta:"
        Escribir "   Temperatura actual: ", temperatura, "°C"
        Escribir "   Umbral de alerta: ", umbral, "°C"
        Escribir "   Exceso: ", (temperatura - umbral), "°C"
    FinSi
FinFuncion

Algoritmo SensorTemperaturaAlerta
    Definir temperaturaActual, umbralAlerta Como Real
    Definir nivelRiesgo Como Entero
    Definir continuar Como Caracter
    
    // Configuración del umbral
    umbralAlerta <- 30
    
    Escribir "=== SENSOR DE TEMPERATURA CON ALERTA ==="
    Escribir "Umbral de alerta configurado: ", umbralAlerta, "°C"
    Escribir ""
    
    Repetir
        Escribir "Ingrese la temperatura actual del ambiente (°C):"
        Leer temperaturaActual
        Escribir ""
        
        Escribir "=== MONITOREO DE TEMPERATURA ==="
        Escribir "🌡️ Lectura actual: ", temperaturaActual, "°C"
        Escribir ""
        
        // Verificar si hay alerta
        Si VerificarUmbralAlerta(temperaturaActual, umbralAlerta) Entonces
            nivelRiesgo <- CalcularNivelRiesgo(temperaturaActual, umbralAlerta)
            Escribir "🚨 ¡ALERTA ACTIVADA!"
            Escribir ""
            MostrarMensajeSegunNivel(nivelRiesgo, temperaturaActual, umbralAlerta)
        SiNo
            nivelRiesgo <- 0
            Escribir "✅ TEMPERATURA NORMAL"
            MostrarMensajeSegunNivel(nivelRiesgo, temperaturaActual, umbralAlerta)
        FinSi
        
        // Mostrar barra de estado visual
        Escribir ""
        Escribir "=== INDICADOR VISUAL ==="
        Si temperaturaActual <= umbralAlerta Entonces
            Escribir "🟢🟢🟢 SEGURO"
        SiNo
            Si nivelRiesgo = 1 Entonces
                Escribir "🟡🟡🟢 PRECAUCIÓN"
            SiNo
                Si nivelRiesgo = 2 Entonces
                    Escribir "🟠🟠🟡 CUIDADO"
                SiNo
                    Si nivelRiesgo = 3 Entonces
                        Escribir "🔴🔴🟠 PELIGRO"
                    SiNo
                        Escribir "💥🚨🔴 CRÍTICO"
                    FinSi
                FinSi
            FinSi
        FinSi
        
        Escribir ""
        Escribir "¿Desea tomar otra lectura? (S/N):"
        Leer continuar
        continuar <- Mayusculas(continuar)
        Escribir ""
        
    Hasta Que continuar = "N"
    
    Escribir "Sistema de monitoreo desactivado"
    
FinAlgoritmo
