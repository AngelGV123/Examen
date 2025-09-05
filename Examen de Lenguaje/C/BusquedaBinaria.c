#include <stdio.h>
#include <windows.h>

int main() {
    int arreglo[100];
    int n, i, objetivo, izquierda, derecha, medio;
    int encontrado = 0;

    printf("Ingrese el numero de elementos del arreglo: ");
    scanf("%d", &n);

    printf("Ingrese los elementos del arreglo:\n");
    for (i = 0; i < n; i++) {
        scanf("%d", &arreglo[i]);
    }

    printf("Ingrese el numero a buscar: ");
    scanf("%d", &objetivo);

    izquierda = 0;
    derecha = n - 1;

    while (izquierda <= derecha && !encontrado) {
        medio = (izquierda + derecha) / 2;
        if (arreglo[medio] == objetivo) {
            printf("Numero encontrado en la posicion: %d\n", medio + 1);
            encontrado = 1;
        } else if (arreglo[medio] < objetivo) {
            izquierda = medio + 1;
        } else {
            derecha = medio - 1;
        }
    }

    if (!encontrado)
        printf("Numero no encontrado.\n");

    printf("Presione ENTER para salir...");
    getchar(); // limpiar buffer
    getchar(); // esperar ENTER
    return 0;
}
