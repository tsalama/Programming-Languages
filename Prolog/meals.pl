/* Facts */
entre(halloween, chocolate).
entre(thanksgiving, turkey).

side(halloween, candy).
side(halloween, soda).

side(thanksgiving, bread).
side(thanksgiving, pumpkinpie).

ingredient(candy, sugar).
ingredient(candy, foodcoloring).

ingredient(soda, water).
ingredient(soda, syrup).

ingredient(bread, egg).
ingredient(bread, flour).

ingredient(pumpkinpie, pumpkin).
ingredient(pumpkinpie, pie).



/* Rules */
meal(X, Y) :-
   entre(X, Y).

meal(X, Y) :-
   side(X, Y).

shoppinglist(X, Y) :-
   side(X, S),
   ingredient(S,Y).
   


