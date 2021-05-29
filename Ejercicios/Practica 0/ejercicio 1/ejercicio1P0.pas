{1. Implemente un programa que lea por teclado dos números enteros e imprima en pantalla los
valores leídos en orden inverso. Por ejemplo, si se ingresan los números 4 y 8, debe mostrar el
mensaje: Se ingresaron los valores 8 y 4}

program ejercicio1P0;
var
  primerNumero,segundoNumero:integer;  
begin
  writeln('Ingrese un numero');
  readln(primerNumero);
  writeln('Ingrese otro numero');
  readln(segundoNumero);
  writeln('se ingresaron los valores: ', segundoNumero, ' y ',primerNumero);
end.


//Buenas! como estamos! dale que arrancamos.
{
 
 El ejercicio nos pide  que leamos de teclado dos numeros enteros, quedemosnos con esa frase.
 La expresion leer de teclado implica que un usuario(nosotros) vamos a ingresar valores con el teclado,
 esos valores que ingresamos se van a guardar en variables (por ahora imaginemos las variables como cajitas que guardan datos)
 En este caso esas cajitas van a guardar los datos que nosotros ingresemos por teclado. 
  En la zona de declaracion de variables (desde linea 6 hasta linea 7) le avisamnos a pascal que vamos a crear 2 variables,
  esas variables que van a almacenar esos valores que posteriormente ingresamos por teclado.
Los writeln() imprimen por pantalla las frases(strings) que se encuentren entre comillas simples dedntro de los parentesis.
los readln() se encargan de asignarle el valor ingresado por teclado a la variable que contienen entre parentesis.
Luego en la ultima linea imprimimos lo que nos solicita concatenando strings con las variables en el orden solicitado.


}