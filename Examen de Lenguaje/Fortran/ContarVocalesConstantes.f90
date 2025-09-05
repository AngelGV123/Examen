program ContarVocalesConsonantes
    implicit none
    character(len=100) :: texto
    integer :: i, longitud, contadorVocales, contadorConsonantes
    character(len=1) :: letra, pausa

    contadorVocales = 0
    contadorConsonantes = 0

    print *, "Ingrese una cadena de texto:"
    read(*,'(A)') texto

    longitud = len_trim(texto)

    do i = 1, longitud
        letra = texto(i:i)
        if (letra >= 'A' .and. letra <= 'Z') then
            letra = achar(iachar(letra) + 32)  ! convertir mayúscula a minúscula
        end if

        if (letra == 'a' .or. letra == 'e' .or. letra == 'i' .or. letra == 'o' .or. letra == 'u') then
            contadorVocales = contadorVocales + 1
        else if (letra >= 'a' .and. letra <= 'z') then
            contadorConsonantes = contadorConsonantes + 1
        end if
    end do

    print *, "Cantidad de vocales: ", contadorVocales
    print *, "Cantidad de consonantes: ", contadorConsonantes

    print *, "Presione ENTER para salir..."
    read(*,*) pausa
end program ContarVocalesConsonantes

