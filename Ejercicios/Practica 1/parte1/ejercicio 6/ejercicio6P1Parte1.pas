{Realizar un programa que lea el número de legajo y el promedio de cada alumno de la facultad. La
lectura finaliza cuando se ingresa el legajo -1, que no debe procesarse.
Por ejemplo, se lee la siguiente secuencia:
33423
8.40
19003
6.43
-1
En el ejemplo anterior, se leyó el legajo 33422, cuyo promedio fue 8.40, luego se leyó el legajo
19003, cuyo promedio fue 6.43, y finalmente el legajo -1 (para el cual no es necesario leer un
promedio).
Al finalizar la lectura, informar:
○ La cantidad de alumnos leída (en el ejemplo anterior, se debería informar 2)
○ La cantidad de alumnos cuyo promedio supera 6.5 (en el ejemplo anterior, se debería informar
1)
○ El porcentaje de alumnos destacados (alumnos con promedio mayor a 8.5) cuyo legajo sean
menor al valor 2500 (en el ejemplo anterior se debería informar 0%).
}

program ejercicio6P1Parte1;
var
  legajo:integer;
  promedio:real;
  cantAlumnosLeidos:integer;
  cantAlumosSuperanSeisConCinco:integer;
  alumnosDestacados:integer;
  porcentajeDestacados:real;
begin
  cantAlumnosLeidos:= 0;
  cantAlumosSuperanSeisConCinco:=0;
  alumnosDestacados:= 0;
  writeln('escriba el legajo del alumno');
  ReadLn(legajo);
  while(legajo<>-1) do begin
    cantAlumnosLeidos+=1;  // incrementa en 1 la cantidad de alumnos leidos
    writeln('escriba el promedio del alumno');
    readln(promedio);
    if(promedio > 6.5) then
      cantAlumosSuperanSeisConCinco += 1;
    if((promedio > 8.5) and (legajo < 2500)) then
      alumnosDestacados += 1;
    writeln('escriba el legajo del alumno');
    ReadLn(legajo);
  end;
  porcentajeDestacados:= (alumnosDestacados * 100) / cantAlumnosLeidos;

  writeln('la cantidad de alumnos leidos fue: ',cantAlumnosLeidos);
  writeln('la cantidad de alumnos que superan 6.5 como promedio fue: ',cantAlumosSuperanSeisConCinco);
  writeln('la cantidad de alumnos destacados fue: ',alumnosDestacados);
  writeln('el porcentaje de alumnos destacados fue: ',porcentajeDestacados:2:2, '%');
end.