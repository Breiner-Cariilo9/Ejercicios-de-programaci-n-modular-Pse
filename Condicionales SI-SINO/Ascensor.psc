// EJERCICIO 1: Simulador de Ascensor - El usuario ingresa el piso y el programa verifica si es válido

Funcion esValido <- ValidarPiso(piso, pisoMinimo, pisoMaximo)
    Si piso >= pisoMinimo Y piso <= pisoMaximo Entonces
        esValido <- Verdadero
    SiNo
        esValido <- Falso
    FinSi
FinFuncion

Funcion MoverAscensor(pisoActual, pisoDestino)
    Definir i Como Entero
    
    Si pisoDestino > pisoActual Entonces
        Escribir "🔼 Ascendiendo..."
        Para i <- pisoActual Hasta pisoDestino Con Paso 1 Hacer
            Escribir "Piso ", i
            Esperar 1 Segundos
        FinPara
    SiNo
        Si pisoDestino < pisoActual Entonces
            Escribir "🔽 Descendiendo..."
            Para i <- pisoActual Hasta pisoDestino Con Paso -1 Hacer
                Escribir "Piso ", i
                Esperar 1 Segundos
            FinPara
        SiNo
            Escribir "Ya se encuentra en el piso ", pisoActual
        FinSi
    FinSi
FinFuncion

Funcion MostrarMensajeError(piso, pisoMin, pisoMax)
    Escribir "❌ ERROR: Piso ", piso, " no válido"
    Escribir "Los pisos válidos son del ", pisoMin, " al ", pisoMax
    Escribir "Por favor, seleccione un piso válido"
FinFuncion

Algoritmo SimuladorAscensor
    Definir pisoActual, pisoDestino, pisoMinimo, pisoMaximo Como Entero
    Definir continuar Como Caracter
    
    // Configuración del edificio
    pisoMinimo <- 1
    pisoMaximo <- 20
    pisoActual <- 1
    
    Escribir "=== SIMULADOR DE ASCENSOR ==="
    Escribir "Edificio de ", pisoMaximo, " pisos"
    Escribir "Piso actual: ", pisoActual
    Escribir ""
    
    Repetir
        Escribir "Ingrese el piso al que desea ir (", pisoMinimo, " - ", pisoMaximo, "):"
        Leer pisoDestino
        
        Si ValidarPiso(pisoDestino, pisoMinimo, pisoMaximo) Entonces
            Escribir "✅ Piso válido - Moviendo ascensor"
            MoverAscensor(pisoActual, pisoDestino)
            pisoActual <- pisoDestino
            Escribir "🎯 Ha llegado al piso ", pisoActual
        SiNo
            MostrarMensajeError(pisoDestino, pisoMinimo, pisoMaximo)
        FinSi
        
        Escribir ""
        Escribir "¿Desea ir a otro piso? (S/N):"
        Leer continuar
        continuar <- Mayusculas(continuar)
        Escribir ""
        
    Hasta Que continuar = "N"
    
    Escribir "Gracias por usar el ascensor. ¡Que tenga un buen día!"
    
FinAlgoritmo
