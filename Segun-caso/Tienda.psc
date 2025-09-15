// EJERCICIO 1: Sistema de ventas con tres tipos de productos y descuentos específicos

Funcion esPositivo <- ValidarCantidad(cantidad)
    Si cantidad > 0 Entonces
        esPositivo <- Verdadero
    SiNo
        esPositivo <- Falso
    FinSi
FinFuncion

Funcion descuento <- CalcularDescuentoPorTipo(tipoProducto)
    Segun tipoProducto Hacer
        Caso "A":
            descuento <- 0.10  // 10% descuento en alimentos
        Caso "V":
            descuento <- 0.05  // 5% descuento en vestimenta
        Caso "E":
            descuento <- 0.00  // Sin descuento en electrónicos
        De Otro Modo:
            descuento <- 0.00  // Sin descuento para tipos no válidos
    FinSegun
FinFuncion

Funcion MostrarFacturaDetallada(tipo, cantidad, precioBase, subtotal, descuento, total)
    Escribir "=== FACTURA DE COMPRA ==="
    
    Segun tipo Hacer
        Caso "A":
            Escribir "📦 Producto: ALIMENTOS"
            Escribir "🍎 Categoría: Productos alimenticios"
        Caso "V":
            Escribir "👕 Producto: VESTIMENTA"
            Escribir "👔 Categoría: Ropa y accesorios"
        Caso "E":
            Escribir "📱 Producto: ELECTRÓNICOS"
            Escribir "🔌 Categoría: Dispositivos electrónicos"
        De Otro Modo:
            Escribir "❓ Producto: DESCONOCIDO"
    FinSegun
    
    Escribir "Cantidad: ", cantidad, " unidades"
    Escribir "Precio unitario: $", precioBase
    Escribir "Subtotal: $", subtotal
    
    Si descuento > 0 Entonces
        Escribir "🎉 Descuento aplicado: ", (descuento * 100), "%"
        Escribir "💰 Ahorro: $", (subtotal * descuento)
    SiNo
        Escribir "📋 Sin descuento aplicado"
    FinSi
    
    Escribir "----------------------------------------"
    Escribir "💳 TOTAL A PAGAR: $", total
FinFuncion

Algoritmo SistemaVentasConDescuentos
    Definir tipoProducto Como Caracter
    Definir cantidad, precioBase, subtotal, descuento, totalConDescuento, totalSinDescuento Como Real
    Definir continuar Como Caracter
    
    Escribir "=== SISTEMA DE VENTAS INTELIGENTE ==="
    Escribir "Tipos de productos disponibles:"
    Escribir "🍎 A = Alimentos (10% descuento)"
    Escribir "👕 V = Vestimenta (5% descuento)"
    Escribir "📱 E = Electrónicos (sin descuento)"
    Escribir ""
    
    Repetir
        Escribir "Ingrese el tipo de producto (A, V, E):"
        Leer tipoProducto
        tipoProducto <- Mayusculas(tipoProducto)
        
        Segun tipoProducto Hacer
            Caso "A", "V", "E":
                Escribir "✅ Tipo de producto válido"
                
                Repetir
                    Escribir "Ingrese la cantidad de unidades:"
                    Leer cantidad
                    
                    Si ValidarCantidad(cantidad) Entonces
                        Escribir "✅ Cantidad válida"
                    SiNo
                        Escribir "❌ Error: La cantidad debe ser un número positivo"
                    FinSi
                Hasta Que ValidarCantidad(cantidad)
                
                Escribir "Ingrese el precio base por unidad:"
                Leer precioBase
                
                // Calcular costos
                subtotal <- cantidad * precioBase
                descuento <- CalcularDescuentoPorTipo(tipoProducto)
                totalConDescuento <- subtotal * (1 - descuento)
                totalSinDescuento <- subtotal
                
                // Mostrar factura
                MostrarFacturaDetallada(tipoProducto, cantidad, precioBase, subtotal, descuento, totalConDescuento)
                
                Escribir ""
                Escribir "=== COMPARATIVA ==="
                Escribir "Sin descuento: $", totalSinDescuento
                Escribir "Con descuento: $", totalConDescuento
                Si descuento > 0 Entonces
                    Escribir "💰 Usted ahorra: $", (totalSinDescuento - totalConDescuento)
                FinSi
                
            De Otro Modo:
                Escribir "❌ Error: Tipo de producto no válido"
                Escribir "Use solamente: A (Alimentos), V (Vestimenta), E (Electrónicos)"
        FinSegun
        
        Escribir ""
        Escribir "¿Desea realizar otra compra? (S/N):"
        Leer continuar
        continuar <- Mayusculas(continuar)
        Escribir ""
        
    Hasta Que continuar = "N"
    
    Escribir "Gracias por su compra. ¡Vuelva pronto!"
    
FinAlgoritmo
