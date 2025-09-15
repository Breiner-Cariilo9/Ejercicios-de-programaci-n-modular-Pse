// EJERCICIO 2: Asistente nutricional - Calcula IMC y determina categoría

Funcion imc <- CalcularIMC(peso, altura)
    imc <- peso / (altura * altura)
FinFuncion

Funcion categoria <- DeterminarCategoriaIMC(imc)
    Segun Trunc(imc) Hacer
        Caso 0 Hasta 18:
            Si imc < 18.5 Entonces
                categoria <- 1  // Bajo peso
            SiNo
                categoria <- 2  // Peso normal
            FinSi
        Caso 19 Hasta 24:
            categoria <- 2  // Peso normal
        Caso 25 Hasta 29:
            categoria <- 3  // Sobrepeso
        De Otro Modo:
            categoria <- 4  // Obesidad
    FinSegun
FinFuncion

Funcion MostrarRecomendacionesSegunCategoria(categoria, imc, peso, altura)
    Escribir "=== ANÁLISIS NUTRICIONAL COMPLETO ==="
    Escribir "👤 Datos del paciente:"
    Escribir "   Peso: ", peso, " kg"
    Escribir "   Altura: ", altura, " m"
    Escribir "   IMC calculado: ", imc
    Escribir ""
    
    Segun categoria Hacer
        Caso 1:
            Escribir "📊 DIAGNÓSTICO: BAJO PESO"
            Escribir "⚠️ Su IMC indica peso insuficiente"
            Escribir ""
            Escribir "🍎 RECOMENDACIONES NUTRICIONALES:"
            Escribir "• Aumentar la ingesta calórica diaria"
            Escribir "• Consumir proteínas de alta calidad"
            Escribir "• Incluir grasas saludables (aguacate, frutos secos)"
            Escribir "• Realizar comidas más frecuentes (5-6 al día)"
            Escribir "• Consultar con un nutricionista"
            Escribir ""
            Escribir "🏋️ EJERCICIO RECOMENDADO:"
            Escribir "• Ejercicios de resistencia para ganar masa muscular"
            Escribir "• Evitar ejercicio cardiovascular excesivo"
            
        Caso 2:
            Escribir "📊 DIAGNÓSTICO: PESO NORMAL"
            Escribir "✅ ¡Felicitaciones! Su peso está en el rango saludable"
            Escribir ""
            Escribir "🍎 RECOMENDACIONES DE MANTENIMIENTO:"
            Escribir "• Mantener una dieta balanceada"
            Escribir "• Consumir 5 porciones de frutas/verduras diarias"
            Escribir "• Beber al menos 2 litros de agua"
            Escribir "• Limitar alimentos procesados"
            Escribir ""
            Escribir "🏋️ EJERCICIO RECOMENDADO:"
            Escribir "• 150 minutos de actividad moderada semanal"
            Escribir "• Combinar cardio y ejercicios de fuerza"
            
        Caso 3:
            Escribir "📊 DIAGNÓSTICO: SOBREPESO"
            Escribir "⚠️ Su IMC indica exceso de peso"
            Escribir ""
            Escribir "🍎 RECOMENDACIONES PARA REDUCIR PESO:"
            Escribir "• Crear un déficit calórico moderado (300-500 cal/día)"
            Escribir "• Reducir porciones gradualmente"
            Escribir "• Eliminar bebidas azucaradas"
            Escribir "• Aumentar consumo de fibra y proteína"
            Escribir "• Planificar comidas semanalmente"
            Escribir ""
            Escribir "🏋️ EJERCICIO RECOMENDADO:"
            Escribir "• Caminar 45-60 minutos diarios"
            Escribir "• Ejercicios de fuerza 2-3 veces por semana"
            
        Caso 4:
            Escribir "📊 DIAGNÓSTICO: OBESIDAD"
            Escribir "🚨 Su IMC requiere atención médica inmediata"
            Escribir ""
            Escribir "🍎 PLAN DE ACCIÓN URGENTE:"
            Escribir "• CONSULTAR MÉDICO ESPECIALISTA inmediatamente"
            Escribir "• Seguir plan nutricional supervisado"
            Escribir "• Reducir calorías bajo supervisión profesional"
            Escribir "• Controlar enfermedades asociadas"
            Escribir "• Apoyo psicológico si es necesario"
            Escribir ""
            Escribir "🏋️ EJERCICIO BAJO SUPERVISIÓN:"
            Escribir "• Iniciar con caminatas suaves"
            Escribir "• Ejercicios en agua (natación/aqua aeróbicos)"
            Escribir "• SIEMPRE bajo supervisión médica"
    FinSegun
    
    Escribir ""
    Escribir "📋 PRÓXIMOS PASOS:"
    Escribir "• Registrar peso semanalmente"
    Escribir "• Llevar diario alimentario"
    Escribir "• Programar seguimiento en 4 semanas"
FinFuncion

Algoritmo AsistenteNutricional
    Definir peso, altura, imcCalculado Como Real
    Definir categoriaIMC Como Entero
    Definir continuar Como Caracter
    
    Escribir "=== ASISTENTE NUTRICIONAL INTELIGENTE ==="
    Escribir "🩺 Calculadora de IMC con recomendaciones personalizadas"
    Escribir ""
    
    Repetir
        Escribir "👤 DATOS DEL PACIENTE:"
        Escribir "Ingrese el peso (kg):"
        Leer peso
        
        Escribir "Ingrese la altura (metros, ejemplo: 1.70):"
        Leer altura
        
        // Validaciones básicas
        Si peso > 0 Y altura > 0 Entonces
            imcCalculado <- CalcularIMC(peso, altura)
            categoriaIMC <- DeterminarCategoriaIMC(imcCalculado)
            
            MostrarRecomendacionesSegunCategoria(categoriaIMC, imcCalculado, peso, altura)
            
            // Información adicional según categoría
            Escribir ""
            Escribir "=== INFORMACIÓN ADICIONAL ==="
            Segun categoriaIMC Hacer
                Caso 1:
                    Escribir "🎯 Meta: Ganar ", (18.5 * altura * altura - peso), " kg para peso normal"
                Caso 2:
                    Escribir "🎯 Meta: Mantener peso actual"
                Caso 3:
                    Escribir "🎯 Meta: Perder ", (peso - 24.9 * altura * altura), " kg para peso normal"
                Caso 4:
                    Escribir "🎯 Meta inmediata: Consulta médica urgente"
                    Escribir "🎯 Meta a largo plazo: Perder ", (peso - 24.9 * altura * altura), " kg"
            FinSegun
            
        SiNo
            Escribir "❌ Error: Ingrese valores válidos (mayores a 0)"
        FinSi
        
        Escribir ""
        Escribir "¿Desea analizar otro paciente? (S/N):"
        Leer continuar
        continuar <- Mayusculas(continuar)
        Escribir ""
        
    Hasta Que continuar = "N"
    
    Escribir "Gracias por usar el Asistente Nutricional"
    
FinAlgoritmo
