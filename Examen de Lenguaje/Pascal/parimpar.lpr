program parimpar;
uses crt;
var
    numero: integer;
begin
    clrscr;
    write('Ingrese un numero entero: ');
    readln(numero);

    if (numero mod 2 = 0) then
        writeln('El numero ', numero, ' es PAR.')
    else
        writeln('El numero ', numero, ' es IMPAR.');

    writeln('Presione ENTER para salir...');
    readln;
end.

