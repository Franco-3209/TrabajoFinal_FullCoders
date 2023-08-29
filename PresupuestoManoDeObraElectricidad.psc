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