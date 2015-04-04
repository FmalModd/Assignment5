/*
 * Problem 5
 */
/*
 * Rules:
 */
 expr(X) :- term(X).
 expr([X1,X2|Xs]) :- term([X1]), X2 == +, expr(Xs).
/*
 * Rules:
 */
 term(X) :- factor(X).
 term([X1,X2|Xs]) :- factor([X1]), X2 == *, term(Xs).
/*
 * Rules:
 */
 factor([X]) :- number(X).
 factor(['('|X]) :- append(Y,[')'],X), expr(Y).
