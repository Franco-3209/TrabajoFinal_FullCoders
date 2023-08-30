# Proyecto Infinity Electrical

**Potenciar Argentina**  
Curso Introductorio FullCoders  
Comisión 12/21655  
Agosto 2023

---

**Trabajo Final**  
**Proyecto:** Infinity Electrical

**Alumno:** Franco Andres Libertini – DNI 33327258  
**Tutor:** Pablo Bonaduce

**Repositorio:** [TrabajoFinal_FullCoders](https://github.com/Franco-3209/TrabajoFinal_FullCoders)

---

## Descripción del Proyecto

"Presupuesto Mano de Obra Eléctrica" es un proyecto que simula la solicitud de una pequeña empresa en crecimiento. Su necesidad es obtener rápidamente un cálculo aproximado del costo total de mano de obra para que los usuarios puedan calcular la cantidad de dinero necesaria.

## Contenido del Proyecto

Este proyecto presenta:

- **Diagrama de Flujo General:** Representación visual de la lógica del programa.
- **Pseudocódigo de Simulación:** Algoritmo que simula el sistema de presupuestos.
- **Teoría de Gestión del Proyecto:** Exploración de las metodologías ágiles Kanban y Scrum aplicadas al proyecto.

### Diagrama de Flujo General

[![Diagrama-de-Flujo-TP-Final.jpg](https://i.postimg.cc/RZn8ZNm2/Diagrama-de-Flujo-TP-Final.jpg)](https://postimg.cc/Bj4NhZXC)

### Pseudocódigo de Simulación

A continuación se muestra el pseudocódigo que simula los presupuestos:

```
Algoritmo PresupuestoManoDeObraElectricidad
	
	//Inicio del programa con su presentacion
    Escribir "Bienvenido al Programa de Presupuesto de Mano de Obra de Eléctricidad"
    Escribir "Este programa te ayudará a calcular un presupuesto aproximado."
    Escribir "------------------------------------------------------------"
    
	//Definiendo varialbles Globales
    Definir valorUnitario, opcion, cantidadBocas, bocasTablero, combinadas, costoTotal Como Real
    Definir cantidadCircuitos, circuito, bocasCircuito, costoCircuito Como Real
    
	//Primer pedido de Datos
    Escribir "Ingrese el valor unitario de Boca de Electricidad:"
    Leer valorUnitario
    
	//Bucle por si elijen mal el numero de las opciones
	Repetir
			
    Escribir "Seleccione una opción:"
    Escribir "1. Calcular presupuesto por cantidad total de Bocas"
    Escribir "2. Calcular presupuesto de Bocas por circuitos"
    Escribir "3. Salir"
    Leer opcion
	
	//Opciones del programa.
	
    Segun opcion Hacer
        1:
			//Opcion 1 (Es algo Basico.)
			
            Escribir "Ingrese la cantidad total de bocas: "
            Leer cantidadBocas
            
            bocasTablero <- cantidadBocas / 10
            costoTotal <- (bocasTablero + cantidadBocas)  * valorUnitario
            
			//Respuestas del Presupuesto Opcion 1
			
            Escribir "Presupuesto Aproximado: "
			Escribir "Cantidad de bocas: ", cantidadBocas
            Escribir "Cantidad de bocas en el tablero: ", bocasTablero
            Escribir "Costo total: ", costoTotal
            Escribir "Recuerde que se deben corroborar detalles adicionales. Y solo es un aproximado."
        2:
			//Opcion 2 (es mas completo pero pide mas datos.)
			
            Escribir "Ingrese la cantidad de circuitos: "
            Leer cantidadCircuitos
            
            costoTotal <- 0
            bocasElectricidad <- 0
            bocasTablero <- 0
            
            Para circuito <- 1 Hasta cantidadCircuitos Hacer
                bocasCircuito <- -1
                Mientras bocasCircuito < 0 O bocasCircuito > 15 Hacer
                    Escribir "Ingrese la cantidad de bocas en el circuito ", circuito, " (máximo 15 bocas):"
                    Leer bocasCircuito
                    
                    Si bocasCircuito > 15 Entonces
                        Escribir "Error: Se excede el límite de 15 bocas por circuito."
                    FinSi
                FinMientras
				
				//Calculos para mostrar los valores finales
                bocasElectricidad <- bocasElectricidad + bocasCircuito
                bocasTablero <- bocasTablero + 1
                costoCircuito <- bocasCircuito * valorUnitario
                costoTotal <- costoTotal + costoCircuito
				
            FinPara
            
			//Respuestas de Presupuesto Opcion 2
            
			Escribir "Presupuesto Detallado:"
            Escribir "Cantidad de bocas de electricidad: ", bocasElectricidad
            Escribir "Cantidad de bocas en el tablero: ", cantidadCircuitos
            Escribir "Costo total: ", costoTotal 
            Escribir "Recuerde que se deben revisar llaves combinadas y otros detalles. Y solo es un aproximado"
			
		3:
			//Opcion 3 es el Final si se elije la opcion correcta o vuelve a preguntar una opcion valida
            Escribir "Gracias por usar el programa. ¡Hasta luego!"
        De Otro Modo:
            Escribir "Opción no válida. Por favor, elija una opción válida."
			
			//Pausa y separacion para separar inicio de Programa de manera mas visual.
			Esperar 1 Segundos
			Escribir " "
			Escribir " "
			Escribir " "
			Escribir " "
			
		FinSegun		
				
	 //Fin de la Repeticion por elejir mal en numero de Opciones.
	Hasta Que opcion < 3 y opcion > 0
	
	 
FinAlgoritmo
```

## Objetivos Funcionales

El programa debe proporcionar los siguientes requisitos funcionales:

1. **Presupuesto General:** Permite calcular el costo total de las bocas de electricidad y el armado del tablero conociendo solo el número total de bocas eléctricas.
2. **Presupuesto Total:** Permite calcular un total más preciso considerando los datos individuales de cada circuito eléctrico y la cantidad de bocas en cada uno.

## Metodología Ágil Scrum

### Product Backlog
1. **Diseño de Interfaz de Usuario:** Investigar y diseñar la interfaz del sistema.
2. **Estructura de la Base de Datos:** Crear la estructura de la base de datos.
3. **Implementación de Cálculos y Lógica:** Generar pseudocódigo funcional y implementar las ecuaciones de cálculo.
4. **Pruebas y Depuración:** Realizar pruebas exhaustivas y depurar el programa.
5. **Integración con la Interfaz:** Conectar la lógica con la interfaz de usuario.

### Sprint Planning (Duración: 1-2 semanas)
- **Sprint Goal:** Completar la funcionalidad de cálculos y lógica.
- **Tareas Diarias:**
  - Ayer: Diseño de interfaz y estructura de la base de datos.
  - Hoy: Implementación de cálculos y ecuaciones.
  - Obstáculos: Requiere investigación adicional en ecuaciones.
- **Sprint Review:**
  - Se logró la implementación de cálculos y lógica.
- **Retrospectiva:**
  - Aspectos positivos: Diseño de interfaz y estructura de base de datos realizados.
  - Mejoras: Mayor investigación previa en ecuaciones.

## Metodología Ágil Kanban

### Tablero Kanban

#### Tareas para Iniciar
- Investigar y diseñar la interfaz del sistema.
- Crear la estructura de la base de datos.

#### Tareas en Progreso
- Generar pseudocódigo funcional.
- Implementar las ecuaciones de cálculo.

#### Tareas para Verificar
- Realizar pruebas y depuración.
- Integración con la interfaz de usuario.

#### Tareas Realizadas
- Tareas completadas y revisadas.

### Seguimiento
Actualiza tu tablero Kanban regularmente para reflejar el progreso de las tareas. Si alguna tarea se encuentra en estado de demora o enfrenta obstáculos, puedes crear una columna adicional "Demorado" para indicar dónde se está produciendo un retraso y por qué.

Recuerda que tanto Scrum como Kanban son enfoques flexibles, y puedes adaptarlos según tus necesidades. La clave es dividir el trabajo en tareas manejables y realizar un seguimiento constante para asegurarte de que estás avanzando efectivamente en tu proyecto.
