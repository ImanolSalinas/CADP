{2. Realice un programa que lea 10 números e informe cuál fue el mayor número leído. Por ejemplo, si
se lee la secuencia:
3 5 6 2 3 10 98 8 -12 9
deberá informar: “El mayor número leído fue el 98”}

program ejercicio1P1Parte2;
var
  i,num,maximo,posicion: integer;
  
begin
  maximo:= -9999;
  for i:= 1 to 10 do begin
    writeln('ingrese un numero');
    readln(num);
    if(num > maximo ) then begin
      maximo:= num;
      posicion:= i;
    end;
  end;
  writeln('el maximo fue: ',maximo, ' en la posicion: ',posicion);  
end.