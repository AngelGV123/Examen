program seriefibonacci;
uses crt;
var
    n, i: integer;
    primero, segundo, siguiente: integer;
begin
    clrscr;
    write('Ingrese la cantidad de terminos de la serie Fibonacci: ');
    readln(n);

    primero := 0;
    segundo := 1;

    writeln('Serie Fibonacci:');
    if n >= 1 then writeln(primero);
    if n >= 2 then writeln(segundo);

    for i := 3 to n do
    begin
        siguiente := primero + segundo;
        writeln(siguiente);
        primero := segundo;
        segundo := siguiente;
    end;

    writeln('Presione ENTER para salir...');
    readln;
end.

