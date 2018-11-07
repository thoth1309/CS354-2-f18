#!/bin/gprolog --consult-file

:- include('data.pl').

% Your code goes here.

/*Checks to see if there is overlap in the slot*/
overlaps(slot(X1,X2),slot(X2,Y2)) :- isAfter(X1,X2),isBefore(X1,Y2);
		isAfter(Y1,X2),isBefore(Y1,Y2).

% overlaps(slot(_,Y1),slot(X2,Y2)) :- isAfter(Y1,X2),isBefore(Y1,Y2).


/*checks to see which part of the day the hours are in*/
isEarlier(S1,S2) :- S1=am,S2=pm;S1=am,S2=am;S1=pm,S2=pm.


/* isEarlier(S1,S2) :- S1=am,S2=am.
isEarlier(S1,S2) :- S1=pm,S2=pm.*/

/*checks to see which part of the day the hours are in*/
isLater(S1,S2) :- S1=am,S2=am;S1=pm,S2=am;S1=pm,S2=pm.

/*isLater(S1,S2) :- S1=pm,S2=am;
isLater(S1,S2) :- S1=pm,S2=pm.*/

/* time 1 is after time 2*/
isAfter(time(H1,M1,S1),time(H2,M2,S2)) :- H2=<H1, M2<M1, isLater(S1,S2).

/*time 1 is before time 2*/
isBefore(time(H1,M1,S1),time(H2,M2,S2)) :- H1=<H2, M1<M2, isEarlier(S1,S2).

meetone([Person|Others],Slot2,People) :- free(Person,Slot1),overlaps(Slot1,Slot2), 
		meetone([Others|Rest],Slot2,People).
		
people([ann,bob,carla,dave,ed]).
% people(Person) :- free(Person,_).

main :- findall(Person,
		meetone(Person,slot(time(8,30,am),time(8,45,am))),
		People),
	write(People), nl, halt.

:- initialization(main).
