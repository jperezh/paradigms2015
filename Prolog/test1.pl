menu(W):-
    read(T),
    T=..R,
    writeln(R),
    arg(2,T,A),
    A=..W.

escribirLinea(end_of_line) :- !
escribirLinea(Cosa) :- write(Cosa), writeln(".").
