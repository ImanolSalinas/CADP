{ Un local de ropa desea analizar las ventas realizadas en el último mes. Para ello se lee por cada día
del mes, los montos de las ventas realizadas. La lectura de montos para cada día finaliza cuando se
lee el monto 0. Se asume un mes de 31 días. Informar la cantidad de ventas por cada día, y el monto
total acumulado en ventas de todo el mes.
a) Modifique el ejercicio anterior para que además informe el día en el que se realizó la
mayor cantidad de ventas.


}

program ejercicio8P1Parte2;
var
i: integer;
monto:real;
montoTotalDia:real;
montoTotalMes:real;
diaVentaMaxima:integer;
ventaMaxima:real;

begin
  montoTotalMes:=0;  // aca almaceno la totalidad del monto del mes
  ventaMaxima:=-9999; // aca almaceno el mayor monto de un dia
  for i:= 1 to 31 do begin
    writeln('ingrese el monto de una venta');
    readln(monto);
    montoTotalDia:=0;  // iniciando montoTotalDia aca, generamos que para cada dia, es decir para cada vuelta del for, el monto total del dia empiece en 0 
    while(monto <> 0) do begin
      montoTotalDia += monto;
      writeln('ingrese el monto de una venta');
      readln(monto);
    end;  // este while lee montos de ventas de un mismo dia,
    montoTotalMes+= montoTotalDia;  // cuando salgo del while acumulo en la ventaTotalDelMes
    if(montoTotalDia > ventaMaxima) then begin  // y pregunto si el monto total del dia que se acaba de leer es el mayor, es decir si el dia de recien fue en el que mas dinero se recaudo
      ventaMaxima:= montoTotalDia;
      diaVentaMaxima:= i;  // me quedo con la i porque hace referencia a alguno de los 31 dias
    end;
    writeln('el monto total del dia: ',i, ' fue: ',montoTotalDia:2:2);
  end;
  writeln('el monto total del mes fue: ',montoTotalMes:2:2);
  writeln('el dia de mayor recaudacion fue: ',diaVentaMaxima, ' en el cual se recaudo: ', ventaMaxima:2:2);
end.
end.




