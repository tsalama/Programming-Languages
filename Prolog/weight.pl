weight(R,O,Y,G,B)  :-
	member(O, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]),
	member(Y, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]),
	member(G, [0, 1, 2, 3, 4, 5, 6, 7]),
	member(B, [0, 1, 2, 3, 4, 5, 6]),
	T is O*2 + Y*3 + G*4 + B*5,
	T =< 30,
	R is 30 - T.

% ?- weight(5, O, Y, G, 3)
% O = 0, Y = 2, G = 1 ;
% O = 1, Y = 0, G = 2 ;
% O = Y, Y = 2, G = 0 ;
% O = 3, Y = 0, G = 1 ;
% O = 5, Y = G, G = 0 ;
% false.

% ?- weight(10, O, 1, G, 2)
% false.
