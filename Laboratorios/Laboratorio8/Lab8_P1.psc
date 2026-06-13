Algoritmo Lab8_P1
	Escribir "Ingrese el rango inicial: "
	Leer inicio
	Escribir "Ingrese el rango final: "
	Leer final
	//valida el rango
	Si inicio>0 y final>=inicio Entonces
		//inicia la iterativa externa que recorre el rango
		Mientras inicio<=final Hacer
			//guardamos el valor del número
			num <- inicio
			numero_copia <- inicio
			//del primer número sacamos sus digitos
			digito_anterior <- -1
			cantidad_cariados <- 0 
			cantidad_sanos <- 0
			cantidad_parejas_sanas <- 0
			cantidad_parejas_cariadas <- 0
			Mientras num>0 Hacer
				digito <- num mod 10
				num <- trunc(num/10)
				//incrementamos la cantidad de sanos
				Si digito = 2 o digito = 3 o digito = 5 o digito = 7 Entonces
					cantidad_sanos <- cantidad_sanos + 1
				SiNo
					//incrementamos la cantidad de cariados
					cantidad_cariados <- cantidad_cariados + 1
				Fin Si
				//fin primera condicion
				//segunda condicion parejas de digitos adyacentes 58 o 15
				Si digito_anterior <> -1 Entonces
					//formamos la primera pareja
					suma_digito <- digito + digito_anterior
					//Escribir "suma : ",suma_digito 
					//validar si la suma es primo
					contador <- 1
					cantidad_div <- 0
					Mientras contador<=suma_digito Hacer
						Si suma_digito mod contador = 0 Entonces
							cantidad_div <- cantidad_div + 1 
						FinSi
						contador <- contador + 1
					FinMientras
					
					Si cantidad_div = 2 Entonces
						//si es primo incrementa la cantidad de parejas sanas
						cantidad_parejas_sanas <- cantidad_parejas_sanas +1
					SiNo
						//incrementa la cantidad de parejas cariadas
						cantidad_parejas_cariadas <- cantidad_parejas_cariadas + 1
					FinSi
					
					
				FinSi
				
				//Escribir ,suma_digito
				
				digito_anterior <- digito
				
				//Escribir digito_anterior
			FinMientras
			
			
			//validamos si la suma de divisores propios es 2
			
			contador_div_propio <- 1
			
			cantidad_divisores_propios <- 0
			
			Mientras contador_div_propio <= numero_copia Hacer
				
				Si numero_copia mod contador_div_propio = 0 Entonces
					
					cantidad_divisores_propios <- cantidad_divisores_propios + 1
					
				FinSi
				
				contador_div_propio <- contador_div_propio + 1 
				
			FinMientras
			
			
			Si cantidad_cariados>0 y cantidad_divisores_propios = cantidad_cariados y cantidad_sanos>0 y cantidad_parejas_cariadas>0 Entonces
				Escribir "El número ", inicio , " es odontológico avanzado"
			FinSi
			
			inicio <- inicio +1
			
		Fin Mientras
	SiNo
		Escribir "El rango ingresado es incorrecto"
	FinSi
	
	
FinAlgoritmo