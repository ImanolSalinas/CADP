{La plataforma YouTube está analizando algunos de sus principales canales de video. Para
ello, YouTube cuenta con una tabla con el nombre de las 60 categorías que utilizan para
clasificar los videos (Música, Educación y Ciencia, Hogar, Deportes, etc.).
De cada video se conoce su título, nombre del canal donde fue publicado, duración en
segundos, año de publicación, cantidad de visualizaciones y código de categoría a la que
pertenece el video (1..60).
Realizar un programa que:
A. Invoque a un módulo que lea la información de los videos hasta ingresar un video de
duración -1 ( que no debe procesarse) y devuelva en una estructura de datos adecuada,
para el canal “Paulina Cocina”, la siguiente información:
- Nombre del canal
- Año de publicación del video más reciente
- Cantidad de videos publicados
- Cantidad total de visualizaciones entre todos los videos.
- Detalle con Título, nombre de la categoría y duración de todos los videos con más de
1.000 visualizaciones
B. Invoque a un módulo que reciba la estructura generada en A) e imprima Nombre del
canal y el título de cada video con más de 1000 visualizaciones.}

program parcial1;

type
  str20 = string[20];
  tabla_categorias = array [1..60] of string;  // en esta tabla se guardan los nombrws de las categorias
  
  rVideo = record  // este es el registro de videos generales
    titulo: str20;
    nombreCanal: str20;
    duracionSegundos: integer;
    anioPublicacion: integer;
    cantVisualizaciones: integer;
    codCategoria: integer;
  end;

  lista = ^nodo;  // lista de videos generales
 
  nodo = record
    dato: rVideo;
    sig: lista;
  end;

  rDetalle = record  // este registro va a estar en los nodos de la lista dentro del registro paulina
    titulo: str20;
    categoria: str20;
    duracion: integer;
  end;

  listaPaulina = ^nodo2;  // listaPaulina tipo de dato para apuntar a un nodo distinto
  nodo2 = record  // este nodo guarda un rDetalle de la lista que esta dentro del registro Paulina
    dato: rDetalle;
    sig:listaPaulina;
  end;


  rCanalPaulina = record  // este es el tipo de dato para definir el registro que agrupa toda la informacion del canal Paulina mas su lista
    nombreCanal: str20;
    anioVideoMasReciente: integer;
    cantVideosPublicados: integer;
    totalVisualizaciones:integer;
    listaPaulina: ^nodo2;  // dentro del registroPaulina aca esta la lista
  end;





procedure leerVideo(var video:rVideo);  // este modulo lee un video en particular
begin
  with video do begin
    writeln('escriba la duracion del video');
    readln(duracionSegundos);
    if(duracionSegundos <> -1) then begin
      writeln('escriba el titulo del video');
      readln(titulo);
      writeln('escriba el nombre del canal');
      readln(nombreCanal);
      writeln('escriba el anio de publicacion del video');
      readln(anioPublicacion);
      writeln('escriba la cantidad de visualizaciones del video');
      readln(cantVisualizaciones);
      writeln('escriba el codigo de categoria del video');
      readln(codCategoria);
    end;
  end;    
end;

procedure agregarAdelante(var L: lista; var video: rVideo);  // este modulo agfrega adelante todos los videos generales leidos
var
  aux: lista;
begin
  new(aux);
  aux^.dato:= video;
  aux^.sig := L;
  L:= aux;
end;




procedure agregarAdelantePaulina(var L:listaPaulina; detalle:rDetalle);  // este agrega adelante de la lista dentro del record de pauliuna
var
  aux:listaPaulina;
begin
  new(aux);
  aux^.dato:=detalle;
  aux^.sig:=L;
  L:= aux;  
end;


procedure configurarCanalPaulina(var recordPaulina: rCanalPaulina; video: rVideo; var max:integer; tabla: tabla_categorias);
var
  detalle: rDetalle; // creo un registro detalle, registro que va a conformar la lista dentro del registroPaulina
begin
  if(video.anioPublicacion > max) then begin
    max:= video.anioPublicacion;
    recordPaulina.anioVideoMasReciente:= max;
  end;
   recordPaulina.cantVideosPublicados += 1;
   recordPaulina.totalVisualizaciones += video.cantVisualizaciones;
   if(video.cantVisualizaciones > 1000) then begin  // si el video que es de canal  pauylina tiene mnas de 1000 visualizaciones lo mandamos a una lista interna
     detalle.titulo := video.titulo;
     detalle.categoria := tabla[video.codCategoria];  // atento a esto
     detalle.duracion:= video.duracionSegundos;
     agregarAdelantePaulina(recordPaulina.listaPaulina, detalle);
   end;
end;


procedure cargarRecordPaulina(var r: rCanalPaulina );  // este modulo inicializaq campos necesarios del registroPaulina
begin
  recordPaulina.nombreCanal = 'Paulina Cocina';  // inicializo un dato del registro paulina aca para no hacerlo siempre
  recordPaulina.listaPaulina:=nil;
  recordPaulina.cantVideosPublicados:=0;
  recordPaulina.totalVisualizaciones:=0;
end;


procedure cargarLista(var L:lista; var recordPaulina : rCanalPaulina; tabla:tabla_categorias);  // este carga la lista de videos generales Y
var                                // recibe ese registro de Paulina, con la tabla, 
  video: rVideo;
  max:integer;
begin
  cargarRecordPaulina(recordPaulina);  // lleno los campos necesarios del registro Paulina
  max:=-9999;
  leerVideo(video);
  while(video.duracionSegundos <> -1) do begin
    agregarAdelante(L,video);
    if(video.nombreCanal = 'Paulina Cocina') then begin  // Aca veo si es de paulina cocina  
       configurarCanalPaulina(recordPaulina, video, max, tabla);
    end;
    leerVideo(video)
  end;
end;


var
  L:lista;
  recordPaulina: rCanalPaulina;
  tabla: tabla_categorias;
begin
  L:= nil;
  cargarLista(L,recordPaulina,tabla);

  
end.