```prolog
% =========================================================
% Vacuum Cleaner Intelligent Agent
% PEAS Task Environment Demonstration
% =========================================================

:- dynamic dirty/1.
:- dynamic vacuum_at/1.

% ---------- Rooms ----------
room(a).
room(b).
room(c).

% ---------- Connections ----------
connected(a, b).
connected(b, a).
connected(b, c).
connected(c, b).

% ---------- Initial Conditions ----------
dirty(a).
dirty(c).

vacuum_at(a).

% ---------- Decision Rules ----------

% Clean the current room if it contains dirt
next_action(clean) :-
    vacuum_at(X),
    dirty(X).

% Move directly to a connected dirty room
next_action(move(Y)) :-
    vacuum_at(X),
    connected(X, Y),
    dirty(Y).

% Move through room B to reach room C
next_action(move(b)) :-
    vacuum_at(a),
    dirty(c).

next_action(move(c)) :-
    vacuum_at(b),
    dirty(c).

% Stop when there is no dirt
next_action(stop) :-
    \+ dirty(_).

% ---------- Perform Actions ----------

% Cleaning operation
do_action(clean) :-
    vacuum_at(X),
    retract(dirty(X)),
    format('Cleaned room ~w.~n', [X]).

% Movement operation
do_action(move(NewRoom)) :-
    retract(vacuum_at(OldRoom)),
    assert(vacuum_at(NewRoom)),
    format('Moved from room ~w to room ~w.~n',
           [OldRoom, NewRoom]).

% Stop operation
do_action(stop) :-
    write('All rooms are clean.'), nl,
    write('Vacuum cleaner stopped.'), nl.

% ---------- Start the System ----------

start :-
    next_action(Action),
    do_action(Action),
    (
        Action == stop
        -> true
        ; start
    ).

