createFile :-        writeln('Enter the name of the file'),
                        read(X),
                        tell(X),
                            read(L),
                            escribirLinea(L),
                        told.


escribirLinea(end_of_line) :- !.
escribirLinea(Cosa) :- write(Cosa), writeln(".").
