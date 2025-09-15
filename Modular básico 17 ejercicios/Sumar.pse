// ========== FUNCIONES ==========

// Funcion para leer un numero con validación
Funcion numero <- LeerNumero(mensaje)
    Escribir mensaje
    Leer numero
FinFuncion

// Funcion para sumar 5 numeros
Funcion suma <- SumarCincoNumeros()
    Definir num1, num2, num3, num4, num5 Como Real
    
    num1 <- LeerNumero("Ingrese el primer número:")
    num2 <- LeerNumero("Ingrese el segundo número:")
    num3 <- LeerNumero("Ingrese el tercer número:")
    num4 <- LeerNumero("Ingrese el cuarto número:")
    num5 <- LeerNumero("Ingrese el quinto número:")
    
    suma <- num1 + num2 + num3 + num4 + num5
FinFuncion

// Funcion para mostrar resultados con análisis
Funcion MostrarResultados(suma)
    Escribir ""
    Escribir "=== RESULTADOS ==="
    Escribir "La suma total es: ", suma
    
    Si suma > 100 Entonces
        Escribir "Análisis: La suma es ALTA (mayor a 100)"
    SiNo
        Si suma > 0 Entonces
            Escribir "Análisis: La suma es POSITIVA"
        SiNo
            Si suma < 0 Entonces
                Escribir "Análisis: La suma es NEGATIVA"
            SiNo
                Escribir "Análisis: La suma es CERO"
            FinSi
        FinSi
    FinSi
    
    Escribir "Promedio de los números: ", suma / 5
FinFuncion

// ========== PROGRAMA PRINCIPAL ==========

Algoritmo SumaCincoNumeros
    Definir resultado Como Real
    
    Escribir "=== PROGRAMA PARA SUMAR 5 NÚMEROS ==="
    Escribir ""
    
    resultado <- SumarCincoNumeros()
    MostrarResultados(resultado)
    
    Escribir ""
    Escribir "¡Gracias por usar el programa!"
    
FinAlgoritmo
