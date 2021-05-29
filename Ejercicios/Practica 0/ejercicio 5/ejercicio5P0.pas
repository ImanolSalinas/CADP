{5. Un kiosquero debe vender una cantidad X de caramelos entre Y clientes, dividiendo
cantidades iguales entre todos los clientes. Los que le sobren se los quedará para él.
a. Realice un programa que lea la cantidad de caramelos que posee el kiosquero (X),
la cantidad de clientes (Y), e imprima en pantalla un mensaje informando la
cantidad de caramelos que le corresponderá a cada cliente, y la cantidad de
caramelos que se quedará para sí mismo.
b. Imprima en pantalla el dinero que deberá cobrar el kiosquero si cada caramelo
tiene un valor de $1.60,
}


program ejercicio5P0;
const
  VALOR = 1.60;
var
  caramelosDisponibles: integer;
  cantClientes: integer;
  caramelosPorCliente:integer;
  caramelosDelKiosquero:integer;
  dineroACobrar:real;
begin
  writeln('cuantos caramelos hay en el kiosco?');
  readln(caramelosDisponibles);
  writeln('cuantos clientes quieren caramelos?');
  ReadLn(cantClientes);
  caramelosPorCliente := caramelosDisponibles div cantClientes; // la operador div devuelve el valor entero de una division
  // si en el kiosco hay 10 caramelos y vienen 3 clientes, cada cliente debe quedarse con 3 caramelos y el kiosquero con 1
  // 10 div 3 devuelve 3 como resultado.
  caramelosDelKiosquero := caramelosDisponibles mod cantClientes;
  // la operacion mod devuelve el resto de la division. si hay 10 caramelos y 3 clientes, el resultado de 10 mod 3 es 1.
  dineroACobrar := caramelosPorCliente * cantClientes * VALOR;
  writeln(); // hago esto para generar saltos de linea y separar la impresion en la consola de los datos ingresados
  writeln();
  writeln('Si el kiosco cuenta con: ',caramelosDisponibles, ' caramelos en stock, y vienen: ',cantClientes, ' clientes: ');
  writeln('a cada cliente le corresponden: ', caramelosPorCliente, ' caramelos, por lo tanto el kiosquero se queda con: ',caramelosDelKiosquero, ' caramelos');
  writeln('Al quiosquero le corresponde cobrar: ', dineroACobrar:2:2, '$');
end. 