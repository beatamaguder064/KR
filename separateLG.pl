separate(_, [], [], []).
separate(E, [Head|Tail], [Head|L], G):-
Head =< E,
separate(E, Tail, L, G).
separate(E, [Head|Tail], L, [Head|G]):-
Head > E,
separate(E, Tail, L, G).
quickorder([], []).
quickorder([Head|Tail], R):-
separate(Head, Tail, L, G),
quickorder(L, RL),
quickorder(G, RG),
append(RL, [Head|RG], R).