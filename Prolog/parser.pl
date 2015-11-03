createFile(X) :-        writeln('Enter the name of the file'),
                        read(X),
                        tell(X),
                        told.

writeFile(X) :- 
                        writeln("Enter a line on the file"),
                        read(Z),
                        tell(X),
                        write(Z), writeln("."),
                        told.


readFile(X) :-  see(X),
                read(Y),
                seen,
                write(Y).

main :- createFile(X),
        writeFile(X),
        readFile(X).  