program Cronometro
    implicit none
    integer :: horas, minutos, segundos
    character(len=1) :: pausa

    horas = 0
    minutos = 0
    segundos = 0

    print *, "Cronometro iniciado (Ctrl+C para detener)"
    do
        call sleep(1)  ! Espera 1 segundo
        segundos = segundos + 1

        if (segundos == 60) then
            segundos = 0
            minutos = minutos + 1
        end if

        if (minutos == 60) then
            minutos = 0
            horas = horas + 1
        end if

        write(*,'(I2.2, ":", I2.2, ":", I2.2)') horas, minutos, segundos
    end do

    print *, "Presione ENTER para salir..."
    read(*,*) pausa
end program Cronometro

