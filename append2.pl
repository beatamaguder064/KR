myappend([], List2, List2).
myappend([Head|Tail], List2, [Head|R]):- 
myappend(Tail, List2, R).