cosa(Cosa) :-
    read(X),
    X=..Cosa.

cosa2(List) :-
    read(X),
    atomic_list_concat(List, ',', X).

cosa
