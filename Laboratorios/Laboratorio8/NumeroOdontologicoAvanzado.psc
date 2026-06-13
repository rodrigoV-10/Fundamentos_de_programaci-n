Algoritmo NumeroOdontologicoAvanzado
	Escribir "Ingrese el rango inicial: "
	Leer limInf
	Escribir "Ingrese el rango final: "
	Leer limSup
	Si limSup>limInf y limInf>0 Entonces
		//procede
		Escribir "Ingresa"
		//numeroPrimo = diente sano
		//NOprimo = carie
		//al menos un diente sano y un diente cariado
		
		//cantidad de parejas de digitos adyacentes 
		//que tienen una suma de numeros primos es mayor que 0
		
		//cantidad de divisores propios del número es igual a la cantidad
		//de dientes cariados
		//siempre ingreso números de 3 digitos
		Mientras limInf<=limSup Hacer
			//extraermos digitos
			num <- limInf
			numCopia <- limInf
			
			
			//primera condicion
			iterador <- 0
			Mientras num>0 Hacer
				//saco el 8
				digito <- num mod 10
				numCopia <- num / 10
				
				//valido si el 8 es primo
				i <- 1
				cantidad_div <- 0
				Mientras i<= digito Hacer
					Si digito mod i = 0 Entonces
						cantidad_div  <- cantidad_div + 1
					FinSi
					i <- i + 1
				FinMientras
				//finalizada la validacion de ese digito Entonces
				
				//validamos la primera condicion
				cantidad_sanos <- 0
				cantidad_carie <- 0
				Si cantidad_div=2 Entonces
					cantidad_sanos <- cantidad_sanos + 1
				SiNo
					cantidad_carie <- cantidad_carie + 1
				Fin Si
				
				//segunda condicion
				Si iterador=0 Entonces
					digitoAnterior <- digito
				FinSi
				
				//es decir si existe
				Si digitoAnterior<>-1 Entonces
					numAdyacente <- digito*10 + digitoAnterior
				FinSi
				
				//proceso de validacion si es primo
				
				
				
				
			FinMientras
			
			
			
			
			
			limInf <- limInf + 1
		Fin Mientras
		
		
	SiNo
		Escribir "El rango ingresado es incorrecto."
	Fin Si
FinAlgoritmo
