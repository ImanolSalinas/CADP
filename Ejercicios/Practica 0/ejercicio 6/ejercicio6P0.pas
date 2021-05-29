{ Realice un programa que informe el valor total en pesos de una transacción en dólares.
Para ello, el programa debe leer el monto total en dólares de la transacción, el valor del
dólar al día de la fecha y el porcentaje (en pesos) de la comisión que cobra el banco por la
transacción. Por ejemplo, si la transacción se realiza por 10 dólares, el dólar tiene un valor
20,54 pesos y el banco cobra un 4% de comisión, entonces el programa deberá informar:
La transacción será de 213,61 pesos argentinos
(resultado de multiplicar 10*20,54 y adicionarle el 4%)}

program ejercicio6P0;
var
  dolares: real;
  precioDolar:real;
  comisionBanco:real;
  pesos:real;
  totalPesos:real;
begin
  writeln('ingrese el monto en dolares de la transaccion');
  readln(dolares);
  writeln('ingrese el valor del dolar al dia de la fecha');
  readln(precioDolar);
  writeln('como se desean transferir: ',dolares:2:2,' dolares');
  writeln('y dado que el dolar esta a: ',precioDolar:2:2, 'pesos');
  pesos:= dolares * precioDolar;
  writeln('sin la comision del banco la transaccion seria de un total de: ',pesos:2:2, ' pesos' );
  // ahora con regla de 3 simples tengo que sacar el 4 por ciento del total en pesos
  comisionBanco:= (4 * pesos) / 100;
  writeln('el 4 por ciento de: ',pesos:2:2, ' es: ', comisionBanco:2:2);
  totalPesos:= pesos + comisionBanco;
  writeln('La transaccion sera de ', totalPesos:2:2,' pesos argentinos');
   
  
end.