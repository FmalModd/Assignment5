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
 mysplit([X],[X],[]).
/*
 * Rules:
 */
 mysplit([X1,X2|Xs], [X1|Y], [X2|Z]) :- mysplit(Xs, Y, Z).
