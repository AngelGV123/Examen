#include <stdio.h>
#include <windows.h>  // Para Sleep()

int main() {
    int horas = 0, minutos = 0, segundos = 0;

    printf("Cronometro iniciado (Ctrl+C para detener)\n");
    while (1) {
        Sleep(1000);  // espera 1000 ms = 1 segundo
        segundos++;

        if (segundos == 60) {
            segundos = 0;
            minutos++;
        }

        if (minutos == 60) {
            minutos = 0;
            horas++;
        }

        printf("\r%02d:%02d:%02d", horas, minutos, segundos);
        fflush(stdout);
    }

    printf("\nPresione ENTER para salir...");
    getchar();
    return 0;
}
