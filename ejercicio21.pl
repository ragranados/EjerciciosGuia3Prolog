llamarExtraer(Lista,Respuesta):-
    extraer_elementos(Lista,0,Respuesta).

extraer_elementos(Lista,Cont,[Ext|NL]):-
    <(Cont,3),
    longitudLista(Lista,Longitud),
    is(Pos,random(Longitud)),
    extraerPosicion(Lista,0,Pos,Ext),!,
    is(NCont,+(Cont,1)),
    extraer_elementos(Lista,NCont,NL),!.

extraer_elementos(_,_,[]).



longitudLista([Cab|Col],Respuesta):-
    longitudLista(Col,NRespuesta),!,
    is(Respuesta,+(NRespuesta,1)).

longitudLista(_,0).


extraerPosicion([_|Col],Cont,Pos,Respuesta):-
    \==(Cont,Pos),
    is(NContador,+(Cont,1)),
    extraerPosicion(Col,NContador,Pos,Respuesta),!.



extraerPosicion([Cab|_],Cont,Pos,Respuesta):-
    ==(Cont,Pos),
    =(Respuesta,Cab).

