
% Task 1: Delete Every Occurrence

% Base case: empty list
deleteElement(_, [], []).

% Recursive case
deleteElement(X, [H|T], Result) :-
    ( X = H ->
        deleteElement(X, T, Result)
    ;
        Result = [H|Rest],
        deleteElement(X, T, Rest)
    ).

% Task 2: Add at the End

% Base case
add_at_the_end(X, [], [X]).

% Recursive case
add_at_the_end(X, [H|T], [H|Result]) :-
    add_at_the_end(X, T, Result).
