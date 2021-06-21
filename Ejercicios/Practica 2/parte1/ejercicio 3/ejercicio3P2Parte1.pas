(* 3. Dado el siguiente programa, indicar cuál es el error y su causa. *)
program ejercicio3P2Parte1;
var
  a: integer;
procedure uno;
var 
  b: integer;
begin
  b:= 2;
  writeln(b);
end;
begin
  a:= 1;
  uno;
  writeln(a, b);
end.


// les aconsejo seguir el flujo sw la siguiente manera, 
(* primero el programa principal, vemos cada instruccion y nos preguntamos si es posible
realizar dicha instruccion,
linea 13: le asigna a una variable a el valor 1, 
me pregunto: a que variable me refiero?
la variable se encuentra en la linea 4 como variable global, ningun problema por ahora
linea 14, llama al procedimiento uno, ningun problema
linea 9 se le asigna a una variable b el valor de 2,
puede hacerlo? si, porque b es una variable local al procedimiento
linea 10 imprime esa variable, ningun problema,
linea 15, y aca tenemos el problema,
intenta imprimir una variable b, a la cual el programa principal no tiene alcance
la variable b tiene vida solo adentro del procedimiento uno.
el programa principal no sabe que existe dicha variable, es decir que al querer imprimirla
obtenemos un error *)

