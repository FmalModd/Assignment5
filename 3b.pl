/*
 * Problem 3
 */
/*
 * b)
 */
/*
 * Facts:
 */
 mysplit([],[],[]).
 mysplit([X], [X], []).
 mysplit([X,Y], [X], [Y]).
/*
 * Rules:
 */
 mysplit([X1,X2|Xs], [X1|Y], [X2|Z]) :- mysplit(Xs, Y, Z).
