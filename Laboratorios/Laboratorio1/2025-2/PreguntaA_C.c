#include <stdio.h>
#include <math.h>


int main(){
	
	//Declaración de variables
	
	//primer caso
	double base_paralelogramo =6, altura_paralelogramo=3 
	, cateto_triangulo_d = 3, cateto_triangulo_g =4.5;
	//pidel calcular el area total
	double area_a, area_b, area_c, area_d, area_e, area_f, area_g;
	area_a = cateto_triangulo_d*cateto_triangulo_d/(double)2;
	area_b = base_paralelogramo*altura_paralelogramo;
	area_c = cateto_triangulo_d*cateto_triangulo_d;
	area_d = area_a;
	area_e = (1.5)*cateto_triangulo_d*(1.5)*cateto_triangulo_d/(double)2;
	area_f = pow(cateto_triangulo_g,2)/(double)2;
	area_g = area_f;
	
	double area_total_1 = area_a+area_b+area_c+area_d+area_e+area_f+area_g;
	printf("El area total de la figura 1 es %lf \n",area_total_1);
	
	//segundo caso
	//reutilizo las variables, pero les cambio el valor
	base_paralelogramo =10, altura_paralelogramo=5 
	, cateto_triangulo_d = 5, cateto_triangulo_g =3.5;
	//pidel calcular el area total
	area_a, area_b, area_c, area_d, area_e, area_f, area_g;
	area_a = cateto_triangulo_d*cateto_triangulo_d/(double)2;
	area_b = base_paralelogramo*altura_paralelogramo;
	area_c = cateto_triangulo_d*cateto_triangulo_d;
	area_d = area_a;
	area_e = (1.5)*cateto_triangulo_d*(1.5)*cateto_triangulo_d/(double)2;
	area_f = pow(cateto_triangulo_g,2)/(double)2;
	area_g = area_f;
	
	double area_total_2 = area_a+area_b+area_c+area_d+area_e+area_f+area_g;
	printf("El area total de la figura 1 es %lf \n",area_total_2);
	
	//tercer caso
	//reutilizo variables, pero les asigno nuevos valores
	base_paralelogramo =8, altura_paralelogramo=3.5 
	, cateto_triangulo_d = 2.5, cateto_triangulo_g =3.5;
	//pidel calcular el area total
	area_a, area_b, area_c, area_d, area_e, area_f, area_g;
	area_a = cateto_triangulo_d*cateto_triangulo_d/(double)2;
	area_b = base_paralelogramo*altura_paralelogramo;
	area_c = cateto_triangulo_d*cateto_triangulo_d;
	area_d = area_a;
	area_e = (1.5)*cateto_triangulo_d*(1.5)*cateto_triangulo_d/(double)2;
	area_f = pow(cateto_triangulo_g,2)/(double)2;
	area_g = area_f;
	
	double area_total_3 = area_a+area_b+area_c+area_d+area_e+area_f+area_g;
	printf("El area total de la figura 1 es %lf \n",area_total_3);
	int figura_mayor = (area_total_1>area_total_2 && area_total_1>area_total_3)*1 + (area_total_2>area_total_1 && area_total_2>area_total_3)*2 
	+ (area_total_3>area_total_1 && area_total_3>area_total_2)*3;
	printf("La figura con la mayor área es : %d \n", figura_mayor);
	
	
	
	return 0;
}
