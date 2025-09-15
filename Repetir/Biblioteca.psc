// PROGRAMA 1: REGISTRO DE BIBLIOTECA

Funcion titulo <- SolicitarTitulo()
    Escribir "Ingrese el título del libro: "
    Leer titulo
FinFuncion

Funcion autor <- SolicitarAutor()
    Escribir "Ingrese el autor del libro: "
    Leer autor
FinFuncion

Funcion paginas <- SolicitarPaginas()
    Definir paginas Como Entero
    Repetir
        Escribir "Ingrese el número de páginas: "
        Leer paginas
        Si paginas <= 0 Entonces
            Escribir "El número de páginas debe ser mayor que cero."
        FinSi
    Hasta Que paginas > 0
FinFuncion

Funcion MostrarListaLibros(listaLibros)
    Escribir ""
    Escribir "=== LISTA DE LIBROS REGISTRADOS ==="
    Si listaLibros = "" Entonces
        Escribir "No hay libros registrados."
    SiNo
        Escribir listaLibros
    FinSi
    Escribir "================================="
FinFuncion

Algoritmo RegistroBiblioteca
    Definir titulo, autor, listaLibros, continuar Como Caracter
    Definir paginas, contador Como Entero
    
    listaLibros <- ""
    contador <- 0
    
    Escribir "=== SISTEMA DE REGISTRO DE BIBLIOTECA ==="
    
    Repetir
        contador <- contador + 1
        Escribir ""
        Escribir "--- LIBRO #", contador, " ---"
        
        titulo <- SolicitarTitulo()
        autor <- SolicitarAutor()
        paginas <- SolicitarPaginas()
        
        // Agregar al acumulador de texto
        listaLibros <- listaLibros + "Libro #" + ConvertirATexto(contador) + ": " + titulo + " - " + autor + " (" + ConvertirATexto(paginas) + " páginas)" + "\n"
        
        Escribir ""
        Escribir "Libro registrado exitosamente."
        
        Repetir
            Escribir "¿Desea registrar otro libro? (s/n): "
            Leer continuar
            Si continuar <> "s" Y continuar <> "S" Y continuar <> "n" Y continuar <> "N" Entonces
                Escribir "Por favor, ingrese 's' para sí o 'n' para no."
            FinSi
        Hasta Que continuar = "s" O continuar = "S" O continuar = "n" O continuar = "N"
        
    Hasta Que continuar = "n" O continuar = "N"
    
    MostrarListaLibros(listaLibros)
    
FinAlgoritmo
