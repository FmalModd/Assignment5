/*
 * Problem 4
 */
/*
 * b)
 */
/*
 * Facts:
 */
 preorder(nil, []).
 preorder(t(X, nil, nil), [X]).
/*
 * Rules:
 */
 preorder(t(X, L, R), [X|Xs]) :- preorder(L, Ls), preorder(R, Rs), append(Ls, Rs, Xs).
