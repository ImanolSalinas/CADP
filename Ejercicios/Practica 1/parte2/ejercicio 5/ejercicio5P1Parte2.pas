{5. Realizar un programa que lea números enteros desde teclado. La lectura debe finalizar cuando se
ingrese el número 100, el cual debe procesarse. Informar en pantalla:
◦ El número máximo leído.
◦ El número mínimo leído.
◦ La suma total de los números leídos.

}

program ejercicio5P1Parte2;
var
  i,num,min,max: integer;
begin
  min:= 9999;
  max:= -9999;
  repeat
    writeln('escriba un numero');
    readln(num);
    if(num < min) then 
      min:= num;
    if(num > max) then
        max := num;
  until(num = 100);
  writeln('el numero mas chico fue:', min);
  writeln('el numero mas grande fue:', max);
end.


