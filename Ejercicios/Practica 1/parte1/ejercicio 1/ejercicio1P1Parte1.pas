{1. Realizar un programa que lea 2 números enteros desde teclado e informe en pantalla cuál de los
dos números es el mayor. Si son iguales debe informar en pantalla lo siguiente: “Los números leídos
son iguales”}


program ejercicio1P1Parte1;
var
  num1,num2:integer;
begin
  writeln('ingrese el primer numero');
  ReadLn(num1);
  writeln('ingrese el segundo numero');
  ReadLn(num2);
  if (num1 = num2) then
    writeln('los numeros son iguales')
  else
    if(num1 > num2) then
      writeln('el numero : ',num1, ' es el mayor')
    else
      writeln('el numero : ',num2, ' es el mayor');
end.