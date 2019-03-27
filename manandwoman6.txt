% man(Person)
% it is true if Person is a man.

man(jose).
man(sebastian).
man(justus).
man(kevin).
man(teun).

% woman(Person)
% it is true if Person is a woman.

woman(lisanne).
woman(wendele).
woman(andrea).
woman(kristina).
woman(beata).

person(P):- man(P).
person(P):- woman(P).

% person(P) -> animal(P) and human(P).
person(P) :- animal(P).
person(P) :- human(P).