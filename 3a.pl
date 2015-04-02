/*
 * Problem 3
 */
/*
 * a)
 */
/*
 * Facts:
 */
 mymerge([], Y, Y).
 mymerge(X, [], X).
/*
 * Rules:
 */
 mymerge([X|Xs], [Y|Ys], [X|Z]) :- X < Y, mymerge(Xs, [Y|Ys], Z).
 mymerge([X|Xs], [Y|Ys], [Y|Z]) :- X >= Y, mymerge([X|Xs], Ys, Z).
