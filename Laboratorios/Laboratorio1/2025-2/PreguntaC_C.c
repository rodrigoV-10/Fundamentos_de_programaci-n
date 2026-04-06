#include <stdio.h>
#include <math.h>


int main(){
	
	printf("Experimento 1 \n");
	//aceleracion angular 31.41
	//tiempo seg B hacia C => 2
	//angulo en rad de B a C = 565.48
	double anguloRad = 565.48;
	double velocidadBC;
	double tiempoBC = 2;
	double aceleracion = 31.41;
	velocidadBC = (anguloRad-aceleracion*0.5*pow(tiempoBC,2))/tiempoBC;
	double tiempoAB;
	tiempoAB = velocidadBC/(double)aceleracion;
	printf("El tiempo para ir del punto A al punto B es: %lf \n",tiempoAB);
	double tiempoAC = tiempoAB+tiempoBC;
	printf("El tiempo para ir del punto A al punto C es: %lf \n",tiempoAC);
	double primer_experimeto_AB = tiempoAB;
	double primer_experimeto_AC = tiempoAC;
	
	
	//segundo experimento
	printf("Experimento 2 \n");
	anguloRad =678.45;
	tiempoBC = 5;
	aceleracion = 47.12;
	velocidadBC = (anguloRad-aceleracion*0.5*pow(tiempoBC,2))/tiempoBC;
	tiempoAB = velocidadBC/(double)aceleracion;
	printf("El tiempo para ir del punto A al punto B es: %lf \n",tiempoAB);
	tiempoAC = tiempoAB+tiempoBC;
	printf("El tiempo para ir del punto A al punto C es: %lf \n",tiempoAC);
	
	double segundo_experimento_AB = tiempoAB;
	double segunto_experimento_AC = tiempoAC;
	printf("-------------------------------------------------\n");
	int mayor_tiempo;
	mayor_tiempo =(primer_experimeto_AC>segunto_experimento_AC)*1 + (segunto_experimento_AC>primer_experimeto_AC)*2;
	double valor_mayor_tiempo = (primer_experimeto_AC>segunto_experimento_AC)*primer_experimeto_AC + (segunto_experimento_AC>primer_experimeto_AC)*segunto_experimento_AC;
	//double valor_mayor_tiempo = (primer_experimeto_AC>segunto_experimento_AC)*1 + (segunto_experimento_AC>primer_experimeto_AC)*2;
	printf("El mayor tiempo fue de %lf segundos del experimento %d \n",valor_mayor_tiempo,mayor_tiempo);
	
	return 0;
}
