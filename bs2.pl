bubblesort(List, R):- 
append(L1, [E1, E2|L2], List),
E1>E2,
append(L1, [E2, E1|L2], List2),
bubblesort(List2, R).
bubblesort(List, List):- ordered(List).
ordered([]).
ordered([_]).
ordered([E1, E2|Tail]):-
E1 =< E2,
ordered([E2|Tail]).
