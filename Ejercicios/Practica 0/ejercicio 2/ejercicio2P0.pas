{2. Modifique el programa anterior para que el mensaje de salida muestre la suma de ambos
números:
a. Utilizando una variable adicional
b. Sin utilizar una variable adicional}

program ejercicio2P0;
var
  primerNumero,segundoNumero,sumaTotal:integer;  
begin
  writeln('Ingrese un numero');
  readln(primerNumero);
  writeln('Ingrese otro numero');
  readln(segundoNumero);
  sumaTotal:= primerNumero + segundoNumero;
  writeln(primerNumero ,' + ',segundoNumero, ' = ', sumaTotal);
end.

{

Parte B

program ejercicio2P0;
var
  primerNumero,segundoNumero:integer;  
begin
  writeln('Ingrese un numero');
  readln(primerNumero);
  writeln('Ingrese otro numero');
  readln(segundoNumero);
  writeln(primerNumero ,' + ',segundoNumero, ' = ', primerNumero + segundoNumero);
end.

}



{Todo lo que esta entre llaves, Pascal lo interpreta como un comentario,
 es decir que el compilador no tiene en cuenta lo que esta entre llavez}

// si queremos comentar una sola linea usamos doble barra