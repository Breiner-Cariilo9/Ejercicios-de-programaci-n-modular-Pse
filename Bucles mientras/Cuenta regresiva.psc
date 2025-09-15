// PROGRAMA 5: CUENTA REGRESIVA

Funcion MostrarCuentaRegresiva(numero)
    Escribir "Iniciando cuenta regresiva desde ", numero, ":"
    
    Mientras numero >= 0 Hacer
        Escribir numero
        Esperar 1000 Milisegundos  // Pausa de 1 segundo
        numero <- numero - 1
    FinMientras
    
    Escribir "¡Tiempo cumplido!"
FinFuncion

Algoritmo CuentaRegresiva
    Definir numero Como Entero
    
    Escribir "=== CUENTA REGRESIVA ==="
    
    // Validar entrada
    Repetir
        Escribir "Ingrese un número entero positivo: "
        Leer numero
        
        Si numero <= 0 Entonces
            Escribir "Por favor, ingrese un número mayor que cero."
        FinSi
    Hasta Que numero > 0
    
    // Ejecutar cuenta regresiva
    MostrarCuentaRegresiva(numero)
    
FinAlgoritmo
