:- use_module(library(pce)).

window_size(400, 400).

draw_square :-
   window_size(MaxX, MaxY),
   new(Window, picture('Cannibals and Missioners')),
   send(Window, size, size(MaxX, MaxY)),
   send(Window, open),
   draw_lines(Window),
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
   draw_image(Window, C1X, C1Y, _),
   draw_image(Window, C2X, C2Y, _),
   draw_image(Window, C3X, C3Y, _),
   draw_image(Window, M1X, M1Y, _),
   draw_image(Window, M2X, M2Y, _),
   draw_image(Window, M3X, M3Y, _).
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
	
	draw_image(Window, X, Y, Bitmap1):-
	send(Window, display,
	new(Bitmap1, bitmap('32x32/cannibal.xpm')), point(X, Y)).
	
	
	
	
	
	