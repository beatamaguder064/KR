% sum(?X, ?Y, ?Z)
%it is true if Z is X + Y.

sum(0, Y, Y).

% sum(n-1,.....) -> sum(n,.....)
%but in Prolog you have to change the sides

%   n       n-1
sum(n(X), Y, n(Z)) :- sum(X, Y, Z).

% substr(X, Y, Z)
%it is true if Z is X - Y

sum(X, 0, X).

substr(X, n(Y), Z) :- substr(X, Y, n(Z)).
