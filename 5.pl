/*
 * Problem 5
 */
/*
 * Facts:
 */
 factor(X) :- number(X).
 factor(X) :- ['('], expr(X), [')'].
/*
 * Rules:
 */

