program SerieFibonacci
    implicit none
    integer :: n, i
    integer :: primero, segundo, siguiente
    character(len=1) :: pausa

    print *, "Ingrese la cantidad de terminos de la serie Fibonacci:"
    read(*,*) n

    primero = 0
    segundo = 1

    print *, "Serie Fibonacci:"
    if (n >= 1) print *, primero
    if (n >= 2) print *, segundo

    do i = 3, n
        siguiente = primero + segundo
        print *, siguiente
        primero = segundo
        segundo = siguiente
    end do

    print *, "Presione ENTER para salir..."
    read(*,*) pausa
end program SerieFibonacci

