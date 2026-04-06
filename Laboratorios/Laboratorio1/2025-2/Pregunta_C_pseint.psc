Algoritmo Pregunta_C_pseint
	//tierra
	Escribir "Para el escenario en la Tierra: "
	Escribir "Ingrese la altura en metros: "
	Leer altura_tierra
	Escribir "Ingrese la masa en kilogramos: "
	Leer masa_tierra
	Escribir "Ingrese la distancia de frenado en centimetros: "
	leer distancia_tierra
	distancia_tierra <- distancia_tierra/100
	gravedad <- 9.81
	tiempo_caida_tierra <- raiz(2*altura_tierra/gravedad)
	tiempo_caida_tierra <- tiempo_caida_tierra/60
	velocidad_tierra <- raiz(2*gravedad*altura_tierra)
	energia_potencial_tierra <- masa_tierra*gravedad*altura_tierra
	frenado_tierra <- energia_potencial_tierra/distancia_tierra
	Escribir "El tiempo de caída en la Tierra en minutos es: ",tiempo_caida_tierra
	Escribir "La velocidad de impacto en la Tierra en m/s es: ",velocidad_tierra
	Escribir "La energía potencial inicial en la Tierra en Joules es: ",energia_potencial_tierra
	Escribir "La fuerza de frenado en la Tierra en Newton es: ",frenado_tierra
	Escribir "     "
	
	//marte
	Escribir "Para el escenario en Marte: "
	Escribir "Ingrese la altura en Kilometros: "
	Leer altura
	Escribir "Ingrese la masa en gramos: "
	Leer masa
	Escribir "Ingrese la distancia de frenado en metros: "
	leer distancia
	altura <- altura*1000
	masa <- masa /1000
	gravedad <- 3.71
	tiempo_caida <- raiz(2*altura/gravedad)
	tiempo_caida <- tiempo_caida/60
	velocidad <- raiz(2*gravedad*altura)
	energia_potencial <- masa*gravedad*altura
	frenado <- energia_potencial/distancia
	Escribir "El tiempo de caída en la Tierra en minutos es: ",tiempo_caida
	Escribir "La velocidad de impacto en la Tierra en m/s es: ",velocidad
	Escribir "La energía potencial inicial en la Tierra en Joules es: ",energia_potencial
	Escribir "La fuerza de frenado en la Tierra en Newton es: ",frenado
	
	//comparando escenarios
	Escribir "Comparando Escenarios: "
	Escribir "¿El timpo de caída de la Tierra es menor que en Marte?: ", tiempo_caida_tierra<tiempo_caida
	Escribir "¿La velocidad de impacto en Martes es mayor que en la Tierra?: " ,velocidad>velocidad_tierra
	Escribir "¿La Energía Potencial en la Tierra es mayor que en Marte?: ", energia_potencial_tierra>energia_potencial
	
	
	
FinAlgoritmo
