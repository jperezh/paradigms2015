

contarPalabras(Palabra, Encontradas, Resultado) :-
   read(N),
    N \= end_of_file
    -> 
      (  N == Palabra
        -> M1 is Encontradas+1
        ;  M1 is Encontradas
      ),
      contarPalabras(Palabra, M1, Resultado)
    ;  Resultado = Encontradas.


main(Palabra, Archivo, Resultado) :- 
  see(Archivo),
  contarPalabras(Palabra, 0, Resultado), 
  seen.


count([],_,0):- !.
count([X|T],X,Y):- count(T,X,Z), Y is 1+Z.
count([X1|T],X,Z):- X1\=X,count(T,X,Z).

occurrences([],_,0).
occurrences([X|Y],X,N):- occurrences(Y,X,W),N is W + 1.
occurrences([X|Y],Z,N):- occurrences(Y,Z,N),X\=Z.

name_value(String, Name, Value) :-
    sub_string(String, Before, _, After, "="), !,
    sub_string(String, 0, Before, _, NameString),
    atom_string(Name, NameString),
    sub_string(String, _, After, 0, Value).


contarPalabras2(Palabra, Lista) :-
    read(N),
    atom_chars(N, Lista), 
    atom_chars(Palabra, Pala).


