program cronometro;
uses crt, sysutils;
var
    horas, minutos, segundos: integer;
begin
    horas := 0;
    minutos := 0;
    segundos := 0;

    writeln('Cronometro iniciado (Ctrl+C para detener)');
    repeat
        delay(1000);  { 1 segundo }
        segundos := segundos + 1;

        if (segundos = 60) then
        begin
            segundos := 0;
            minutos := minutos + 1;
        end;

        if (minutos = 60) then
        begin
            minutos := 0;
            horas := horas + 1;
        end;

        clrscr;
        writeln(Format('%.2d:%.2d:%.2d', [horas, minutos, segundos]));
    until false;

    writeln('Presione ENTER para salir...');
    readln;
end.

