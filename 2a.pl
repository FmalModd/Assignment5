/*
 * Problem 2
 */
/*
 * a)
 */
/*
 * Facts:
 */
 numElements(0, []).
/*
 * Rules:
 */
 numElements(X, [_|Z]) :- numElements(Y, Z), X is Y + 1.

