/*
 * Problem 5
 */
/*
 * Rules:
 */
 expr(X) :- term(X).
 expr([X,'+'|Xs]) :- term([X]), expr(Xs).
/*
 * Rules:
 */
 term(X) :- factor(X).
 term([X,'*'|Xs]) :- factor([X]), term(Xs).
/*
 * Rules:
 */
 factor([X]) :- number(X).
 factor(['('|Xs]) :- append(Y,[')'],Xs), expr(Y).
