program busquedabinaria;
uses crt;
var
    arreglo: array[1..100] of integer;
    n, i, objetivo, izquierda, derecha, medio: integer;
    encontrado: boolean;
begin
    clrscr;
    write('Ingrese el numero de elementos del arreglo: ');
    readln(n);

    writeln('Ingrese los elementos del arreglo:');
    for i := 1 to n do
        readln(arreglo[i]);

    write('Ingrese el numero a buscar: ');
    readln(objetivo);

    izquierda := 1;
    derecha := n;
    encontrado := false;

    while (izquierda <= derecha) and (not encontrado) do
    begin
        medio := (izquierda + derecha) div 2;
        if arreglo[medio] = objetivo then
        begin
            writeln('Numero encontrado en la posicion: ', medio);
            encontrado := true;
        end
        else if arreglo[medio] < objetivo then
            izquierda := medio + 1
        else
            derecha := medio - 1;
    end;

    if not encontrado then
        writeln('Numero no encontrado.');

    writeln('Presione ENTER para salir...');
    readln;
end.

