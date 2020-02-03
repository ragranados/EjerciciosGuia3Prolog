contar_elementos(Lista,Respuesta):-
    crearLista(Lista, ' ', Respuesta).

crearLista([Cab|Col], Anterior, [ML|NL]):-
    \==(Anterior,Cab),
    crear_subLista(Col,Cab,1,ML),
    =(NAnterior,Cab),
    crearLista(Col,NAnterior,NL),!.

crearLista([_|Col], Anterior,NL):-
    crearLista(Col,Anterior,NL).

crearLista(_,_,[]).

crear_subLista([Cab|Col],Elem,Cont,Respuesta):-
    ==(Cab,Elem),
    is(NCont,+(Cont,1)),
    crear_subLista(Col,Elem,NCont,Respuesta),!.

crear_subLista(_,Elem,NCont,[Elem,NCont]).
