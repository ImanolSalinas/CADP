{3. Realizar un programa que lea desde teclado la información de alumnos ingresantes a la carrera
Analista en TIC. De cada alumno se lee nombre y nota obtenida en el módulo EPA (la nota es un
número entre 1 y 10). La lectura finaliza cuando se lee el nombre “Zidane Zinedine“, que debe
procesarse. Al finalizar la lectura informar:
- La cantidad de alumnos aprobados (nota 8 o mayor) y
- la cantidad de alumnos que obtuvieron un 7 como nota}

program ejercicio3P1Parte2;
var
  nota: integer;
  nombre: string;
  cantAprobados, cantSiete: integer;

begin
  cantAprobados:= 0;
  cantSiete:=0;
  repeat
    writeln('ingrese la nota de un alumno');
    readln(nota);
    if(nota = 7 ) then
      cantSiete += 1
    else
      if(nota >= 8 ) then
      cantAprobados +=1;
    WriteLn('ingrese el nombre del alumno');
    ReadLn(nombre);
  until(nombre = 'Zidane Zinedine')  ;
  writeln('cantidad con 7:  ',cantSiete);
  writeln('la cantidad de aprobados con 8 o mejor nota:  ',cantAprobados);
  
end.