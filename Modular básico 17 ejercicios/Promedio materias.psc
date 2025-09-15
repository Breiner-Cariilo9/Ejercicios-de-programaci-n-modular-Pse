// ========== FUNCIONES ==========

// Función para leer notas de una materia
Funcion promedio <- LeerNotasMateria(nombreMateria)
    Definir nota1, nota2, nota3 Como Real
    
    Escribir "=== ", nombreMateria, " ==="
    Escribir "Ingrese la primera nota (0-5):"
    Leer nota1
    Escribir "Ingrese la segunda nota (0-5):"
    Leer nota2
    Escribir "Ingrese la tercera nota (0-5):"
    Leer nota3
    
    promedio <- (nota1 + nota2 + nota3) / 3
    Escribir "Promedio de ", nombreMateria, ": ", promedio
FinFuncion

// Función para calcular promedio general de las 3 materias
Funcion promedioGeneral <- CalcularPromedioGeneral()
    Definir promedio1, promedio2, promedio3 Como Real
    
    promedio1 <- LeerNotasMateria("MATEMÁTICAS")
    promedio2 <- LeerNotasMateria("CIENCIAS")
    promedio3 <- LeerNotasMateria("ESPAÑOL")
    
    promedioGeneral <- (promedio1 + promedio2 + promedio3) / 3
FinFuncion

// Función para mostrar resultado final con clasificación
Funcion MostrarResultadoFinal(promedio)
    Escribir ""
    Escribir "=== RESULTADO FINAL ==="
    Escribir "Promedio general: ", promedio
    
    Si promedio >= 4.5 Entonces
        Escribir "Clasificación: EXCELENTE 🎉"
        Escribir "Estado: APROBADO"
    SiNo
        Si promedio >= 4.0 Entonces
            Escribir "Clasificación: MUY BUENO 👍"
            Escribir "Estado: APROBADO"
        SiNo
            Si promedio >= 3.5 Entonces
                Escribir "Clasificación: BUENO ✅"
                Escribir "Estado: APROBADO"
            SiNo
                Si promedio >= 3.0 Entonces
                    Escribir "Clasificación: ACEPTABLE ⚠️"
                    Escribir "Estado: APROBADO (por poco)"
                SiNo
                    Escribir "Clasificación: INSUFICIENTE ❌"
                    Escribir "Estado: REPROBADO"
                    Escribir "Necesita mejorar sus calificaciones"
                FinSi
            FinSi
        FinSi
    FinSi
FinFuncion

// ========== PROGRAMA PRINCIPAL ==========

Algoritmo PromedioMaterias
    Definir promedioFinal Como Real
    
    Escribir "=== CALCULADORA DE PROMEDIO DE MATERIAS ==="
    Escribir "Calculará el promedio de 3 notas por cada una de las 3 materias"
    Escribir ""
    
    promedioFinal <- CalcularPromedioGeneral()
    MostrarResultadoFinal(promedioFinal)
    
    Escribir ""
    Escribir "¡Gracias por usar el programa!"
    
FinAlgoritmo
