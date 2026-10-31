
% Shopping Program

% Initial shopping basket
shopping :-
    Basket = [coffee, milk, chocolate, apple, juice],
    shopping_menu(Basket).

% Main menu
shopping_menu(Basket) :-
    nl,
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    process_choice(Choice, Basket).

% Display all items
process_choice(d, Basket) :-
    display_items(Basket),
    shopping_menu(Basket).

% Add an item
process_choice(a, Basket) :-
    write('Enter the item you want to add it: '),
    read(Item),
    append(Basket, [Item], NewBasket),
    write('The item has been added'), nl,
    shopping_menu(NewBasket).

% Exit
process_choice(e, _) :-
    write('Goodbye!'), nl.

% Invalid choice
process_choice(_, Basket) :-
    write('Wrong choice!'), nl,
    shopping_menu(Basket).

% Recursive display
display_items([]).

display_items([H|T]) :-
    write(H), nl,
    display_items(T).
