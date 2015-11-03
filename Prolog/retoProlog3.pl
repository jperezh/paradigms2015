
contarPalabras(Oracion, Palabra, Count, Resultado) :-
    ( oracionRestante(Oracion, Palabra, Rest)
    ->
        succ(Count, NextCount),
        contarPalabras(Rest, Palabra, NextCount, Resultado)
    ;
        Resultado = Count
    ).
 
oracionRestante(Oracion, Palabra, Rest) :-
    sub_string(Oracion, Antes, Longitud, Remain, Palabra),
    DropN is Antes + Longitud,
    sub_string(Oracion, DropN, Remain, 0, Rest).