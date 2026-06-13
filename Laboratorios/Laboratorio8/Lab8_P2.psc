Algoritmo Lab8_P2
	Escribir "Ingrese el rango inicial: "
	leer inicio
	Escribir "Ingrese el rango final: "
	leer final
	Si inicio>0 y final>= inicio  Entonces
		//Escribir "procede :)"
		//dientes energeticos = 2,3,5,7
		//dientes fracturado = 4,6,8,9
		//dientes neutros = 0 , 1
		//diente odonto-energetico-complejo
		//al fracturado > 0 y energetico > 0
		//pareja de 3 digitos -> la suma de estos es un numero primo >0
		//cantidad de divisores propios es igual a la cantidad de dientes fracturados
		//no existe NEUTRO
		
		//iterativa externa
		acumulador_diente_odonto_complejo <- 0
		Mientras inicio<=final Hacer
			//sacamos un numero copia
			num <- inicio
			numero_copia <- inicio
			nuevo_numero_copia <- inicio
			bandera_primo <- Verdadero
			
			//iterativa donde sacamos los digitos de cada numero
			//contador que se hace POR CADA NUMERO 
			bandera_primer_digito <- Verdadero
			cantidad_energetico <- 0
			cantidad_fracturado <- 0
			cantidad_neutro <- 0
			primera_pareja <- 0
			segunda_pareja <- 0
			cantidad_digitos <- 0
			
			Mientras num>0 Hacer
				digito <- num%10
				num <- trunc(num/10)
				//sacamos el digito
				Si bandera_primer_digito Entonces
					primer_digito_extraido <- digito
					bandera_primer_digito <- falso
				FinSi
				
				//acumulamos la cantidad de tipo de dientes por cada NUMERO
				Si digito= 2 o digito =3 o digito = 5 o digito = 7 Entonces
					cantidad_energetico <- cantidad_energetico +1
				SiNo
					Si digito<>0 o digito <> 1 Entonces
						cantidad_fracturado <- cantidad_fracturado +1
					SiNo
						cantidad_neutro <- cantidad_neutro +1
					FinSi
				FinSi
				
				cantidad_digitos <- cantidad_digitos +1 
				primera_pareja <- primera_pareja + digito
				
			FinMientras
			//le resto el último digito extraido
			segunda_pareja <- primera_pareja - primer_digito_extraido
			primera_pareja <- primera_pareja - digito
			
			
			//calculos si alguno de estos 2 números es primo
			i <- 1
			j <- 1
			cantidad_div_primero <- 0 
			cantidad_div_segundo <- 0
			Mientras i<=primera_pareja Hacer
				Si primera_pareja mod i = 0 Entonces
					cantidad_div_primero <- cantidad_div + 1
				FinSi
				i <- i + 1
			FinMientras
			
			Mientras j<= segunda_pareja Hacer
				Si segunda_pareja mod j = 0 Entonces
					cantidad_div_segundo <- cantidad_div_segundo + 1
				FinSi
				j <- j + 1
			FinMientras
			
			Si cantidad_div_primero = 2 o cantidad_div_segundo = 2 Entonces
				bandera_primo <- Verdadero
			SiNo
				bandera_primo <- falso
			FinSi
			
			
			//calculamos la cantidad de divisores propios de ese NUMERO
			iterador <- 2
			cantidad_propios <- 0
			Mientras iterador < nuevo_numero_copia Hacer
				Si (nuevo_numero_copia mod iterador = 0) Entonces
					cantidad_propios <- cantidad_propios + 1
				FinSi
				iterador <- iterador + 1
			FinMientras
			
			//validacion para la impresion
			Si cantidad_neutro = 0 y cantidad_energetico>0 y cantidad_fracturado>0 y (bandera_primo) y cantidad_propios = 2 y cantidad_propios = cantidad_fracturado Entonces
				Escribir "El número ", inicio " es odonto-energetico complejo"
			FinSi
			
			inicio <- inicio + 1
		FinMientras
	SiNo
		Escribir "El rango ingresado es incorrecto"
	FinSi
	
FinAlgoritmo
