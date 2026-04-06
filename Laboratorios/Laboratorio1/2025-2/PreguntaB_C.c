#include <stdio.h>
#include <math.h>

#define X 4.75
#define Y 1.5
#define Z 2.3

int main(){
	
	//declaración de varialbes
	
	double parte1 , parte2 , parte3;
	
	//expresión1
	double raiz = 1/(double)3;
	parte1 =   pow( pow(X,2)+pow(Y,2) ,raiz)/sqrt (  pow(Z,2) +1 );
	parte2 =   ( pow(X,3) - pow(Y,3)  )/(Z+1);
	parte3 =  sqrt(   pow(X+Y+Z,2) + pow(X-Y,2) ) /(X*Y+1);
	double expresion1 = parte1+parte2+parte3;
	printf("Expresión 1 tiene el valor de : %0.2lf \n",expresion1);
	//expresión2
	double expresion2 = sqrt( pow(X,4) + pow(Y,4) + pow(Z,4)  )/(X+Y+Z);;
	printf("Expresión 2 tiene el valor de : %0.2lf \n",expresion2);
	
	//expresión3
	double potencia = 3/(double)2;
	double primero , segundo;
	double expresion3; 
	primero =  pow ( pow(X,2) + pow(Y,2)  ,potencia) / (pow(Z,2)+1);
	segundo =  pow(Z,3) / sqrt(X+Y);
	expresion3 = primero - segundo; 
	printf("Expresión 3 tiene el valor de : %0.2lf \n",expresion3);
	
	int menor = (expresion1<expresion2 && expresion1<expresion3 )*1 + (expresion2<expresion1&& expresion2<expresion3 )*2 + (expresion3<expresion1 && expresion3<expresion2)*3;
	
	printf("La expresión que tiene el menor valor es la Expresión: %d \n",menor);
	
	return 0;
}
