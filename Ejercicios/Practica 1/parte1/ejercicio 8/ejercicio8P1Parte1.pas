{8. Realizar un programa que lea tres caracteres, e informe si los tres eran letras vocales o si al menos
uno de ellos no lo era. Por ejemplo, si se leen los caracteres “a e o” deberá informar “Los tres son
vocales”, y si se leen los caracteres “z a g” deberá informar “al menos un carácter no era vocal”}

program ejercicio8P1Parte1;
var
    caracter1: char;
    caracter2: char;
    caracter3: char;
begin
    writeln('ingrese el primer caracter');
    readln(caracter1);
    writeln('ingrese el segundo caracter');
    readln(caracter2);
    writeln('ingrese el tercer caracter');
    readln(caracter3);
    if(((caracter1 = 'a') or (caracter1 = 'e') or (caracter1 = 'i') or (caracter1 = 'o') or (caracter1 = 'u' )) and
      ((caracter2 = 'a') or (caracter2 = 'e') or (caracter2 = 'i') or (caracter2 = 'o') or (caracter2 = 'u' )) and
      ((caracter3 = 'a') or (caracter3 = 'e') or (caracter3 = 'i') or (caracter3 = 'o') or (caracter3 = 'u' ))) then
        writeln('todas las letras fueron vocales')
    else 
        writeln('al menos uno no es vocal');
end.

// la dificultad de este ejercicio esta en el uso correcto de los parentesis, hay un parentesis general que envuelve todo el if
    // luego un parentesis para cada and if ((si pasa esto)and(pasa esto)and(pasa esto))
    // cada : pasa esto es un : (caracter1 = 'a') or (caracter1 = 'e') etc