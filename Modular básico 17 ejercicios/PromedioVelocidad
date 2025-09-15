// EJERCICIO 13: Calcular el promedio de velocidad dados distancia y tiempo de dos carros

Funcion velocidad <- CalcularVelocidad(distancia, tiempo)
    velocidad <- distancia / tiempo
FinFuncion

Funcion promedio <- CalcularPromedioVelocidades(vel1, vel2)
    promedio <- (vel1 + vel2) / 2
FinFuncion

Algoritmo PromedioVelocidadCarros
    Definir distancia1, tiempo1, distancia2, tiempo2 Como Real
    Definir velocidad1, velocidad2, promedioVel Como Real
    
    Escribir "=== CÁLCULO DE PROMEDIO DE VELOCIDADES ==="
    Escribir ""
    
    // Datos del primer carro
    Escribir "CARRO 1:"
    Escribir "Ingrese la distancia recorrida (en km):"
    Leer distancia1
    Escribir "Ingrese el tiempo empleado (en horas):"
    Leer tiempo1
    
    // Datos del segundo carro
    Escribir ""
    Escribir "CARRO 2:"
    Escribir "Ingrese la distancia recorrida (en km):"
    Leer distancia2
    Escribir "Ingrese el tiempo empleado (en horas):"
    Leer tiempo2
    
    // Calcular velocidades individuales
    velocidad1 <- CalcularVelocidad(distancia1, tiempo1)
    velocidad2 <- CalcularVelocidad(distancia2, tiempo2)
    
    // Calcular promedio
    promedioVel <- CalcularPromedioVelocidades(velocidad1, velocidad2)
    
    // Mostrar resultados
    Escribir ""
    Escribir "=== RESULTADOS ==="
    Escribir "Velocidad del Carro 1: ", velocidad1, " km/h"
    Escribir "Velocidad del Carro 2: ", velocidad2, " km/h"
    Escribir "Promedio de velocidad: ", promedioVel, " km/h"
    
    // Análisis adicional
    Escribir ""
    Si velocidad1 > velocidad2 Entonces
        Escribir "El Carro 1 fue más rápido"
    SiNo
        Si velocidad2 > velocidad1 Entonces
            Escribir "El Carro 2 fue más rápido"
        SiNo
            Escribir "Ambos carros tuvieron la misma velocidad"
        FinSi
    FinSi
    
FinAlgoritmo
