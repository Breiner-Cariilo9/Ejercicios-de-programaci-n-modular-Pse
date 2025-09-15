// PROGRAMA 4: SUMA DE LISTA DE NÚMEROS

Funcion cantidadNumeros <- SolicitarCantidadNumeros()
    Definir cantidadNumeros Como Entero
    Repetir
        Escribir "¿Cuántos números desea ingresar?: "
        Leer cantidadNumeros
        Si cantidadNumeros <= 0 Entonces
            Escribir "La cantidad de números debe ser mayor que cero."
        FinSi
    Hasta Que cantidadNumeros > 0
FinFuncion

Funcion numero <- SolicitarNumero(posicion)
    Definir numero Como Real
    Escribir "Ingrese el número #", posicion, ": "
    Leer numero
FinFuncion

Funcion resultado <- ValidarNumero(numero)
    Si numero >= 0 Entonces
        resultado <- Verdadero
        Escribir "Número válido: ", numero
    SiNo
        resultado <- Falso
        Escribir "Número negativo detectado: ", numero, " (no se sumará)"
    FinSi
FinFuncion

Funcion MostrarResultados(listaNumeros, sumaTotal, numerosValidos, numerosInvalidos)
    Definir promedio Como Real
    
    Escribir ""
    Escribir "=== RESULTADOS DEL PROCESAMIENTO ==="
    Escribir "NÚMEROS INGRESADOS:"
    Escribir listaNumeros
    Escribir "Números válidos procesados: ", numerosValidos
    Escribir "Números inválidos (negativos): ", numerosInvalidos
    Escribir "SUMA TOTAL: ", sumaTotal
    
    Si numerosValidos > 0 Entonces
        promedio <- sumaTotal / numerosValidos
        Escribir "PROMEDIO: ", promedio
    SiNo
        Escribir "No se puede calcular el promedio (no hay números válidos)"
    FinSi
    
    Escribir "===================================="
FinFuncion

Algoritmo SumaListaNumeros
    Definir cantidadNumeros, numerosValidos, numerosInvalidos Como Entero
    Definir numero, sumaTotal Como Real
    Definir listaNumeros Como Caracter
    Definir esValido Como Logico
    Definir i Como Entero
    
    sumaTotal <- 0
    numerosValidos <- 0
    numerosInvalidos <- 0
    listaNumeros <- ""
    
    Escribir "=== PROCESADOR DE LISTA DE NÚMEROS ==="
    Escribir "Nota: Los números negativos no serán sumados"
    Escribir ""
    
    cantidadNumeros <- SolicitarCantidadNumeros()
    
    Para i <- 1 Hasta cantidadNumeros Con Paso 1 Hacer
        Escribir ""
        Escribir "--- NÚMERO #", i, " ---"
        
        numero <- SolicitarNumero(i)
        esValido <- ValidarNumero(numero)
        
        // Agregar a la lista
        listaNumeros <- listaNumeros + i + ". " + ConvertirATexto(numero)
        
        Si esValido Entonces
            sumaTotal <- sumaTotal + numero
            numerosValidos <- numerosValidos + 1
            listaNumeros <- listaNumeros + " ✓" + "\n"
        SiNo
            numerosInvalidos <- numerosInvalidos + 1
            listaNumeros <- listaNumeros + " ✗" + "\n"
        FinSi
        
        Escribir "Suma parcial: ", sumaTotal
        
    FinPara
    
    MostrarResultados(listaNumeros, sumaTotal, numerosValidos, numerosInvalidos)
    
FinAlgoritmo
