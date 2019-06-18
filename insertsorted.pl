insertsorted(E, [], [E]).
insertsorted(E, [Head|Tail], [E, Head|Tail]):-
E =< Head.
insertsorted(E, [Head|Tail], [Head|R]):-
E > Head,
insertsorted(E, Tail, R).
