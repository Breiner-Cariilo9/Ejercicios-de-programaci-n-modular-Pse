// ========== FUNCIONES ==========

// Función para leer año de nacimiento con validación
Funcion anioNacimiento <- LeerAnioNacimiento(numeroPersona)
    Definir anioActual Como Entero
    anioActual <- 2024
    
    Escribir "Persona ", numeroPersona, " - Ingrese el año de nacimiento:"
    Leer anioNacimiento
    
    Mientras anioNacimiento < 1900 O anioNacimiento > anioActual Hacer
        Escribir "Error: Año inválido. Debe estar entre 1900 y ", anioActual
        Escribir "Ingrese el año de nacimiento:"
        Leer anioNacimiento
    FinMientras
FinFuncion

// Función para calcular edad y clasificar por generación
Funcion edad <- CalcularEdadYGeneracion(anioNacimiento, anioActual, generacion Por Referencia)
    edad <- anioActual - anioNacimiento
    
    // Clasificación por generaciones
    Si anioNacimiento >= 2010 Entonces
        generacion <- "Generación Alfa"
    SiNo
        Si anioNacimiento >= 1997 Entonces
            generacion <- "Generación Z"
        SiNo
            Si anioNacimiento >= 1981 Entonces
                generacion <- "Millennial"
            SiNo
                Si anioNacimiento >= 1965 Entonces
                    generacion <- "Generación X"
                SiNo
                    Si anioNacimiento >= 1946 Entonces
                        generacion <- "Baby Boomer"
                    SiNo
                        generacion <- "Generación Silenciosa"
                    FinSi
                FinSi
            FinSi
        FinSi
    FinSi
FinFuncion

// Función para mostrar análisis completo de las 3 personas
Funcion MostrarAnalisisEdades(ED1)
    Definir anioActual Como Entero
    Definir anio1, anio2, anio3 Como Entero
    Definir edad1, edad2, edad3 Como Entero
    Definir gen1, gen2, gen3 Como Caracter
    Definir sumaEdades, promedioEdades Como Real
    Definir mayorEdad, menorEdad Como Entero
    
    anioActual <- 2024
    
    Escribir "=== INGRESO DE DATOS ==="
    anio1 <- LeerAnioNacimiento(1)
    anio2 <- LeerAnioNacimiento(2)
    anio3 <- LeerAnioNacimiento(3)
    
    edad1 <- CalcularEdadYGeneracion(anio1, anioActual, gen1)
    edad2 <- CalcularEdadYGeneracion(anio2, anioActual, gen2)
    edad3 <- CalcularEdadYGeneracion(anio3, anioActual, gen3)
    
    sumaEdades <- edad1 + edad2 + edad3
    promedioEdades <- sumaEdades / 3
    
    // Encontrar mayor y menor edad
    mayorEdad <- edad1
    menorEdad <- edad1
    
    Si edad2 > mayorEdad Entonces
        mayorEdad <- edad2
    FinSi
    Si edad3 > mayorEdad Entonces
        mayorEdad <- edad3
    FinSi
    
    Si edad2 < menorEdad Entonces
        menorEdad <- edad2
    FinSi
    Si edad3 < menorEdad Entonces
        menorEdad <- edad3
    FinSi
    
    Escribir ""
    Escribir "=== RESULTADOS INDIVIDUALES ==="
    Escribir "Persona 1: ", edad1, " años (", gen1, ")"
    Escribir "Persona 2: ", edad2, " años (", gen2, ")"
    Escribir "Persona 3: ", edad3, " años (", gen3, ")"
    
    Escribir ""
    Escribir "=== ANÁLISIS ESTADÍSTICO ==="
    Escribir "Suma total de edades:    ", sumaEdades, " años"
    Escribir "Promedio de edad:        ", promedioEdades, " años"
    Escribir "Mayor edad:              ", mayorEdad, " años"
    Escribir "Menor edad:              ", menorEdad, " años"
    Escribir "Diferencia de edades:    ", mayorEdad - menorEdad, " años"
    
    Escribir ""
    Escribir "=== CLASIFICACIÓN ETARIA ==="
    Si promedioEdades >= 65 Entonces
        Escribir "👴 Grupo de ADULTOS MAYORES"
    SiNo
        Si promedioEdades >= 40 Entonces
            Escribir "👨 Grupo de ADULTOS MADUROS"
        SiNo
            Si promedioEdades >= 25 Entonces
                Escribir "🧑 Grupo de ADULTOS JÓVENES"
            SiNo
                Si promedioEdades >= 18 Entonces
                    Escribir "🙋 Grupo de JÓVENES ADULTOS"
                SiNo
                    Escribir "👶 Grupo de MENORES DE EDAD"
                FinSi
            FinSi
        FinSi
    FinSi
FinFuncion

// ========== PROGRAMA PRINCIPAL ==========

Algoritmo EdadTresPersonas
    Escribir "=== CALCULADORA DE EDADES - 3 PERSONAS ==="
    Escribir "Programa para calcular y analizar las edades de 3 personas"
    Escribir "Año actual: 2024"
    Escribir ""
    
    MostrarAnalisisEdades(ED1)
    
    Escribir ""
    Escribir "¡Gracias por usar el calculador de edades!"
    
FinAlgoritmo
