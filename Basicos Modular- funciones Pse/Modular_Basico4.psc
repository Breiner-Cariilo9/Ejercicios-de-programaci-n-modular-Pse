Algoritmo Modular_Basico4
    Dato_estudiante <- Tomar_dato1      // Pregunta al usuario
    Dato_Esestudiante <- Tomar_dato2(Dato_estudiante)  // Valida la respuesta
    Dato_mensaje <- Mensajee(Dato_Esestudiante)         // Crea mensaje final
    Imprimir Dato_mensaje
FinAlgoritmo


Funcion Estudiante <- Tomar_dato1
    Escribir "¿Es usted estudiante? (si/no): "
    Leer Estudiante
FinFuncion


Funcion Esestudiante <- Tomar_dato2(Estudiante)
    Si Estudiante = "si" O Estudiante = "SI" O Estudiante = "Si" O Estudiante = "sI" Entonces
        Esestudiante <- Verdadero
    SiNo
        Esestudiante <- Falso
    FinSi
FinFuncion


Funcion mensaje <- Mensajee(Esestudiante)
    Si Esestudiante = Verdadero Entonces
        mensaje <- "Usted es un estudiante sena [VERDADERO]"
    SiNo
        mensaje <- "Usted es un estudiante sena [FALSO]"
    FinSi
FinFuncion