{3. Realizar un programa que lea 3 números enteros y los imprima en orden descendente.
Por ejemplo, si se ingresan los valores 4, -10 y 12, deberá imprimir:
12 4 -10


Bueno aca la opcion mas rapida practica bonita sencilla pragmatica es preguntar sobre que numero es el mayor de los otros 2
cuando vean el codigo lo van a entender, acordate que cualquier cosa esta el chat de la pagina}

{el ejercicio no pide   hay que hacer en caso de que ingreses numeros iguales, asi que no tenemos esa opcion en cuenta}



program ejercicio3P1Parte1;
var
num1,num2,num3: integer;
begin
  writeln('ingrese el primer numero');
  ReadLn(num1);
  writeln('ingrese el segundo numero');
  ReadLn(num2);
  writeln('ingrese tercer numero');
  ReadLn(num3);
  if(num1 >num2) and (num1>num3) then begin // aca pregunto si el numero mas grande es el primero, en ese caso tengo 2 opciones:  
      if(num2 > num3) then  //  si numero1 es el mas grande, si numero 2 es mas gramde que numero 3, entonces: 
          writeln(num1,num2,num3)
      else  // si no, significa que numero3 es mas grande que numero 2, numero1 sigue siendo el mas grande
          writeln(num1,num3,num2);
  end
  else
      if(num2 >num1) and (num2>num3) then begin // aca pregunto si el numero mas grande es el segundo, en ese caso tengo 2 opciones:  
          if(num1 > num3) then  //  si numero 2 es el mas grande, si numero 1 es mas gramde que numero 3, entonces: 
              writeln(num2,num1,num3)
          else  // si no, significa que numero3 es mas grande que numero 2, numero2 sigue siendo el mas grande
              writeln(num2,num3,num1);
      end
      else
          if(num3 >num1) and (num3>num2) then begin // aca pregunto si el numero mas grande es el tercero, en ese caso tengo 2 opciones:  
              if(num1 > num2) then  //  si numero 3 es el mas grande, si numero 1 es mas gramde que numero 2, entonces: 
                  writeln(num3,num1,num2)
              else  // si no, significa que numero2 es mas grande que numero 1, numero3 sigue siendo el mas grande
                  writeln(num3,num2,num1);
          end;
end.