#include <stdio.h>
#include <windows.h>

int main() {
    int n, i;
    int primero = 0, segundo = 1, siguiente;

    printf("Ingrese la cantidad de terminos de la serie Fibonacci: ");
    scanf("%d", &n);

    printf("Serie Fibonacci:\n");
    if (n >= 1) printf("%d\n", primero);
    if (n >= 2) printf("%d\n", segundo);

    for (i = 3; i <= n; i++) {
        siguiente = primero + segundo;
        printf("%d\n", siguiente);
        primero = segundo;
        segundo = siguiente;
    }

    printf("Presione ENTER para salir...");
    getchar(); 

    getchar(); 
    return 0;
}
