/*
 * Problem 2
 */
/*
 * b)
 */
/*
 * Facts:
 */
 removeElement(X, [X|Y], Y).
/*
 * Rules:
 */
 removeElement(X, [Y|Ys], [Y|Z]) :- removeElement(X, Ys, Z).
