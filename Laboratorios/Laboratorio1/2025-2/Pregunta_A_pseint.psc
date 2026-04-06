Algoritmo Pregunta_A_pseint
	Escribir "****Identidad 1*****"
	Escribir "Ingrese el valor de a"
	Leer a
	Escribir "Ingrese el valor de b"
	Leer b
	Escribir "Ingrese el valor de c"
	Leer c
	//proceso de la identidad 1
	formula1 <- (a+b+c)^3
	formula2 <- (a)^3 + (b)^3 + (c)^3 + 3*(((a^2)*b) + (a*(b^2)) + ((b^2)*c) + ((c^2)*b) + ((c^2)*a) + (c*(a^2)) ) + 6*(a*b*c)
	formula3 <- a^3 + b^3 + c^3 + 3*(a+b)*(b+c)*(c+a)
	Escribir "El resultado de la fomrula 1 es: " formula1
	Escribir "El resultado de la fomrula 2 es: " formula2
	Escribir "El resultado de la fomrula 3 es: " formula3
	Escribir "Las formulas de la identidad 1 son iguales: ",formula1 = formula2 y formula2 = formula3
	
	//proceso de la identidad 2
	Escribir "****Identidad 2*****"
	Escribir "Ingrese el valor de a"
	Leer a
	Escribir "Ingrese el valor de b"
	Leer b
	Escribir "Ingrese el valor de c"
	Leer c
	formula1 <- (a-b)*(b-c)*(c-a)
	formula2 <- (a^2)*(c-b) + (b^2)*(a-c) + (c^2)*(b-a)
	formula3 <- (-1)*(a^2)*b  - (a)*(c^2) + (a^2)*c - (b^2)*c + a*(b^2) + b*(c^2) 
	Escribir "El resultado de la fomrula 1 es: " formula1
	Escribir "El resultado de la fomrula 2 es: " formula2
	Escribir "El resultado de la fomrula 3 es: " formula3
	Escribir "Las formulas de la identidad 1 son iguales: ",formula1 = formula2 y formula2 = formula3
	
	//proceso de la identidad 3
	Escribir "****Identidad 3*****"
	Escribir "Ingrese el valor de a"
	Leer a
	Escribir "Ingrese el valor de b"
	Leer b
	Escribir "Ingrese el valor de c"
	Leer c
	formula1 <- (a-b)^2 + (b-c)^2 + (c-a)^2
	formula2 <- 2*(a^2  + b^2 + c^2 -(a*b)-(b*c)-(c*a))
	formula3 <- 2*(a^2) - (2*a*b) + (2*b^2) - (2*b*c) + (2*c^2) - (2*a*c)
	Escribir "El resultado de la fomrula 1 es: " formula1
	Escribir "El resultado de la fomrula 2 es: " formula2
	Escribir "El resultado de la fomrula 3 es: " formula3
	Escribir "Las formulas de la identidad 1 son iguales: ",formula1 = formula2 y formula2 = formula3
	
	
FinAlgoritmo
