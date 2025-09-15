// EJERCICIO 16: Determinar el total a pagar por servicios sumando consumos

Funcion totalServicios <- CalcularTotalServicios()
    Definir costo, totalServicios, costoMayor, costoMenor Como Real
    Definir continuar Como Caracter
    Definir numServicios Como Entero
    Definir nombreServicio Como Caracter
    
    totalServicios <- 0
    numServicios <- 0
    costoMayor <- 0
    costoMenor <- 999999
    
    Escribir "=== CÁLCULO TOTAL DE SERVICIOS ==="
    Escribir ""
    
    Repetir
        numServicios <- numServicios + 1
        Escribir "SERVICIO ", numServicios, ":"
        Escribir "Nombre del servicio:"
        Leer nombreServicio
        Escribir "Ingrese el costo del servicio:"
        Leer costo
        
        totalServicios <- totalServicios + costo
        
        // Encontrar el mayor y menor costo
        Si costo > costoMayor Entonces
            costoMayor <- costo
        FinSi
        
        Si costo < costoMenor Entonces
            costoMenor <- costo
        FinSi
        
        Escribir "Servicio registrado: ", nombreServicio, " - $", costo
        Escribir ""
        Escribir "¿Desea agregar otro servicio? (S/N):"
        Leer continuar
        continuar <- Mayusculas(continuar)
        Escribir ""
        
    Hasta Que continuar = "N"
    
    Escribir "=== ESTADÍSTICAS ==="
    Escribir "Número de servicios: ", numServicios
    Escribir "Servicio más caro: $", costoMayor
    Escribir "Servicio más barato: $", costoMenor
    
    CalcularTotalServicios <- totalServicios
FinFuncion

Algoritmo TotalPorServicios
    Definir total, promedio Como Real
    
    total <- CalcularTotalServicios()
    
    Escribir ""
    Escribir "=== FACTURA DE SERVICIOS ==="
    Escribir "TOTAL A PAGAR: $", total
    
    // Aplicar descuentos según el monto
    Si total > 1000 Entonces
        Escribir ""
        Escribir "🎉 ¡Descuento del 10% por consumo mayor a $1000!"
        Escribir "Descuento: $", total * 0.10
        Escribir "Total con descuento: $", total * 0.90
    SiNo
        Si total > 500 Entonces
            Escribir ""
            Escribir "🎊 ¡Descuento del 5% por consumo mayor a $500!"
            Escribir "Descuento: $", total * 0.05
            Escribir "Total con descuento: $", total * 0.95
        FinSi
    FinSi
    
FinAlgoritmo
