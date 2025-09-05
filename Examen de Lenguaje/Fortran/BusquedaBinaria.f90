program BusquedaBinaria
    implicit none
    integer, dimension(100) :: arreglo
    integer :: n, i, objetivo, izquierda, derecha, medio
    logical :: encontrado
    character(len=1) :: pausa

    print *, "Ingrese el numero de elementos del arreglo:"
    read(*,*) n

    print *, "Ingrese los elementos del arreglo:"
    do i = 1, n
        read(*,*) arreglo(i)
    end do

    print *, "Ingrese el numero a buscar:"
    read(*,*) objetivo

    izquierda = 1
    derecha = n
    encontrado = .false.

    do while (izquierda <= derecha .and. .not. encontrado)
        medio = (izquierda + derecha) / 2
        if (arreglo(medio) == objetivo) then
            print *, "Numero encontrado en la posicion:", medio
            encontrado = .true.
        else if (arreglo(medio) < objetivo) then
            izquierda = medio + 1
        else
            derecha = medio - 1
        end if
    end do

    if (.not. encontrado) print *, "Numero no encontrado."

    print *, "Presione ENTER para salir..."
    read(*,*) pausa
end program BusquedaBinaria

