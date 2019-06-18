% reverse(+List, -Result)
% it is true if Result is a List
% that contains same elements that List
% but in reverse order

% ? myReverse([1,2,3,4], R).
% R = [4,3,2,1]

% 1) myReverse(n0).
myReverse([], []).

% 2) myReverse(n-1) -> myReverse(n)
% myReverse(n) :- myReverse(n-1)

myReverse([Head|Tail], R2) :- myReverse(Tail, R),
append(R, [Head], R2).

% R is Tail in reverse order

% append([1,2,3], [4,5,6], R. (combines two lists)

% myReverse([1,2,3,4], ) :- myReverse([2,3,4], [4,3,2])