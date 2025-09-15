// PROGRAMA 4: SIMULADOR DE VIAJE EN COCHE

Funcion tiempo <- CalcularTiempoViaje(distancia, velocidad)
    tiempo <- distancia / velocidad
FinFuncion

Algoritmo SimuladorViajeEnCoche
    Definir distancia, velocidad, tiempo Como Real
    Definir continuar Como Caracter
    
    Escribir "=== SIMULADOR DE VIAJE EN COCHE ==="
    
    // Obtener datos del primer viaje
    Escribir "Ingrese la distancia total del viaje (km): "
    Leer distancia
    Escribir "Ingrese la velocidad promedio del coche (km/h): "
    Leer velocidad
    
    // Calcular y mostrar tiempo del primer viaje
    tiempo <- CalcularTiempoViaje(distancia, velocidad)
    Escribir "Tiempo estimado de viaje: ", tiempo, " horas"
    
    // Bucle para viajes adicionales
    Escribir "¿Desea hacer otro viaje? (s/n): "
    Leer continuar
    
    Mientras continuar = "s" O continuar = "S" Hacer
        Escribir ""
        Escribir "--- Nuevo viaje ---"
        Escribir "Ingrese la distancia total del viaje (km): "
        Leer distancia
        Escribir "Ingrese la velocidad promedio del coche (km/h): "
        Leer velocidad
        
        tiempo <- CalcularTiempoViaje(distancia, velocidad)
        Escribir "Tiempo estimado de viaje: ", tiempo, " horas"
        
        Escribir "¿Desea hacer otro viaje? (s/n): "
        Leer continuar
    FinMientras
    
    Escribir "¡Gracias por usar el simulador de viajes!"
    
FinAlgoritmo
