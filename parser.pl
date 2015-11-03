createFile(X) :-        writeln('Enter the name of the file'),
                        read(X),
                        tell(X),
                        told.

writeFilee(X) :-    repeat,
                        writeln("Enter a line on the file"),
                        read(Z),
                        (  Z == end_of_file
                            -> !
                            ;  append(X), write(Z), writeln("."), told,
                            fail
                        ).

readFile(X) :-  see(X),
                repeat,
                    read(Y),
                    (  Y == end_of_file
                        -> !
                        ;  write(Y)
                    ).

main :- createFile(X),
        writeFilee(X),
        readFile(X).  
