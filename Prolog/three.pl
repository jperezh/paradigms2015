ancestro(X, Y) :- progenitor(X, Y).
ancestro(X, Y) :- progenitor(X, Z), ancestro(Z, Y).

progenitor(adan, pedro).
progenitor(adan, jacinto).
progenitor(adan, jose).
progenitor(eva, pedro).
progenitor(eva, jacinto).
progenitor(eva, jose).
progenitor(pedro, pipo).
progenitor(pedro, pipa).
progenitor(pipo, rito).
progenitor(pipo, rita).
progenitor(jacinto, pepe).
progenitor(jacinto, popo).
progenitor(jose, tito).
progenitor(jose, tita).
progenitor(tito, tete).
progenitor(tito, toto).