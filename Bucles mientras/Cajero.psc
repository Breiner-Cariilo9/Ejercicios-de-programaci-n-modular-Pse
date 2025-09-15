// EJERCICIO 1: Cajero automático - El usuario retira dinero mientras tenga saldo suficiente

Funcion esValido <- ValidarMonto(montoRetiro, saldoDisponible)
    Si montoRetiro > 0 Y montoRetiro <= saldoDisponible Entonces
        esValido <- Verdadero
    SiNo
        esValido <- Falso
    FinSi
FinFuncion

Funcion nuevoSaldo <- RealizarRetiro(saldoActual, montoRetiro)
    nuevoSaldo <- saldoActual - montoRetiro
FinFuncion

Funcion MostrarEstadoCuenta(saldo, transaccion, montoTransaccion)
    Escribir "=== ESTADO DE CUENTA ==="
    Escribir "💰 Saldo actual: $", saldo
    
    Si transaccion = "RETIRO" Entonces
        Escribir "📤 Último retiro: $", montoTransaccion
        Escribir "✅ Transacción exitosa"
    SiNo
        Si transaccion = "ERROR" Entonces
            Escribir "❌ Último intento: $", montoTransaccion
            Escribir "🚫 Transacción rechazada"
        FinSi
    FinSi
    
    Escribir "----------------------------------------"
    
    // Clasificar estado del saldo
    Si saldo >= 1000 Entonces
        Escribir "🟢 Saldo saludable"
    SiNo
        Si saldo >= 500 Entonces
            Escribir "🟡 Saldo moderado"
        SiNo
            Si saldo >= 100 Entonces
                Escribir "🟠 Saldo bajo - Considere depositar"
            SiNo
                Si saldo > 0 Entonces
                    Escribir "🔴 Saldo crítico - Deposite pronto"
                SiNo
                    Escribir "⚫ Sin fondos disponibles"
                FinSi
            FinSi
        FinSi
    FinSi
FinFuncion

Algoritmo CajeroAutomatico
    Definir saldoCuenta, montoRetiro Como Real
    Definir continuarOperacion Como Logico
    Definir respuesta Como Caracter
    Definir numeroTransacciones Como Entero
    
    // Inicialización
    saldoCuenta <- 2000  // Saldo inicial
    continuarOperacion <- Verdadero
    numeroTransacciones <- 0
    
    Escribir "=== CAJERO AUTOMÁTICO BANCOLOMBIA ==="
    Escribir "💳 Bienvenido a su cuenta"
    Escribir "💰 Saldo inicial: $", saldoCuenta
    Escribir ""
    
    Mientras continuarOperacion = Verdadero Y saldoCuenta > 0 Hacer
        Escribir "=== TRANSACCIÓN #", (numeroTransacciones + 1), " ==="
        MostrarEstadoCuenta(saldoCuenta, "", 0)
        Escribir ""
        Escribir "Ingrese el monto que desea retirar:"
        Leer montoRetiro
        
        Si ValidarMonto(montoRetiro, saldoCuenta) Entonces
            saldoCuenta <- RealizarRetiro(saldoCuenta, montoRetiro)
            numeroTransacciones <- numeroTransacciones + 1
            
            Escribir ""
            Escribir "💸 Retirando $", montoRetiro, "..."
            Escribir "✅ Retiro exitoso"
            MostrarEstadoCuenta(saldoCuenta, "RETIRO", montoRetiro)
            
            // Verificar si aún puede realizar retiros
            Si saldoCuenta > 0 Entonces
                Escribir ""
                Escribir "¿Desea realizar otro retiro? (S/N):"
                Leer respuesta
                respuesta <- Mayusculas(respuesta)
                
                Si respuesta = "N" Entonces
                    continuarOperacion <- Falso
                    Escribir "🏧 Sesión finalizada por el usuario"
                FinSi
            SiNo
                Escribir ""
                Escribir "🚫 No puede realizar más retiros (saldo: $0)"
                continuarOperacion <- Falso
            FinSi
            
        SiNo
            Escribir ""
            Si montoRetiro <= 0 Entonces
                Escribir "❌ ERROR: Monto inválido"
                Escribir "💡 El monto debe ser mayor a $0"
            SiNo
                Escribir "❌ ERROR: Fondos insuficientes"
                Escribir "💰 Saldo disponible: $", saldoCuenta
                Escribir "📤 Monto solicitado: $", montoRetiro
                Escribir "🚫 Exceso: $", (montoRetiro - saldoCuenta)
            FinSi
            
            MostrarEstadoCuenta(saldoCuenta, "ERROR", montoRetiro)
            
            Escribir ""
            Escribir "¿Desea intentar con otro monto? (S/N):"
            Leer respuesta
            respuesta <- Mayusculas(respuesta)
            
            Si respuesta = "N" Entonces
                continuarOperacion <- Falso
                Escribir "🏧 Sesión finalizada"
            FinSi
        FinSi
        
        Escribir ""
        
    FinMientras
    
    // Resumen de la sesión
    Escribir "=== RESUMEN DE SESIÓN ==="
    Escribir "🏦 Total de transacciones exitosas: ", numeroTransacciones
    Escribir "💰 Saldo final: $", saldoCuenta
    
    Si numeroTransacciones > 0 Entonces
        Escribir "📊 Dinero retirado en total: $", (2000 - saldoCuenta)
    FinSi
    
    Si saldoCuenta = 0 Entonces
        Escribir "⚠️ Cuenta sin fondos - Considere realizar un depósito"
    FinSi
    
    Escribir ""
    Escribir "Gracias por usar el Cajero Automático"
    Escribir "🕒 Recuerde que puede depositar en cualquier momento"
    
FinAlgoritmo
