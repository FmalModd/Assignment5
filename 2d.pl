/*
 * Problem 2
 */
/*
 * d)
 */
/*
 * Facts:
 */
 seghelper([X], [X|_]).
/*
 * Rules:
 */
 seghelper([X|Xs],[X|Ys]) :- seghelper(Xs, Ys).
/*
 * Facts:
 */
 segment([], _).
/*
 * Rules:
 */
 segment(X, Y) :- seghelper(X, Y), !.
 segment([X|Xs], [_|Ys]) :- segment([X|Xs], Ys).
