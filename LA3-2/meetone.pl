#!/bin/gprolog --consult-file

:- include('data.pl').

% Your code goes here.

findall([], Slot, People).
findall([H|T], Slot, People) :- People is .

people([ann, bob, carla, dave, ed]).

main :- findall(Person,
		meetone(Person,slot(time(8,30,am),time(8,45,am))),
		People),
	write(People), nl, halt.

:- initialization(main).
