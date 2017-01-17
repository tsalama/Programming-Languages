ackermann(0, T, A) :-	% Stopping condition
	A is T + 1.		

ackermann(S, 0, A) :-	% Stopping condition
	S > 0, 
	S1 is S-1,
	ackermann(S1, 1, A).	% Size-n-1
	
ackermann(S, T, A) :-	% Size-n
	S > 0, T > 0, 
	S1 is S - 1,
	T1 is T - 1,
	ackermann(S, T1, A1),	
	ackermann(S1, A1, A).	% Size-n-1



exp(_, 0, 0) :-	% Stopping condition
	write('Error. X and N may not be 0 at the same time.').

exp(1, X, 0) :-	% Stopping condition 
	X > 0.	

exp(0, 0, N) :-	% Stopping condition
	N > 0.

exp(Y, X, N) :-	% Size-n
	X > 0, N > 0,
	N1 is N - 1,
	exp(Y1, X, N1),	% Size-n-1
	Y is Y1 * X.



factorial(_, 0, 0) :-	% Stopping condition
	write('Error. X and N may not be 0 at the same time.').


factorial(1, 0, N) :-	% Stopping condition
	N > 0.

factorial(1, X, 0) :-	% Stopping condition
	X > 0.

factorial(Y, X, N) :-	% Size-n
	X > 0,
	N > 0,
	exp(Z, X, N),
	Z1 is Z - 1,
	factorial(Y1, Z1, 1),	% Size-n-1
	Y is Z * Y1.
	
	
















	
		

