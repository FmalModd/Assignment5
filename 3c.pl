/*
 * Problem 3
 */
/*
 * c)
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
/*
 * Facts:
 */
 mysplit([],[],[]).
 mysplit([X],[X],[]).
 mysplit([X,Y],[X],[Y]).
/*
 * Rules:
 */
 mysplit([X1,X2|Xs], [X1|Y], [X2|Z]) :- mysplit(Xs, Y, Z).
/*
 * Facts:
 */
 mysort([], []).
 mysort([X], [X]).
/*
 * Rules:
 */
/*
 * TODO RETURN ONLY ONE RESULT
 */
 mysort(X,Y) :- mysplit(X,L1,L2), mysort(L1, S1), mysort(L2, S2), merge(S1,S2,Y).
