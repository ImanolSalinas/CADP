(* 2. Dado el siguiente programa, indicar qué imprime. *)

program ejercicio2P2Parte1;
var
  a,b: integer; // a y b son variables globales, son alcanzadas y compartidas por los modulos y el programa principal

procedure uno;
begin
  b := 3;  // le asigna el valor 3 a la variable global b
  writeln(b);  // imprime la variable global b
end;
begin
  a:= 1;  // le asigna a la variable global a, un valor de 1
  b:= 2;  // le asigna a la variable global b, un valor de 2
  uno;  // llama al procedimiento uno, cambia el flujo de control, ahora viajamos al procedimiento
  writeln(b, a);  // imprime la variable global
end.

(* imprime:  
3 
31 *)

(* a que le vamos a prestar atencion aca? 
bueno para empezar recomiendo siempre arrancar a ver el programa principal
y preguntarse siempre que es lo que hace la instruccion y por otro lado si es correcta, 
ya veran mas adelante los beneficios de preguntarse si es correcta una instruccion.
En el programa principal se le asigna un valor 1 a la variable a,
luego un valor 2 a la variable b
luego llamamos al procedimiento uno, el cual pisa el contenido de la variable global b
a diferencia del ejercicio anterior, b es la misma variable tanto dentro del procedimiento
como en el programa principal , es por eso que se pisa en la linea 9 la variable b *)