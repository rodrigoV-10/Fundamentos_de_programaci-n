Algoritmo Pregunta_B_pseint
	//figura 1
	Escribir "Para la figura 1" 
	Escribir "Ingrese el valor de a en (cm)"
	Leer a
	area_cuadrado <- a*a
	area_triangulo <- (a)*(2*a)/2
	area_circulo <- PI*(a^2)/4
	area_sombreada1 <- (area_cuadrado-area_circulo) + area_triangulo
	Escribir "El area sombreada de la Figura 1 es : ", area_sombreada1 , " cm "
	//figura 2
	Escribir "Para la figura 2" 
	Escribir "Ingrese el valor de a en (cm)"
	Leer a
	area_cuadrado <- a*a
	area_triangulo <- (a)*(2*a)/2
	area_circulo <- PI*(a^2)/4
	area_sombreada2 <- (area_cuadrado-area_circulo) + area_triangulo
	Escribir "El area sombreada de la Figura 1 es : ", area_sombreada2 , " cm "
	
	//figura 3
	Escribir "Para la figura 3" 
	Escribir "Ingrese el valor de a en (cm)"
	Leer a
	area_cuadrado <- a*a
	area_triangulo <- (a)*(2*a)/2
	area_circulo <- PI*(a^2)/4
	area_sombreada3 <- (area_cuadrado-area_circulo) + area_triangulo
	Escribir "El area sombreada de la Figura 1 es : ", area_sombreada3 , " cm "
	Escribir "Resumen: "
	Escribir "El area sombreada de la Figura 1 es mayor que el área sombreada de la Figura-2: " ,area_sombreada1>area_sombreada2
	Escribir "El área sombreada de la Figura 3 es menor que el área sombreada de la Figura-2: " ,area_sombreada3<area_sombreada2
	
	
FinAlgoritmo
