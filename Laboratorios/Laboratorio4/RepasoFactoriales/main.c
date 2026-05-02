#include <math.h>
#include <stdio.h>
#include <math.h>

#define PI 3.141592

int main(void) {
    int opcion;
    printf("Menú de opciones\n");
    printf("----------------------\n");
    printf("1. Calcular PI \n");
    printf("2. Operaciones con digitos \n");
    printf("Ingrese la opción a evaluar: ");
    scanf("%d", &opcion);
    if (opcion == 1) {
        //calcular la sumatoria
        int cantidadTerminos;
        printf("Ingrese la cantidad de términos: ");
        scanf("%d", &cantidadTerminos);
        if (cantidadTerminos>0 && cantidadTerminos<=50) {
            //proceso de serie de Madhva
            int i=0;
            double numeradorMAD,denominadorMAD,sumaMAD=0;
            while (i<cantidadTerminos) {
                numeradorMAD = pow(-1, i);
                denominadorMAD = 2*i+1;
                sumaMAD += numeradorMAD/denominadorMAD;
                i++;
            }
            sumaMAD=sumaMAD*4;
            //iterativas independientes -> NO SON ANIDADAS
            //proceso de serie de euler
            double j=0,factorial=1,numeradorEULER,denominadorEULER,sumaEULER=0;
            while (j<cantidadTerminos) {
                if (j==0) {
                    factorial=1;
                    denominadorEULER=1;
                }else {
                    //se multiplica el factorial
                    factorial = factorial*j;
                    denominadorEULER = denominadorEULER * (2*j)* (2*j+1);
                }
                numeradorEULER = pow(2,j) * pow (factorial,2);
                sumaEULER = sumaEULER + numeradorEULER/denominadorEULER;
                j++;
            }
            sumaEULER = sumaEULER*2;
            printf("Valor PI según la sumatoria de EULER =  %lf \n",sumaEULER);
            printf("Valor PI según la sumtaoria de Madhava = %lf\n",sumaMAD);

        }else {
            printf("Cantidad de términso incorrecta \n");
        }
    }else if (opcion == 2) {
        //proceso de suma de digitos y la potencia
    }else {
        printf("Opcion incorrecta\n");
    }

    return 0;
}
