// PROGRAMA 5: GESTIÓN DE TAREAS

Funcion descripcion <- SolicitarDescripcion(numeroTarea)
    Definir descripcion Como Caracter
    Escribir "Ingrese la descripción de la tarea #", numeroTarea, ": "
    Leer descripcion
FinFuncion

Funcion fecha <- SolicitarFechaVencimiento()
    Definir fecha Como Caracter
    Escribir "Ingrese la fecha de vencimiento (dd/mm/yyyy): "
    Leer fecha
FinFuncion

Funcion ValidarFecha(fecha)
    // Función básica de validación (se puede mejorar)
    Si Longitud(fecha) = 10 Entonces
        Escribir "Fecha registrada: ", fecha
    SiNo
        Escribir "Formato de fecha no válido, pero se registrará como: ", fecha
    FinSi
FinFuncion

Funcion MostrarListaTareas(listaTareas, cantidadTareas)
    Escribir ""
    Escribir "=== LISTA DE TAREAS REGISTRADAS ==="
    Si cantidadTareas = 0 Entonces
        Escribir "No hay tareas registradas."
    SiNo
        Escribir "Total de tareas: ", cantidadTareas
        Escribir ""
        Escribir listaTareas
    FinSi
    Escribir "=================================="
FinFuncion

Algoritmo GestionTareas
    Definir descripcion, fecha, listaTareas, continuar Como Caracter
    Definir cantidadTareas Como Entero
    
    listaTareas <- ""
    cantidadTareas <- 0
    
    Escribir "=== SISTEMA DE GESTIÓN DE TAREAS ==="
    Escribir ""
    
    Repetir
        cantidadTareas <- cantidadTareas + 1
        
        Escribir "--- NUEVA TAREA ---"
        descripcion <- SolicitarDescripcion(cantidadTareas)
        fecha <- SolicitarFechaVencimiento()
        ValidarFecha(fecha)
        
        // Agregar al acumulador de texto
        listaTareas <- listaTareas + "Tarea #" + ConvertirATexto(cantidadTareas) + ":\n"
        listaTareas <- listaTareas + "  Descripción: " + descripcion + "\n"
        listaTareas <- listaTareas + "  Vencimiento: " + fecha + "\n"
        listaTareas <- listaTareas + "  Estado: PENDIENTE\n\n"
        
        Escribir "Tarea registrada exitosamente."
        Escribir ""
        
        Repetir
            Escribir "¿Desea agregar otra tarea? (s/n): "
            Leer continuar
            Si continuar <> "s" Y continuar <> "S" Y continuar <> "n" Y continuar <> "N" Entonces
                Escribir "Por favor, ingrese 's' para sí o 'n' para no."
            FinSi
        Hasta Que continuar = "s" O continuar = "S" O continuar = "n" O continuar = "N"
        
    Hasta Que continuar = "n" O continuar = "N"
    
    MostrarListaTareas(listaTareas, cantidadTareas)
    
FinAlgoritmo
