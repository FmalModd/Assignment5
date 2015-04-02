/*
 * Problem 2
 */
/*
 * e)
 */
/*
 * Facts:
 */
 addUpListHelper([], [], _).
/*
 * Rules:
 */
 addUpListHelper([X|Xs], [Y|Ys], Acc) :- Y is Acc + X, addUpListHelper(Xs, Ys, Y).
 addUpList(X, Y) :- addUpListHelper(X, Y, 0).
