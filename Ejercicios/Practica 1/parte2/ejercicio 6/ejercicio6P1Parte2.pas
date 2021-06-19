{6. Realizar un programa que lea información de 200 productos de un supermercado. De cada producto
se lee código y precio (cada código es un número entre 1 y 200). Informar en pantalla:
- Los códigos de los dos productos más baratos.
- La cantidad de productos de más de 16 pesos con código par.

}

program ejercicio6P1Parte2;
var
  i,codigo,minCod1,minCod2,cantProductos:Integer;
 precio, precioMin1,precioMin2: real;
begin
  precioMin1:= 9999;
  precioMin2:= 9999;
  minCod1:= 1;  // da igual el valor en este caso
  minCod2:= 1;
  cantProductos:= 0;
  for i:= 1 to 5 do begin
    writeln('ingrese el codigo del producto');
    readln(codigo);
    writeln('ingrese el precio del producto');
    readln(precio);
    if(precio < precioMin1) then begin
      precioMin2:= precioMin1;
      minCod2:= minCod1;
      precioMin1:= precio;
      minCod1:= codigo;
    end
    else
      if(precio < precioMin2) then begin
        precioMin2:= precio;
        minCod2:= codigo;
      end;
    if((precio > 16 ) and (codigo mod 2 = 0)) then begin
      cantProductos+=1;
    end;
  end;
  writeln('el codigo del producto mas barato es el codigo: ',minCod1 , ' cuyo producto tiene un precio de: ', precioMin1, '$');
  writeln('el codigo del segundo producto mas barato es el codigo: ',minCod2 , ' cuyo producto tiene un precio de: ', precioMin2, '$');
  WriteLn('la cantidad de productos  con precio mayor a 16 $  con codigo par son: ', cantProductos);
end.




