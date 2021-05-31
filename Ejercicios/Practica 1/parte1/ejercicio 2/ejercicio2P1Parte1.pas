{ Realizar un programa que lea un número real e imprima su valor absoluto. El valor absoluto de un
número X, se escribe |X| y se define como:
|X| = X cuando X es mayor o igual a cero
|X| = -X cuando X es menor a cero

para gente que le cuestan las definiciones como yo:

el valor absoluto de 6 es 6
el valor absoluto de -6 es 6

es decir el valor absoluto de un numero es el numero sin el signo, chau vuelva prontos}



program ejercicio2P1Parte1;
var
  num:real;
begin
  writeln('ingrese un numero');
  ReadLn(num);
  if (num > 0) then begin
    writeln('el valor absoluto de: ',num:0:2, ' es: ',num:0:2);
    {pero si queres ser mas piola lo devolves asi: }
    writeln('|',num:0:2,'| = ',num:0:2);
  end
  else begin
    writeln('el valor absoluto de: ',num:0:2, ' es: ',(num * -1):0:2);
    {pero si queres ser mas piola lo devolves asi: }
    writeln('|',num:0:2,'| = ',(num * -1):0:2);
  end
end.

{si lo haces con numeros enteros no tenes que agregar el :2:2, pero prueben poniendo distintos Ej: :0:2, :2:3, :1:2
y ahi lo van a entender}