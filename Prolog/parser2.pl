:- use_module(library(lists)).
escribirLinea(end_of_line) :- !.
escribirLinea(Cosa) :- write(Cosa), writeln(".").

parsero(Archivo, Lista) :-
    see(Archivo),
    leerLinea(Lista),
    seen,
    writeln("Hasta la vista BABY!").

leerLinea([]):-at_end_of_stream.
leerLinea([Cabeza|Cuerpo]) :- 
    writeln("Estoy en leerLinea"),
    read(Linea),
    writeln(Linea),
    convertirLista(Linea, Cabeza),
    leerLinea(Cuerpo).

convertirLista(Linea, Lista) :-
    Linea=..[Funtor|Argumentos],
    write("ConvertirLista: "), write(Funtor), write(" con argumentos "),writeln(Argumentos),
    dividir(Funtor, Argumentos, Lista).
convertirLista(Linea, [Linea]).

dividir(end_of_file, _, ""):- !.
dividir(:-, [Izquierda|Derecha], Lista):-
    write("dividir: "), write(Izquierda), write(" con derecha "),writeln(Derecha),
    flatten(Izquierda,ListaIzquierda),
    arg(1, Derecha, Derechota),
    Derechota=..[Izq|Der],
    
    write("Iz1: "), write(Izq), write(" con der "),write(Der),
    write(" con lista: "),writeln(Lista),
    recorrer(Izq,Der,ListaNueva),
    append(ListaIzquierda,ListaNueva, Lista),
    write("!!!!Al final de dividir la lista es: "),writeln(Lista).

recorrer(',', [Cabeza|Cola0], Lista):-
    write("En recorrer con lista: "),write(Lista),
    write(" cabeza: "),write(Cabeza),
    flatten(Lista, ListaN),flatten(Cabeza,CabezaN),
    append(ListaN,CabezaN,ListaNueva),
    write(" y lista Nueva: "),writeln(ListaNueva),
    arg(1,Cola0,Cola),
    Cola=..[Cabeza2|Cola2],
    write("Cabeza2: "), write(Cabeza2), write(" cola2 "),write(Cola2),write(" LISTA: "),writeln(Lista),
    arg(1,Cola2,Colota),  
    write("Lista: "),writeln(Lista),write("Cabeza: "),writeln(Cabeza),write("ListaNueva"),writeln(ListaNueva),
    write("Antes de llamar recorrer recursivo con cabeza2: "),write(Cabeza2),
    write(" cola2: "),write(Cola2),write(" ListaNueva: "),writeln(ListaNueva),
    recorrer(Cabeza2, Cola2, ListaNueva).
recorrer(_,_,Lista):-
	write("Lista: "),writeln(Lista),
	writeln("CARECULO").
	


dividir3([:-|Args], Args) :-
    write("DIVISION: "),writeln(Args),
    arg(2,Args,Pete),
    term_to_atom(Pete,Peter),
    write("Petermon: "),writeln(Peter),
    arg(1,Pete,Pota),
    term_to_atom(Pota,Potter),
    write("Potamon: "),writeln(Potter),
    atomic_list_concat(List, ',',Pota),
    write("Lista: "),writeln(List).


dividir2([:-|Argumentos], Terminos) :-
    write("Argumentos: "),writeln(Argumentos),
    Argumentos=..Encorchetes1,
    write("Encorchetes1: "),writeln(Encorchetes1),
    write("Enparentesis de 1 de 2: "),writeln(Enparentesis),
    dividir2(Enparentesis, Terminos).

dividir2([','|Argumentos], Argumentos).



