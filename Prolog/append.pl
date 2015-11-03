app([], X, X).
app([X|Y], Z, [X|W]) :- app(Y,Z,W).