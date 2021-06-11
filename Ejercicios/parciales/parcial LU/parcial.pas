program parcial;
type
  rTiket = record
    codigoVuelo:integer;
    dni:integer;
    origen: string;
    destino: string;
    valor: real;
  end;

  lista = ^nodo;
  nodo = record
    dato: rTiket;
    sig:lista;
  end;

  vecContador = array [1..1200] of integer;

procedure inicializarVectorContador(var v: vecContador);
var
  i:integer;
begin
  for i:= 1 to 1200 do begin
    v[i]:= 0;
  end;
end;

 procedure recorrerLiSTA(l: lista; var vec: vecContador);
 var
   dniActual:integer;
 begin
   while(L<>nil) do begin
     dniActual:= L^.dato.dni;
      while(L^.dato.dni = dniActual) and (L <> nil) do begin
        vecContador[L^.dato.codigoVuelo] += 1;
      end;


     L:= L^.sig;
   end;
 end;



var
  L:lista;
begin

  L:= nil;
  cargarLista(L); // se dispone
  recorrerLista(L);
end.