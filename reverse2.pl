myReverse([], []).
myReverse([Head|Tail], R2) :- myReverse(Tail, R),
append(R, [Head], R2).
