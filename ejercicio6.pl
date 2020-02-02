%ejercicio 6

crear_lista(Numero,L):-
    llamar_convertir_lista(Numero,Lista),
    formar_lista(Lista,'',L).

llamar_convertir_lista(Numero,L):-
    convertir_lista(Numero,[],L).

convertir_lista(0,Aux,Aux).

convertir_lista(Numero,Aux,Lista):-
    is(Digito,mod(Numero,10)),
    is(Num,div(Numero,10)),
    =(NL,[Digito|Aux]),
    convertir_lista(Num,NL,Lista),!.

formar_lista([],_,[]).

formar_lista([Cab|Col],Acum,[NAcum|NL]):-
    concat(Cab,Acum,NAcum),
    formar_lista(Col,NAcum,NL).
