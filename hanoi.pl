%Hanoi Tower

%  |    |    |
%  |    |    |
% ---  ---  ---
%  A    B    C

% hanoi(+Num, +A, +B, +C, -Result)

% it is true if result unify with a list of movement needed to transport N discs from A to C using B as auxiliary tower
% the game has the restriction that is not possible to put discs over other one that is an smaller one 

% movements:
% 1. move n-1 discs from A to B using C as auxiliary tower
% 2. move disc 1 from A to C 
% 3. move n-1 discs from B to C using A as auxiliary tower

hanoi(1, A, _, C, [move(A, C)]).
hanoi(N, A, B, C, R):-
N2 is N-1,
hanoi(N2, A, C, B, R1),
hanoi(1, A, _, C, R2),
hanoi(N2, B, A, C, R3),
append([R1, R2, R3], R).