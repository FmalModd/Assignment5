/*
 * Problem 5
 */
/*
 * Rules:
 */
 expr(X) :- term(X).
 expr(X) :- append(Z, [+|Y], X), term(Z), expr(Y).
/*
 * Rules:
 */
 term(X) :- factor(X).
 term(X) :- append(Z,[*|Y], X), factor(Z), term(Y).
/*
 * Rules:
 */
 factor([X]) :- number(X).
 factor(['('|Xs]) :- append(Y,[')'],Xs), expr(Y).
