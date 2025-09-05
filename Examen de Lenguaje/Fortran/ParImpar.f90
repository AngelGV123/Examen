program ParImpar
    implicit none
    integer :: numero
    character(len=1) :: pausa

    print *, "Ingrese un numero entero:"
    read(*,*) numero

    if (mod(numero, 2) == 0) then
        print *, "El numero ", numero, " es PAR."
    else
        print *, "El numero ", numero, " es IMPAR."
    end if
    print *, "Presione ENTER para salir..."
    read(*,*) pausa
end program ParImpar

