parser2(Archivo, Lista) :-
    open(Archivo, read, Stream),
    readFile(Stream, Lista),
    close(Stream).

readFile(Stream, []) :- at_end_of_stream(Stream).
readFile(Stream, [LLine|Res]) :- 
    read_term(Stream, Line, []),
    line_as_list(Line, LLine),
    readFile(Stream, Res).

line_as_list(Line, LLine) :-
    Line=..[Functor|Args],
    analyze(Functor, Args, LLine).

line_as_list(Line, [Line]).

analyze(end_of_file,[],[]) :- !.
analyze(:-, Args, Args).
