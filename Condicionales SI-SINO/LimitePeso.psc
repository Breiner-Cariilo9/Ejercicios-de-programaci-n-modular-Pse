// EJERCICIO 2: Ascensor con límite de peso - Verifica peso y piso antes de moverse

Funcion pesoValido <- VerificarPeso(pesoUsuario, pesoMaximo)
    Si pesoUsuario <= pesoMaximo Y pesoUsuario > 0 Entonces
        pesoValido <- Verdadero
    SiNo
        pesoValido <- Falso
    FinSi
FinFuncion

Funcion pisoValido <- ValidarPisoDestino(piso, pisoMin, pisoMax)
    Si piso >= pisoMin Y piso <= pisoMax Entonces
        pisoValido <- Verdadero
    SiNo
        pisoValido <- Falso
    FinSi
FinFuncion

Funcion MostrarEstadoAscensor(pesoActual, pesoMaximo, pisoActual)
    Definir porcentajePeso Como Real
    porcentajePeso <- (pesoActual / pesoMaximo) * 100
    
    Escribir "=== ESTADO DEL ASCENSOR ==="
    Escribir "Piso actual: ", pisoActual
    Escribir "Peso actual: ", pesoActual, " kg"
    Escribir "Capacidad máxima: ", pesoMaximo, " kg"
    Escribir "Ocupación: ", porcentajePeso, "%"
    
    Si porcentajePeso > 90 Entonces
        Escribir "⚠️ ADVERTENCIA: Cerca del límite de peso"
    SiNo
        Si porcentajePeso > 70 Entonces
            Escribir "🟡 Carga moderada"
        SiNo
            Escribir "🟢 Carga ligera"
        FinSi
    FinSi
    Escribir ""
FinFuncion

Algoritmo AscensorConPeso
    Definir pesoUsuario, pesoMaximo, pisoDestino, pisoActual Como Real
    Definir pisoMinimo, pisoMaximo Como Entero
    Definir continuar Como Caracter
    
    // Configuración inicial
    pesoMaximo <- 500  // 500 kg máximo
    pisoMinimo <- 1
    pisoMaximo <- 15
    pisoActual <- 1
    
    Escribir "=== ASCENSOR CON CONTROL DE PESO ==="
    Escribir "Capacidad máxima: ", pesoMaximo, " kg"
    Escribir "Pisos disponibles: ", pisoMinimo, " - ", pisoMaximo
    Escribir ""
    
    Repetir
        MostrarEstadoAscensor(0, pesoMaximo, pisoActual)
        
        Escribir "Ingrese su peso (kg):"
        Leer pesoUsuario
        
        Si VerificarPeso(pesoUsuario, pesoMaximo) Entonces
            Escribir "✅ Peso dentro del límite permitido"
            Escribir ""
            Escribir "Ingrese el piso destino (", pisoMinimo, " - ", pisoMaximo, "):"
            Leer pisoDestino
            
            Si ValidarPisoDestino(pisoDestino, pisoMinimo, pisoMaximo) Entonces
                Escribir "✅ Piso válido"
                Escribir "🚀 Iniciando movimiento..."
                
                Si pisoDestino > pisoActual Entonces
                    Escribir "🔼 Subiendo del piso ", pisoActual, " al piso ", pisoDestino
                SiNo
                    Si pisoDestino < pisoActual Entonces
                        Escribir "🔽 Bajando del piso ", pisoActual, " al piso ", pisoDestino
                    SiNo
                        Escribir "📍 Ya se encuentra en el piso ", pisoActual
                    FinSi
                FinSi
                
                pisoActual <- pisoDestino
                Escribir "🎯 Llegada exitosa al piso ", pisoActual
                
            SiNo
                Escribir "❌ ERROR: Piso ", pisoDestino, " no válido"
                Escribir "Seleccione un piso entre ", pisoMinimo, " y ", pisoMaximo
            FinSi
            
        SiNo
            Escribir "❌ ASCENSOR SOBRECARGADO"
            Escribir "Peso ingresado: ", pesoUsuario, " kg"
            Escribir "Peso máximo permitido: ", pesoMaximo, " kg"
            Escribir "Exceso de peso: ", (pesoUsuario - pesoMaximo), " kg"
            Escribir "🚫 El ascensor NO puede moverse"
        FinSi
        
        Escribir ""
        Escribir "¿Desea usar el ascensor nuevamente? (S/N):"
        Leer continuar
        continuar <- Mayusculas(continuar)
        Escribir ""
        
    Hasta Que continuar = "N"
    
    Escribir "Gracias por usar el ascensor inteligente"
    
FinAlgoritmo
