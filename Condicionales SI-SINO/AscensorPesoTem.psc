// EJERCICIO 5: Ascensor inteligente - Combina verificación de temperatura y movimiento

Funcion temperaturaOK <- VerificarTemperaturaAmbiente(temp, tempMin, tempMax)
    Si temp >= tempMin Y temp <= tempMax Entonces
        temperaturaOK <- Verdadero
    SiNo
        temperaturaOK <- Falso
    FinSi
FinFuncion

Funcion pisoValido <- ValidarPisoSolicitado(piso, pisoMin, pisoMax)
    Si piso >= pisoMin Y piso <= pisoMax Entonces
        pisoValido <- Verdadero
    SiNo
        pisoValido <- Falso
    FinSi
FinFuncion

Funcion EjecutarMovimientoSeguro(pisoActual, pisoDestino, temperatura)
    Definir tiempoViaje Como Real
    
    Si pisoDestino = pisoActual Entonces
        Escribir "📍 Ya se encuentra en el piso solicitado"
    SiNo
        tiempoViaje <- Abs(pisoDestino - pisoActual) * 2  // 2 segundos por piso
        
        Escribir "🚀 Iniciando movimiento seguro..."
        Escribir "⏱️ Tiempo estimado: ", tiempoViaje, " segundos"
        Escribir ""
        
        Si pisoDestino > pisoActual Entonces
            Escribir "🔼 SUBIENDO..."
            Escribir "   Desde piso ", pisoActual, " hacia piso ", pisoDestino
        SiNo
            Escribir "🔽 BAJANDO..."
            Escribir "   Desde piso ", pisoActual, " hacia piso ", pisoDestino
        FinSi
        
        Escribir "🌡️ Temperatura monitoreada durante el viaje: ", temperatura, "°C"
        Escribir "✅ Movimiento completado exitosamente"
    FinSi
FinFuncion

Algoritmo AscensorInteligente
    Definir temperaturaActual, tempMinima, tempMaxima Como Real
    Definir pisoActual, pisoDestino, pisoMinimo, pisoMaximo Como Entero
    Definir continuar Como Caracter
    Definir sistemaActivo Como Logico
    
    // Configuración inicial del sistema
    tempMinima <- 18
    tempMaxima <- 25
    pisoMinimo <- 1
    pisoMaximo <- 12
    pisoActual <- 1
    sistemaActivo <- Verdadero
    
    Escribir "=== ASCENSOR INTELIGENTE CON CONTROL AMBIENTAL ==="
    Escribir "🏢 Edificio de ", pisoMaximo, " pisos"
    Escribir "🌡️ Rango de temperatura seguro: ", tempMinima, "°C - ", tempMaxima, "°C"
    Escribir "📍 Piso actual: ", pisoActual
    Escribir ""
    
    Repetir
        Escribir "=== VERIFICACIÓN DE CONDICIONES AMBIENTALES ==="
        Escribir "Ingrese la temperatura ambiente actual (°C):"
        Leer temperaturaActual
        
        Si VerificarTemperaturaAmbiente(temperaturaActual, tempMinima, tempMaxima) Entonces
            Escribir "✅ Temperatura ambiente ACEPTABLE (", temperaturaActual, "°C)"
            Escribir "🟢 Sistema de ascensor HABILITADO"
            Escribir ""
            
            Escribir "Ingrese el piso destino (", pisoMinimo, " - ", pisoMaximo, "):"
            Leer pisoDestino
            
            Si ValidarPisoSolicitado(pisoDestino, pisoMinimo, pisoMaximo) Entonces
                Escribir "✅ Piso destino VÁLIDO"
                Escribir ""
                EjecutarMovimientoSeguro(pisoActual, pisoDestino, temperaturaActual)
                pisoActual <- pisoDestino
                Escribir "🎯 Ubicación actual: Piso ", pisoActual
                
            SiNo
                Escribir "❌ ERROR: Piso ", pisoDestino, " NO VÁLIDO"
                Escribir "🔢 Pisos disponibles: ", pisoMinimo, " al ", pisoMaximo
                Escribir "🚫 Movimiento CANCELADO"
            FinSi
            
        SiNo
            Escribir "🚨 ALERTA: Temperatura ambiente INADECUADA"
            Escribir "🌡️ Temperatura actual: ", temperaturaActual, "°C"
            Escribir "⚠️ Rango seguro: ", tempMinima, "°C - ", tempMaxima, "°C"
            Escribir ""
            
            Si temperaturaActual < tempMinima Entonces
                Escribir "❄️ PROBLEMA: Ambiente demasiado FRÍO"
                Escribir "📋 Recomendaciones antes del uso:"
                Escribir "   • Activar calefacción del edificio"
                Escribir "   • Verificar aislamiento térmico"
                Escribir "   • Esperar a que se normalice la temperatura"
                Escribir "🚫 MOVIMIENTO DEL ASCENSOR BLOQUEADO"
            SiNo
                Escribir "🔥 PROBLEMA: Ambiente demasiado CALIENTE"
                Escribir "📋 Recomendaciones antes del uso:"
                Escribir "   • Activar aire acondicionado"
                Escribir "   • Mejorar ventilación del edificio"
                Escribir "   • Verificar sistemas de enfriamiento"
                Escribir "🚫 MOVIMIENTO DEL ASCENSOR BLOQUEADO"
            FinSi
        FinSi
        
        Escribir ""
        Escribir "=== ESTADO DEL SISTEMA ==="
        Si VerificarTemperaturaAmbiente(temperaturaActual, tempMinima, tempMaxima) Entonces
            Escribir "🟢 Sistema: OPERATIVO"
            Escribir "🏠 Ambiente: ÓPTIMO"
            Escribir "🔧 Mantenimiento: NO REQUERIDO"
        SiNo
            Escribir "🔴 Sistema: BLOQUEADO"
            Escribir "⚠️ Ambiente: REQUIERE CORRECCIÓN"
            Escribir "🔧 Mantenimiento: REVISAR CLIMATIZACIÓN"
        FinSi
        
        Escribir ""
        Escribir "¿Desea realizar otra operación? (S/N):"
        Leer continuar
        continuar <- Mayusculas(continuar)
        Escribir ""
        
    Hasta Que continuar = "N"
    
    Escribir "=== SISTEMA DESACTIVADO ==="
    Escribir "Gracias por usar el Ascensor Inteligente"
    Escribir "🔒 Sistema en modo seguro"
    
FinAlgoritmo
