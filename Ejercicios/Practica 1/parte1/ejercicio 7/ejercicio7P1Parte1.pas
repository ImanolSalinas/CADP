{7. Realizar un programa que lea el código, el precio actual y el nuevo precio de los productos de un
almacén. La lectura finaliza al ingresar el producto con el código 32767, el cual debe procesarse.
Para cada producto leido, el programa deberá indicar si el nuevo precio del producto supera en un
10% al precio anterior.
Por ejemplo:
○ Si se ingresa el código 10382, con precio actual 40, y nuevo precio 44, deberá imprimir: “el
aumento de precio del producto 10382 no supera el 10%”
○ Si se ingresa el código 32767, con precio actual 30 y nuevo precio 33,01, deberá imprimir: “el
aumento de precio del producto 32767 es superior al 10%”
}

program ejercicio7P1Parte1;
var 
    codigo: integer;
    precioActual: real;
    precioNuevo: real;
    cuarentaPorCiento: real;
begin
  writeln('ingrese el codigo del producto');
  readln(codigo);
  while(codigo <> 32767 ) do begin
    writeln('ingrese el precio actual del producto');
    readln(precioActual);
    writeln('ingrese el nuevo Precio del producto');
    readln(precioNuevo);
    // saco el 40 por ciento del precio actual del producto: 
    cuarentaPorCiento:= (40 * precioActual) / 100; // no son necesarios los parentesis, los pongo para que se vea claro la regla de 3 simple
    if(precioNuevo > precioActual + cuarentaPorCiento) then
        writeln('el aumento de precio del producto ',codigo,  ' supera el 10%')
    else 
        writeln('el aumento de precio del producto ',codigo,  ' no supera el 10%');
    writeln('ingrese el codigo del producto');  // vuelvo a leer para   que en algun momento corte el while
    readln(codigo);
  end;
end.