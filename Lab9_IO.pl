:- dynamic letter/1.

start :-
    write('Hi. This is the Name Game.'), nl,
    write('You will be given a set of English letters in which you will add, delete or move to create your name.'), nl,
    menu.

menu :-
    nl,
    write('Choose from the following:'), nl,
    write('1- Display the current set of letters'), nl,
    write('2- Add a letter'), nl,
    write('3- Add a letter at the top'), nl,
    write('4- Add a letter at the bottom'), nl,
    write('5- Delete a letter'), nl,
    write('6- Delete all letters'), nl,
    write('7- Exit'), nl,
    write('Enter your choice...'), nl,
    read(X),
    choice(X),
    menu.

choice(1) :-
    listing(letter/1).

choice(2) :-
    write('Enter a letter: '),
    read(X),
    assert(letter(X)).
choice(3) :-
    write('Enter a letter: '),
    read(X),
    asserta(letter(X)).

choice(4) :-
    write('Enter a letter: '),
    read(X),
    assertz(letter(X)).
choice(5) :-
    write('Enter a letter to delete: '),
    read(X),
    retract(letter(X)).

choice(6) :-
    retractall(letter(_)).

choice(7) :-
    halt.
