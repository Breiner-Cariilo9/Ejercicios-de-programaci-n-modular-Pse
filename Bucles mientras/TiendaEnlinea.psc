// EJERCICIO 2: Tienda en línea - El usuario agrega productos mientras desee comprar más

Funcion costoTotal <- CalcularCostoProducto(precio, cantidad)
    costoTotal <- precio * cantidad
FinFuncion

Funcion MostrarProductoAgregado(nombreProducto, precio, cantidad, subtotal)
    Escribir "✅ PRODUCTO AGREGADO AL CARRITO"
    Escribir "🛍️ Producto: ", nombreProducto
    Escribir "💰 Precio unitario: $", precio
    Escribir "📦 Cantidad: ", cantidad, " unidades"
    Escribir "💵 Subtotal: $", subtotal
    Escribir "----------------------------------------"
FinFuncion

Funcion MostrarCarritoCompleto(totalCarrito, cantidadProductos)
    Escribir "=== RESUMEN DEL CARRITO ==="
    Escribir "🛒 Productos en el carrito: ", cantidadProductos
    Escribir "💳 Total de la compra: $", totalCarrito
    Escribir ""
    
    // Calcular descuentos por volumen
    Si totalCarrito >= 200 Entonces
        Escribir "🎉 ¡DESCUENTO ESPECIAL! 15% por compra mayor a $200"
        Escribir "💰 Total con descuento: $", (totalCarrito * 0.85)
        Escribir "💵 Ahorro: $", (totalCarrito * 0.15)
    SiNo
        Si totalCarrito >= 100 Entonces
            Escribir "🎊 ¡DESCUENTO! 10% por compra mayor a $100"
            Escribir "💰 Total con descuento: $", (totalCarrito * 0.90)
            Escribir "💵 Ahorro: $", (totalCarrito * 0.10)
        SiNo
            Si totalCarrito >= 50 Entonces
                Escribir "🎁 ¡DESCUENTO! 5% por compra mayor a $50"
                Escribir "💰 Total con descuento: $", (totalCarrito * 0.95)
                Escribir "💵 Ahorro: $", (totalCarrito * 0.05)
            SiNo
                Escribir "💡 Agregue $", (50 - totalCarrito), " más para obtener descuento"
            FinSi
        FinSi
    FinSi
    
    Escribir "📦 Envío estimado: 2-3 días hábiles"
    Escribir "----------------------------------------"
FinFuncion

Algoritmo TiendaEnLinea
    Definir nombreProducto Como Caracter
    Definir precioProducto, cantidadProducto, subtotal, totalCompra Como Real
    Definir seguirComprando Como Logico
    Definir respuestaContinuar Como Caracter
    Definir numeroProductos Como Entero
    
    // Inicialización
    totalCompra <- 0
    numeroProductos <- 0
    seguirComprando <- Verdadero
    
    Escribir "=== TIENDA EN LÍNEA 'TECH STORE' ==="
    Escribir "🛒 Sistema de carrito de compras"
    Escribir "🎯 ¡Descuentos por volumen de compra!"
    Escribir ""
    
    Mientras seguirComprando = Verdadero Hacer
        numeroProductos <- numeroProductos + 1
        
        Escribir "=== PRODUCTO #", numeroProductos, " ==="
        Escribir "Ingrese el nombre del producto:"
        Leer nombreProducto
        
        Escribir "Ingrese el precio del producto:"
        Leer precioProducto
        
        Escribir "Ingrese la cantidad que desea comprar:"
        Leer cantidadProducto
        
        // Validaciones básicas
        Si precioProducto > 0 Y cantidadProducto > 0 Entonces
            subtotal <- CalcularCostoProducto(precioProducto, cantidadProducto)
            totalCompra <- totalCompra + subtotal
            
            Escribir ""
            MostrarProductoAgregado(nombreProducto, precioProducto, cantidadProducto, subtotal)
            Escribir ""
            MostrarCarritoCompleto(totalCompra, numeroProductos)
            
            Escribir ""
            Escribir "¿Desea agregar otro producto al carrito? (S/N):"
            Leer respuestaContinuar
            respuestaContinuar <- Mayusculas(respuestaContinuar)
            
            Si respuestaContinuar = "N" Entonces
                seguirComprando <- Falso
                Escribir "🛒 Finalizando compra..."
            SiNo
                Escribir "➕ Continuando con la compra..."
            FinSi
            
        SiNo
            Escribir "❌ Error: Ingrese valores válidos (mayores a 0)"
            Escribir "🔄 Intente nuevamente con este producto"
            numeroProductos <- numeroProductos - 1  // No contar producto inválido
        FinSi
        
        Escribir ""
        
    FinMientras
    
    // Proceso de checkout
    Si totalCompra > 0 Entonces
        Escribir "=== PROCESO DE CHECKOUT ==="
        MostrarCarritoCompleto(totalCompra, numeroProductos)
        
        Escribir ""
        Escribir "=== OPCIONES DE PAGO ==="
        Escribir "💳 Tarjeta de crédito - Sin recargo"
        Escribir "💰 Efectivo - 3% descuento adicional"
        Escribir "🏦 Transferencia - 2% descuento adicional"
        
        Escribir ""
        Escribir "=== INFORMACIÓN DE ENTREGA ==="
        Si totalCompra >= 75 Entonces
            Escribir "🚚 ¡ENVÍO GRATIS! Por compra mayor a $75"
        SiNo
            Escribir "📦 Costo de envío: $5.99"
            Escribir "💡 Agregue $", (75 - totalCompra), " más para envío gratis"
        FinSi
        
        Escribir ""
        Escribir "=== RESUMEN FINAL ==="
        Escribir "🎊 ¡Gracias por su compra!"
        Escribir "📧 Recibirá confirmación por email"
        Escribir "📱 Puede rastrear su pedido con el código: TEC", numeroProductos * 100
        
    SiNo
        Escribir "🛒 No se agregaron productos al carrito"
        Escribir "👋 ¡Esperamos verle pronto!"
    FinSi
    
    Escribir ""
    Escribir "Gracias por usar Tech Store"
    
FinAlgoritmo
