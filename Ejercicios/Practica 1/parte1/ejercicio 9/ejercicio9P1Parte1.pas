{Realizar un programa que lea un carácter, que puede ser “+” (suma) o “-” (resta); si se ingresa otro
carácter, debe informar un error y finalizar. Una vez leído el carácter de suma o resta, deberá leerse
una secuencia de números enteros que finaliza con 0. El programa deberá aplicar la operación leída
con la secuencia de números, e imprimir el resultado final.
Por ejemplo:
○ Si se lee el carácter “-” y la secuencia 4 3 5 -6 0 , deberá imprimir: 2 (4 – 3 – 5 - (-6) )
○ Si se lee el carácter “+” y la secuencia -10 5 6 -1 0, deberá imprimir 0 ( -10 + 5 + 6 + (-1) )}

program ejercicio9P1Parte1;
var
  caracter: char;
  resultado: integer;
  num:integer;
begin
    writeln('ingrese un caracter');
    readln(caracter);
    if(caracter = '+') or (caracter = '-') then begin
        if(caracter = '+')  then begin
            resultado:= 0;
            writeln('ingrese un numero ');
            readln(num);
            while(num <> 0) do begin
                resultado += num;
                writeln('ingrese otro numero ');
                readln(num);
            end;
        end
        else begin
            writeln('ingrese un numero ');
            readln(num);
            resultado:= num;
            writeln('ingrese un numero ');
            readln(num);
            while(num <> 0) do begin
                resultado -= num;
                writeln('ingrese un numero ');
                readln(num);
            end;
        end;
    end
    else 
        writeln('caracter incorrecto, adios!');
    writeln('tras haber elegido la operacion:  ', caracter, '  el resultado es: ',resultado);
end.


// en este ejercicio la dificultad radica en que si yo elijo la operacion - 
// sucede que al primer numero yo le tengo que restar los siguientes,
// si elijo la opcion - y mi primer numero es 4 y luego 6, es incorrecto hacer: 0 - 4 - 6 
// si no que lo que nos pide el enunciado es: 4 - 6 
// es por esto que en la linea: 31 hago resultado:= num;