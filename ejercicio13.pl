empaquetar(Lista,Respuesta):-
    crearLista(Lista,' ',Respuesta).

crearLista([Cab|Col], Anterior, [SubLista|NL]):-
    \=(Cab,Anterior),
    crearSubLista(Col,Cab,SubLista),!,
    =(NAnterior,Cab),
    crearLista(Col,NAnterior,NL),!.

crearLista([_|Col], Anterior,NL):-
    crearLista(Col,Anterior,NL).

crearLista(_,_,[]).

crearSubLista([Cab|Col],Elemento,[Cab|NL]):-
    \+(\==(Elemento,Cab)),
    crearSubLista(Col,Elemento,NL),!.

crearSubLista(_,Elemento,[Elemento]).

