program contarvocalesconsonantes;
uses SysUtils;  { para UpCase }
var
  Texto: string;
  i, ContadorVocales, ContadorConsonantes: integer;
  Letra: char;
begin
  ContadorVocales := 0;
  ContadorConsonantes := 0;

  Write('Ingrese una cadena de texto: ');
  ReadLn(Texto);

  for i := 1 to Length(Texto) do
  begin
    Letra := UpCase(Texto[i]);
    if Letra in ['A','E','I','O','U'] then
      Inc(ContadorVocales)
    else if Letra in ['A'..'Z'] then
      Inc(ContadorConsonantes);
  end;

  Writeln('Cantidad de vocales: ', ContadorVocales);
  Writeln('Cantidad de consonantes: ', ContadorConsonantes);

  Writeln('Presione ENTER para salir...');
  ReadLn;
end.

