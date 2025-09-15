// PROGRAMA 6: JUEGO DE ADIVINANZA

Funcion numero <- GenerarNumeroAleatorio()
    numero <- Aleatorio(1, 100)
FinFuncion

Funcion pista <- ObtenerPista(numeroSecreto, intento)
    Si intento < numeroSecreto Entonces
        pista <- "mayor"
    SiNo
        Si intento > numeroSecreto Entonces
            pista <- "menor"
        SiNo
            pista <- "correcto"
        FinSi
    FinSi
FinFuncion

Funcion JugarAdivinanza()
    Definir numeroSecreto, intento, intentos Como Entero
    Definir adivinado Como Logico
    Definir pista Como Caracter
    
    Escribir "=== JUEGO DE ADIVINANZA ==="
    Escribir "He generado un número entre 1 y 100. ¡Intenta adivinarlo!"
    
    numeroSecreto <- GenerarNumeroAleatorio()
    intentos <- 0
    adivinado <- Falso
    
    Mientras adivinado = Falso Hacer
        Escribir "Ingresa tu número: "
        Leer intento
        intentos <- intentos + 1
        
        Si intento < 1 O intento > 100 Entonces
            Escribir "Por favor, ingresa un número entre 1 y 100."
            intentos <- intentos - 1  // No contar este intento
        SiNo
            pista <- ObtenerPista(numeroSecreto, intento)
            
            Si pista = "correcto" Entonces
                adivinado <- Verdadero
                Escribir "¡Felicidades! Adivinaste el número ", numeroSecreto, " en ", intentos, " intentos."
            SiNo
                Si pista = "mayor" Entonces
                    Escribir "El número es mayor. ¡Intenta de nuevo!"
                SiNo
                    Escribir "El número es menor. ¡Intenta de nuevo!"
                FinSi
            FinSi
        FinSi
    FinMientras
FinFuncion

Algoritmo JuegoAdivinanza
    Definir jugar Como Logico
    Definir respuesta Como Caracter
    
    jugar <- Verdadero
    
    Mientras jugar = Verdadero Hacer
        JugarAdivinanza()
        
        Repetir
            Escribir ""
            Escribir "¿Quieres jugar otra vez? (s/n): "
            Leer respuesta
            
            Si respuesta <> "s" Y respuesta <> "S" Y respuesta <> "n" Y respuesta <> "N" Entonces
                Escribir "Por favor, responde 's' para sí o 'n' para no."
            FinSi
        Hasta Que respuesta = "s" O respuesta = "S" O respuesta = "n" O respuesta = "N"
        
        Si respuesta = "n" O respuesta = "N" Entonces
            jugar <- Falso
        FinSi
    FinMientras
    
    Escribir "¡Gracias por jugar!"
    
FinAlgoritmo
