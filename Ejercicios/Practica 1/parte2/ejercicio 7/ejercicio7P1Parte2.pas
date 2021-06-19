{7. Realizar un programa que lea desde teclado información de autos de carrera. Para cada uno de los
autos se lee el nombre del piloto y el tiempo total que le tomó finalizar la carrera. En la carrera
participaron 100 autos. Informar en pantalla:
- Los nombres de los dos pilotos que finalizaron en los dos primeros puestos.
- Los nombres de los dos pilotos que finalizaron en los dos últimos puestos.

}

program ejercicio7P1Parte2;
var
nombre,nombreMin1,nombreMin2,nombreMax1,nombreMax2: string;
tiempo,tiempoMin1,tiempoMin2,tiempoMax1,tiempoMax2: real;
i: integer;

begin
  nombreMin1:= '';
  nombreMin2:= '';
  nombreMax1:= '';
  nombreMax2:= '';
  tiempoMin1:=9999;
  tiempoMin2:=9999;
  tiempoMax1:= -9999;
  tiempoMax2:= -9999;
  for i:= 1 to 6 do begin
    writeln('escriba el nombre del piloto');
    readln(nombre);
    writeln('escriba el tiempo en que completo la carrera');
    readln(tiempo);
    if(tiempo < tiempoMin1) then begin
      tiempoMin2:= tiempoMin1;
      nombreMin2:= nombreMin1;
      tiempoMin1:= tiempo;
      nombreMin1:= nombre;
    end
    else begin
      if(tiempo< tiempoMin2) then begin
        tiempoMin2:= tiempo;
        nombreMin2:= nombre;
      end;
    end;
    if(tiempo > tiempoMax1) then begin
      tiempoMax2:= tiempoMax1;
      nombreMax2:= nombreMax1;
      tiempoMax1:= tiempo;
      nombreMax1:= nombre;
    end
    else begin
      if(tiempo > tiempoMax2) then begin
        tiempoMax2:= tiempo;
        nombreMax2:= nombre;
      end;
    end;
    
  end;

  writeln('el piloto que salio primero fue: ',nombreMin1, ' con un tiempo de: ',tiempoMin1);
  writeln('el piloto que salio segundo fue: ',nombreMin2, ' con un tiempo de: ',tiempoMin2);
  writeln('el piloto que salio ultimo fue: ',nombreMax1, ' con un tiempo de: ',tiempoMax1);
  writeln('el piloto que salio anteultimo fue: ',nombreMax2, ' con un tiempo de: ',tiempoMax2);
  
  


end.




