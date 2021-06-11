{14. La biblioteca de la Universidad Nacional de La Plata necesita un programa para administrar
información de préstamos de libros efectuados en marzo de 2020. Para ello, se debe leer la información
de los préstamos realizados. De cada préstamo se lee: nro. de préstamo, ISBN del libro prestado, nro. de
socio al que se prestó el libro, día del préstamo (1..31). La información de los préstamos se lee de manera
ordenada por ISBN y finaliza cuando se ingresa el ISBN -1 (que no debe procesarse).
Se pide:
A) Generar una estructura que contenga, para cada ISBN de libro, la cantidad de veces que fue prestado.
Esta estructura debe quedar ordenada por ISBN de libro.
B) Calcular e informar el día del mes en que se realizaron menos préstamos.
C) Calcular e informar el porcentaje de préstamos que poseen nro. de préstamo impar y nro. de socio
par.}

Program parcial2;

Type
     r_prestamo = record
         nroPrestamo: integer;
   		 ISBN: integer;
		 nroSocio: integer;
		 dia: 1..31;
     end;
  
     r_generaLista = record
         nroISBN:integer;
		 cantPrestamo: integer;
     end;
	 
	 lista = ^nodo;
	 
	 nodo = record
	     dato:r_generaLista;
		 sig:lista;
	 end;
	 
	 vc_contador = array [1..31] of integer;
	
	
	 




{====================== Comienzo Inicializar Vector ======================}

Procedure InicializarVector (VAR vc:vc_contador)
Var
  i:integer;
Begin
     For i:= 1 to 31 do 
	     vc[i]:= 0;
End;

{====================== Fin Inicializar Vector ======================}





{====================== Comienzo Inciso C ======================}

Function CUMPLE (prestamo,socio:integer): boolean;
Begin
     CUMPLE:= ((prestamo MOD 2) <> 0) AND ((socio MOD 2) = 0);
End;

{====================== Fin Inciso C ======================}





{====================== Comienzo Inciso B ======================}
Function MINIMO (vc:vc_contador;min,minDia:integer): integer;
VAR
  i:integer;
Begin
     For i:= 1 to 31 do begin
	     If (vc[i] < min) then begin
		     min:= vc[i];
			 minDia:= i;
		 end;
	 end;
	 MINIMO:= minDia;
End;

{====================== Fin Inciso B ======================}




{====================== Comienzo Agregar Atras Lista INCISO A ======================}

Procedure AgregarAtras (VAR L:lista; VAR ult:lista; r:r_generaLista);
Var
  aux:lista;
Begin
     new(aux);
	 aux^.dato:=r;
	 aux^.sig:= nil;
	 If (L = nil) then
	     L:= nuevo
	 Else
         ult^.sig:= aux;
     ult:= aux;	 	
End;

{====================== Fin Agregar Atras Lista INCISO A ======================}







{====================== Comienzo LEER ======================}

Procedure LEER (VAR p:r_prestamo);
Begin
     with p do begin
	     writeln('Ingrese ISBN');
		 readln(ISBN);
		 IF (ISBN <> -1) then begin
	         writeln('Ingrese numero de Prestamo');
		     readln(nroPrestamo);
		     writeln('Ingrese el numero de socio');
		     readln(nroSocio);
		 	 writeln('Ingrese el dia del prestamo');
		     readln(dia);
		 end;
	 end;
End;

Procedure Cargar (VAR L:lista; VAR vc:vc_contador);
VAR
  p:r_prestamo;
  r:r_generaLista;
  ult:lista;
  totalPrestamos: integer;
  ISBNActual,cantISBN,cantCumple:integer;
  porcentaje:real;
  min,minDia:integer;
Begin
     totalPrestamos:= 0;
	 cantCumple:= 0;
	 min:= 99999;
	 LEER (p);
	 While (p.ISBN <> - 1) do begin
	     ISBNActual:= p.ISBN;
		 cantISBN:= 0;
		 
		 While (p.ISBN <> - 1) AND (ISBNActual = p.ISBN) do begin
		     totalPrestamos:= totalPrestamos + 1;
			 
			 cantISBN:= cantISBN + 1;                         //para inciso A
			 
			 vc[p.dia]:= vc[p.dia] + 1;                      //para inciso B
			 
			 If (CUMPLE (p.nroPrestamo,p.nroSocio)) then    //inciso C
			     cantCumple:= cantCumple + 1;
			 
			 LEER(p);
		 end;
		 //Termino de leer el mismo isbn
		 
		 r.nroISBN:= ISBNActual;
		 r.cantPrestamo:= cantISBN;
		 AgregarAtras(L,ult,r);
	 
	 end;
	 //termino de leer todo
	 
	 writeln('El dia que menos prestamos se realizaron fue: 'MINIMO (vc,min,minDia));
	 porcentaje:= cantCumple/totalPrestamos;
	 writeln('El porcentaje de prestamos que posee numero de prestamo impar y numero de socio par es: ',porcentaje);
End;

{====================== Fin LEER ======================}


VAR
  L:lista;
  vc:vc_contador;
Begin
     L:= nil;
	 InicializarVector(vc);
	 Cargar (L,vc);
End.