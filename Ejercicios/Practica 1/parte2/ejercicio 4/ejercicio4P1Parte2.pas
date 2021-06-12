{4. Realizar un programa que lea 1000 números enteros desde teclado. Informar en pantalla cuáles son
los dos números mínimos leídos.
a. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer
el número 0, el cual debe procesarse.
b. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer
el número 0, el cual no debe procesarse
}

program ejercicio4P1Parte2;
var
  i,num,min1,min2: integer;
begin
  min1:= 9999;
  min2:= 9999;
  for i:= 1 to 5 do begin
    writeln('escriba un numero');
    readln(num);
    if(num < min1) then begin
      min2:= min1;
      min1:=num;
    end
    else
      if(num < min2) then begin
        min2:= num;
      end;
  end;
  writeln('el numero mas chico fue:', min1);
  writeln('el segundo numero mas chico fue:', min2);
end.



  {program ejercicio4P1Parte2;
var
  num,min1,min2: integer;
begin
  min1:= 9999;
  min2:= 9999;
    repeat
      writeln('escriba un numero');
      readln(num);
      if(num < min1) then begin
        min2:= min1;
        min1:=num;
      end
      else
        if(num < min2) then begin
          min2:= num;
        end;
    until (num = 0);    
  writeln('el numero mas chico fue:', min1);
  writeln('el segundo numero mas chico fue:', min2);
end.}




(* program ejercicio4P1Parte2;
var
  num,min1,min2: integer;
begin
  min1:= 9999;
  min2:= 9999;
    writeln('escriba un numero');
    readln(num);
    while(num<>0) do begin
      if(num < min1) then begin
        min2:= min1;
        min1:=num;
      end
      else
        if(num < min2) then begin
          min2:= num;
        end;
      writeln('escriba un numero');
      readln(num);  
    end;
  writeln('el numero mas chico fue:', min1);
  writeln('el segundo numero mas chico fue:', min2);
end. *)


