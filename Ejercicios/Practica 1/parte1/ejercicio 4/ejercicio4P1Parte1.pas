{4. Realizar un programa que lea un número real X. Luego, deberá leer números reales hasta que se
ingrese uno cuyo valor sea exactamente el doble de X (el primer número leído)}

program ejercicio4P1Parte1;
var
  num1,num2:integer;
begin
  writeln('ingrese un numero');
  ReadLn(num1);
  writeln('ingrese otro numero');
  ReadLn(num2);
  while(num2 <> num1 * 2) do begin
    writeln('ingrese otro numero');
    ReadLn(num2);
  end;
  WriteLn('se ha ingresado el doble de: ',num1);

end.