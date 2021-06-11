{2. El registro civil de La Plata ha solicitado un programa para analizar 
la distribución de casamientos durante el año
2019. Para ello, cuenta con información de las fechas de todos los casamientos realizados durante ese año.
a) Analizar y definir un tipo de dato adecuado para almacenar la información de la fecha de cada casamiento.
b) Implementar un módulo que lea una fecha desde teclado y la retorne en un parámetro cuyo tipo es el definido
en el inciso a).
c) Implementar un programa que lea la fecha de todos los casamientos realizados en 2019. La lectura finaliza al
ingresar el año 2020, que no debe procesarse, e informe la cantidad de casamientos realizados durante 
los meses de verano (enero, febrero y marzo) 
y la cantidad de casamientos realizados en los primeros 10 días de
cada mes. Nota: utilizar el módulo realizado en b) para la lectura de fecha.}


program ejercicio2P3;
type
  rFecha = record
    dia: integer;
    mes: integer;
    anio: integer;
  end;

procedure leerFecha(var fecha: rFecha);
begin
  writeln('en que anio fue el casamiento?');
  readln(fecha.anio);
  if(fecha.anio <> 2020) then begin
    writeln('en que mes fue el casamiento?');
    readln(fecha.mes);
    writeln('en que dia fue el casamiento?');
    readln(fecha.dia);
  end; 
end;


var
  fecha: rFecha;
  contadorMeses: integer;
  contadorDias:integer;
begin
  contadorMeses:=0;
  contadorDias:=0;
  leerFecha(fecha);
  while(fecha.anio <> 2020) do begin  // en este punto la fecha ya esta cargada
    if((fecha.mes = 1  ) or (fecha.mes = 2)or (fecha.mes = 3) ) then 
      contadorMeses+=1;
    if(fecha.dia <= 10) then
      contadorDias += 1;
    leerFecha(fecha);
  end;
  writeln('la cantidad de casamientos hechos entre los primeros 3 meses fueron: ',contadorMeses);
  writeln('la cantidad de casamientos hechos entre los primeros 10 dias de cada mes fueron: ',contadorDias);
end.