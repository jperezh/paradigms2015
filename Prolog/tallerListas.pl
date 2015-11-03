concatenarListas([],Lista,Lista).
concatenarListas([CabezaLista1|Lista1],Lista2,[CabezaLista1|Lista3]) :- concatenarListas(Lista1,Lista2,Lista3).


sumarListas([],Lista,Lista).
sumarListas([Cabeza1|Lista1],[Cabeza2|Lista2],[Cabeza3|Lista3]) :-  sumarListas(Lista1,Lista2,Lista3), 
                                                                    Cabeza3 is Cabeza1 + Cabeza2.


subtract([], Lista, []).
subtract([CabezaLista1|Lista1], Lista2, Resultado) :-
    memberchk(CabezaLista1, Lista2), !,
    subtract(Lista1, Lista2, Resultado).
subtract([CabezaLista1|Lista1], Lista2, [CabezaLista1|Resultado]) :-
    subtract(Lista1, Lista2, Resultado).
