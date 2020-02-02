juegoRandom(Lista):-
    writeln('Ponga un numero alv: '),
    read(Num),
    iniciarJuego(Lista,Num).

iniciarJuego(Lista,Numero):-
    random(0,9,Pos),
    colocarAsterisco(Lista,0,Pos,NL),
    writeln(NL),
    verificarPos(Lista,Numero,Pos).

colocarAsterisco([Cab|Col],Cont,Pos,[Cab|NL]):-
    is(NCont,+(Cont,1)),
    =\=(Cont,Pos),
    colocarAsterisco(Col,NCont,Pos,NL),!.

colocarAsterisco([Cab|Col],Cont,Pos,[*|NL]):-
    is(NCont,+(Cont,1)),
    =:=(Cont,Pos),
    colocarAsterisco(Col,NCont,Pos,NL),!.

colocarAsterisco(_,_,_,[]).

verificarPos(_,Numero,Pos):-
    =:=(Numero,Pos),
    writeln('Ganaste alv :Vvvvvvv').

verificarPos(Lista,Numero,Pos):-
    =\=(Numero,Pos),
    writeln('F'),
    juegoRandom(Lista).
