// PROGRAMA 1: REGISTRO DE VEHÍCULOS EN PARQUEADERO

Funcion numeroVehiculos <- SolicitarCantidadVehiculos()
    Definir numeroVehiculos Como Entero
    Repetir
        Escribir "¿Cuántos vehículos ingresarán al parqueadero?: "
        Leer numeroVehiculos
        Si numeroVehiculos <= 0 Entonces
            Escribir "El número de vehículos debe ser mayor que cero."
        FinSi
    Hasta Que numeroVehiculos > 0
FinFuncion

Funcion placa <- SolicitarPlaca(numeroVehiculo)
    Definir placa Como Caracter
    Escribir "Ingrese la placa del vehículo #", numeroVehiculo, ": "
    Leer placa
FinFuncion

Funcion hora <- SolicitarHoraIngreso()
    Definir hora Como Caracter
    Escribir "Ingrese la hora de ingreso (HH:MM): "
    Leer hora
FinFuncion

Funcion MostrarResumenParqueadero(listaVehiculos, totalVehiculos, totalCarros, totalMotos)
    Escribir ""
    Escribir "=== RESUMEN DEL PARQUEADERO ==="
    Escribir "VEHÍCULOS REGISTRADOS:"
    Escribir listaVehiculos
    Escribir "Total de vehículos: ", totalVehiculos
    Escribir "Total de carros: ", totalCarros
    Escribir "Total de motos: ", totalMotos
    Escribir "Espacios disponibles: ", 100 - totalVehiculos
    Escribir "============================="
FinFuncion

Algoritmo RegistroVehiculosParqueadero
    Definir numeroVehiculos, totalCarros, totalMotos Como Entero
    Definir placa, hora, tipo, listaVehiculos Como Caracter
    Definir i Como Entero
    
    totalCarros <- 0
    totalMotos <- 0
    listaVehiculos <- ""
    
    Escribir "=== SISTEMA DE REGISTRO DE PARQUEADERO ==="
    Escribir "Capacidad máxima: 100 vehículos"
    Escribir ""
    
    numeroVehiculos <- SolicitarCantidadVehiculos()
    
    Para i <- 1 Hasta numeroVehiculos Con Paso 1 Hacer
        Escribir ""
        Escribir "--- VEHÍCULO #", i, " ---"
        
        placa <- SolicitarPlaca(i)
        hora <- SolicitarHoraIngreso()
        
        // Determinar tipo de vehículo por la placa (simplificado)
        Si Longitud(placa) >= 6 Entonces
            tipo <- "CARRO"
            totalCarros <- totalCarros + 1
        SiNo
            tipo <- "MOTO"
            totalMotos <- totalMotos + 1
        FinSi
        
        // Acumular información
        listaVehiculos <- listaVehiculos + i + ". " + tipo + " - Placa: " + placa + " - Hora: " + hora + "\n"
        
        Escribir "Vehículo registrado: ", tipo, " con placa ", placa
        Escribir "Hora de ingreso: ", hora
        
    FinPara
    
    MostrarResumenParqueadero(listaVehiculos, numeroVehiculos, totalCarros, totalMotos)
    
FinAlgoritmo
