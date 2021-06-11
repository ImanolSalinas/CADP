{5. Modifique el ejercicio anterior para que, luego de leer el número X, se lean a lo sumo 10 números
reales. La lectura deberá finalizar al ingresar un valor que sea el doble de X, o al leer el décimo
número, en cuyo caso deberá informarse “No se ha ingresado el doble de X”.
}
program ejercicio5P1Parte1;
var
  num1,num2,intento:integer;
begin
  intento:=1;
  writeln('ingrese un numero');
  ReadLn(num1);
  writeln('intento numero: ',intento);
  writeln('ingrese otro numero');
  ReadLn(num2);
  while(num2 <> num1 * 2) and (intento < 10) do begin
    intento+=1;
    writeln('intento numero: ',intento);
    writeln('ingrese otro numero');
    ReadLn(num2);
  end;
  if(num2 = num1*2) then
    writeln('se ha ingresado el doble de: ',num1, ' en el intento: ',intento)
  else 
    writeln('nos pasamos de la cantidad de intentos');
end.