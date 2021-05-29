{4. Implemente un programa que lea el diámetro D de un círculo e imprima:
a. El radio (R) del círculo (la mitad del diámetro)
b. El área del círculo. Para calcular el área de un círculo debe utilizar la fórmula PI x R
2
c. El perímetro del círculo. Para calcular el perímetro del círculo debe utilizar la fórmula
D*PI (o también PI*R*2)}


program ejercicio4P0;
const
  PI = 3.14;
var
  diametro,radio,area,perimetro:real;
begin
  writeln('ingrese el diametro del circulo');
  readln(diametro);
  radio:= diametro / 2;
  area := PI * (radio * radio); // no son necesarios los parentesis, solo estan para ayudar visualmente.
  perimetro:= diametro * PI;
  writeln('diametro: ',diametro:2:2);
  writeln('radio: ',radio:2:2);
  writeln('area: ',area:2:2);
  writeln('perimetro: ',perimetro:2:2);
end.


{Se una una CONSTANTE cuando cierto valor en nuetro problema no va a variar, sabemos que PI no varia, por lo debemos considerar
como una constante}