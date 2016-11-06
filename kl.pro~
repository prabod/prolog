process(Q) :-
    q(Structure,Q,[]),
    Structure = q(is,NP1,NP2),
    NP1 =.. [_|Object],
    NP2 =.. [_|Something],
    removeDet(Object,O),
    removeDet(Something,S0),
    ensureAtom(S0,S),
    %write('name: '), write(Object), nl,
    (   
        % into bratko
        answeryes(O isa S)
        ;
        answerno(O isa S)
    ).

