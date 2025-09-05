#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <windows.h>

int main() {
    char texto[100];
    int contadorVocales = 0, contadorConsonantes = 0;
    int i;

    printf("Ingrese una cadena de texto: ");
    fgets(texto, sizeof(texto), stdin);

    for (i = 0; i < strlen(texto); i++) {
        char letra = tolower(texto[i]);
        if (letra >= 'a' && letra <= 'z') {
            if (letra=='a'||letra=='e'||letra=='i'||letra=='o'||letra=='u')
                contadorVocales++;
            else
                contadorConsonantes++;
        }
    }

    printf("Cantidad de vocales: %d\n", contadorVocales);
    printf("Cantidad de consonantes: %d\n", contadorConsonantes);

    printf("Presione ENTER para salir...");
    getchar();
    return 0;
}
