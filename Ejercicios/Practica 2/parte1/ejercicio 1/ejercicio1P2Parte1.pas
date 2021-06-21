// 1. Dado el siguiente programa, indicar qué imprime. 


program ejercicio1P2Parte1;
var 
  a,b: integer;  // variables globales, pueden ser uitilizadas tanto en el programa principal como en los procedimientos


procedure uno;
var 
  b: integer;  // declara una variable LOCAL llamada b, no confundir con la variable global b, son dos variables distintas, con el mismo identificador
begin
  b := 3;  // inicializa con un valor de 3
  writeln(b);  // la imprime
end;

begin
  a:= 1;  // inicializa la variable gobal a en 1,
  b:= 2;  // inicializa la variable gobal b en 2,
  uno;  // llama al procedimiento uno, es decir cambia erl flujo de control, las instrucciones que se ejecutan a continuacion son las del procedimiento Uno
 // al terminar el procedimiento uno el flujo de control sigue con la siguiente linea, es decir la linea 22 
 writeln(b, a);  // imprime b, y luego a
end.

(*  

conclucion quedemosnos con las ultimas 2 lineas de codigo, llama al procedimiento uno
 el procedimiento uno crea una variable local le asigna un valor y lo imprime, al terminar el procedimeinto 
 volvemos al programa principal para ejecutar la linea 22, 
 respuesta el programa imprime :
 3
 21 
 
 
 *)