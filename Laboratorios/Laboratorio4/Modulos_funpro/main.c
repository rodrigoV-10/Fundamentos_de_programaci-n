#include <stdio.h>
#include <math.h>


void contarDigitos(int numero) {
    int cant=0,digito;
    printf("============================================");
    while (numero > 0) {
        digito = numero % 10;
        numero = numero / 10;
        cant++;
    }
    printf("Cantidad de digitos: %d \n",cant);
}

void extraerDerecha(int numero) {
    printf("============================================");
    int digito;
    while (numero > 0) {
        digito = numero % 10;
        numero = numero / 10;
    }
}


void extraerIzquierda(int numero) {
    //aqui previamente necesitamos la cantidad de digitos
    //por iterativa o por (int)log10(numero)+1 //creo que era así
    int digito,cantDig;
    cantDig = (int)log10(numero)+1;
    printf("============================================");
    printf("Extraer por izquierda: \n");
    while (cantDig > 0) {
        digito = numero/(int)pow(10,cantDig-1);
        numero = numero%(int)pow(10,cantDig-1);
        printf("Digito: %d \n",digito);
        cantDig--;
    }
}

void numeroCapicua(int numero) {
    printf("========================================= \n");
    printf("MODULO DEL NUMERO CAPICUA \n");
    int digito,nuevoNum,numCopia=numero;
    //si se invierte el número es capia
    while (numero > 0) {
        digito = numero % 10;
        numero = numero / 10;
        nuevoNum = nuevoNum*10 + digito;
    }
    printf("%d \n",nuevoNum);
    if (nuevoNum == numCopia) {
        printf("Es un número capicua \n");
    }else {
        printf("NO ES CAPICUA \n");
    }
}

void cambioDeBase(int numero,int base) {
    int digito, i = 0;
    int nuevoNum=0;
    printf("=========================================\n");
    printf("MODULO DE CAMBIO DE BASE \n");
    //numero 53 , base = 2
    //El "espacio" del cero se respeta matemáticamente aunque no lo veas visualmente en los pasos intermedios.
    /*
        MODULO DE CAMBIO DE BASE
        1
        1
        101
        101
        10101
        110101
        110101
     */
    while (numero > 0) {
        digito = numero%base;
        numero = numero/base;
        nuevoNum = nuevoNum + digito*pow(10,i);
        printf("%d \n",nuevoNum);
        i++;
    }
    printf("%d \n",nuevoNum);
}

int main(void) {
    //se crearán modulos que aparecen frecuentemente en los problemas de fundamentos
    int numero;
    //Se ingresa el número : 98765
    printf("Ingrese un número: ");
    scanf("%d", &numero);
    // int cantDig;
    // cantDig = (int)log10(numero)+1;
    // printf("La cantidad de digitos: %d \n",cantDig);
    //contarDigitos
    contarDigitos(numero);
    //extraerDigitos Izquierda y Derecha
    extraerDerecha(numero);
    extraerIzquierda(numero);
    numeroCapicua(numero);
    //asumimos que es binario puede ser otro tmbn
    cambioDeBase(numero,2);

    return 0;
}
