/*
 * Problem 2
 */
/*
 * c)
 */
/*
 * Facts:
 */
 insertElementAt(X, Y, 1, [X|Y]).
/*
 * Rules:
 */
 insertElementAt(X, [Y|Ys], N, [Y|Z]) :- insertElementAt(X, Ys, M, Z), N is M + 1.
