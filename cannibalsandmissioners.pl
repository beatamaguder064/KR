:- use_module(library(pce)).

window_size(400, 400).

draw_square :-
   window_size(MaxX, MaxY),
   new(Window, picture('Cannibals and Missioners')),
   send(Window, size, size(MaxX, MaxY)),
   send(Window, open),
   draw_lines(Window),
   
   % right side
   C1X is MaxX div 2 + 59, 
   C1Y is MaxY div 2 - 20,
   C2X is MaxX div 2 + 109, 
   C2Y is MaxY div 2 - 20,
   C3X is MaxX div 2 + 159, 
   C3Y is MaxY div 2 - 20,
   M1X is MaxX div 2 + 59, 
   M1Y is MaxY div 2 + 20,
   M2X is MaxX div 2 + 109, 
   M2Y is MaxY div 2 + 20,
   M3X is MaxX div 2 + 159, 
   M3Y is MaxY div 2 + 20,
   
   % left side
   LC1X is MaxX div 2 - 91, 
   LC1Y is MaxY div 2 - 20,
   LC2X is MaxX div 2 - 141, 
   LC2Y is MaxY div 2 - 20,
   LC3X is MaxX div 2 - 191, 
   LC3Y is MaxY div 2 - 20,
   LM1X is MaxX div 2 - 91, 
   LM1Y is MaxY div 2 + 20,
   LM2X is MaxX div 2 - 141, 
   LM2Y is MaxY div 2 + 20,
   LM3X is MaxX div 2 - 191, 
   LM3Y is MaxY div 2 + 20,
   
   draw_cannibal(Window, C1X, C1Y, _),
   draw_cannibal(Window, C2X, C2Y, _),
   draw_cannibal(Window, C3X, C3Y, _),
   draw_angel(Window, M1X, M1Y, _),
   draw_angel(Window, M2X, M2Y, _),
   draw_angel(Window, M3X, M3Y, _),
   
   draw_cannibal(Window, LC1X, LC1Y, _),
   draw_cannibal(Window, LC2X, LC2Y, _),
   draw_cannibal(Window, LC3X, LC3Y, _),
   draw_angel(Window, LM1X, LM1Y, _),
   draw_angel(Window, LM2X, LM2Y, _),
   draw_angel(Window, LM3X, LM3Y, _).
   
   draw_lines(Window) :-
   window_size(MaxX, MaxY),
   X11 is MaxX div 2 + 50,
   Y11 is MaxY,
   X12 is X11,
   Y12 is 0,
   send(Window, display, new(Pa, path)),
      (
	     send(Pa, append, point(X11, Y11)),
		 send(Pa, append, point(X12, Y12))
		 
    ),
   X21 is MaxX div 2 - 50,
   Y21 is MaxY,
   X22 is X21,
   Y22 is 0,
   send(Window, display, new(Pa2, path)),
      (
	     send(Pa2, append, point(X21, Y21)),
		 send(Pa2, append, point(X22, Y22))
		 
    ).
	
	draw_cannibal(Window, X, Y, Bitmap1):-
	send(Window, display,
	new(Bitmap1, bitmap('32x32/cannibal.xpm')), point(X, Y)).
	
	draw_angel(Window, X, Y, Bitmap1):-
	send(Window, display,
	new(Bitmap1, bitmap('32x32/angel.xpm')), point(X, Y)).
	
	% move(mov(M, C, left), MisPos, CanPos, Mis, Can).
	
	% misPos([point(9, 180), point(59, 180), point(109, 180), point(259, 180), point(309, 180), point(359, 180)]).
	% canPos([point(9, 220), point(59, 220), point(109, 220), point(259, 220), point(309, 220), point(359, 220)]).
	
	% mis([0, 0, 0, 1, 1, 1]).
	% can([0, 0, 0, 1, 1, 1]).
	
	% rotateLeft(List, N, R).
	rotateLeft(List, 0, List).
	rotateLeft([Head|Tail], N, R2):-
	N > 0,
	N2 is N-1,
	append(Tail, [Head], R),
	rotateLeft(R, N2, R2).
	
	% rotateRight(List, N, R).
	rotateRight(List, 0, List).
	rotateRight([List], N, R):-
	N > 0,
	N2 is N-1,
	append(L1, [Last], List),
	rotateRight([Last|L1], N2, R).
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	