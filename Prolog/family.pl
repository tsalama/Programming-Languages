/* Database for family. It consists of facts and rules. */

/* Facts */
male(mark).
male(tom).
   male(eric).
   male(josh).
   male(austin).
female(jen).
female(beth).
   female(lisa).
   female(alice).
   female(alex).

father_of(mark, beth). /* mark is the father of beth */
   father_of(josh, eric).
   father_of(austin, alice).
   father_of(eric, jen).
   father_of(eric, mark).

mother_of(jen, tom). /* jen is the mother of tom */
   mother_of(lisa, eric).
   mother_of(alex, alice).
   mother_of(alice, jen).
   mother_of(alice, mark).

/* Rules */
is_male(X) :-
 	male(X);
	father_of(X, _).

   is_female(X) :-
	   female(X);
	   mother_of(X, _).

   grandmother_of(X, Z) :-
	   female(X),
           mother_of(X, Person),
           mother_of(Person, Z);
           father_of(Person, Z).

   grandfather_of(X, Z) :-
           male(X),
	   father_of(X, Person),
	   father_of(Person, Z);
	   mother_of(Person, Z).

   sibling_of(X, Y) :-
           father_of(Person, X),
           father_of(Person, Y);
           mother_of(Person, X),
           mother_of(Person, Y).

   parent_of(X, Y) :-
	   father_of(X, Y);
	   mother_of(X, Y).

   descendent_of(X, Y) :-
	   parent_of(Y, X).

   descendent_of(X, Y) :-
	   parent_of(Y, Person),
	   descendent_of(X, Person).


