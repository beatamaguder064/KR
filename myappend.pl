% myAppend(+List, +List2, -Result)
% it is true if Result is a list with the elements of the List1
% followed by the elements of the List2.

myAppend([], List2, List2).
myAppend([Head|Tail], List2, [Head|R]):- 
myAppend(Tail, List2, R).
