// PROGRAMA 3: AGENDA DE CONTACTOS

Funcion numeroContactos <- SolicitarCantidadContactos()
    Definir numeroContactos Como Entero
    Repetir
        Escribir "¿Cuántos contactos desea agregar a la agenda?: "
        Leer numeroContactos
        Si numeroContactos <= 0 Entonces
            Escribir "El número de contactos debe ser mayor que cero."
        FinSi
    Hasta Que numeroContactos > 0
FinFuncion

Funcion nombre <- SolicitarNombreContacto(numeroContacto)
    Definir nombre Como Caracter
    Escribir "Ingrese el nombre del contacto #", numeroContacto, ": "
    Leer nombre
FinFuncion

Funcion telefono <- SolicitarTelefono()
    Definir telefono Como Caracter
    Repetir
        Escribir "Ingrese el número de teléfono: "
        Leer telefono
        Si Longitud(telefono) < 7 Entonces
            Escribir "El número de teléfono debe tener al menos 7 dígitos."
        FinSi
    Hasta Que Longitud(telefono) >= 7
FinFuncion

Funcion MostrarAgenda(listaContactos, totalContactos)
    Escribir ""
    Escribir "=== AGENDA DE CONTACTOS ==="
    Escribir "Total de contactos registrados: ", totalContactos
    Escribir ""
    Escribir "LISTA DE CONTACTOS:"
    Escribir listaContactos
    Escribir "============================"
FinFuncion

Algoritmo AgendaContactos
    Definir numeroContactos Como Entero
    Definir nombreContacto, telefono, listaContactos Como Caracter
    Definir i Como Entero
    
    listaContactos <- ""
    
    Escribir "=== AGENDA DE CONTACTOS ==="
    Escribir ""
    
    numeroContactos <- SolicitarCantidadContactos()
    
    Para i <- 1 Hasta numeroContactos Con Paso 1 Hacer
        Escribir ""
        Escribir "--- CONTACTO #", i, " ---"
        
        nombreContacto <- SolicitarNombreContacto(i)
        telefono <- SolicitarTelefono()
        
        // Agregar a la lista
        listaContactos <- listaContactos + i + ". " + nombreContacto + " - Tel: " + telefono + "\n"
        
        Escribir "Contacto registrado: ", nombreContacto
        Escribir "Teléfono: ", telefono
        
    FinPara
    
    MostrarAgenda(listaContactos, numeroContactos)
    
FinAlgoritmo
