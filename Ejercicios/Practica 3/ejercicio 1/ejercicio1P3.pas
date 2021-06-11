{Completar el programa principal para que lea información de alumnos (código, nombre, promedio) e informe
la cantidad de alumnos leídos. La lectura finaliza cuando ingresa un alumno con código 0, que no debe
procesarse. Nota: utilizar el módulo leer.

b. Modificar al programa anterior para que, al finalizar la lectura de todos los alumnos, se informe también el
nombre del alumno con mejor promedio.
}


program ejercicio1P3;
type
    str20 = string[20];
    alumno = record
        codigo : integer;
        nombre : str20;
        promedio : real;
    end;

procedure leer(var alu : alumno);
begin
    writeln('Ingrese el codigo del alumno');
    readln(alu.codigo);
    if (alu.codigo <> 0) then begin
        writeln('Ingrese el nombre del alumno');
        readln(alu.nombre);
        writeln('Ingrese el promedio del alumno');
        readln(alu.promedio);
    end;
end;
{ declaración de variables del programa principal }
var
    a : alumno;
    contador: integer;
    mejorPromedio:real;
    nombreDelMejorPromedio:str20;
{ cuerpo del programa principal }
begin
  mejorPromedio:= -9999;
  contador:=0;
  leer(a); // al terminar el procedimiento leer, mi registro a, regresa al programa principal con todos sus campoos llenos
  while(a.codigo <> 0) do begin
    if(a.promedio > mejorPromedio) then begin
        nombreDelMejorPromedio:= a.nombre;
        mejorPromedio:= a.promedio;
    end;  
    contador +=1;
    leer(a);
  end;
  writeln('la cantidad de alumos leidos fueron: ',contador);
  writeln('el nombre del mejor promedio es: ',nombreDelMejorPromedio);
end.
