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
/*
 * Rules:
 */
 preorder(t(X,L,nil), [X|Xs]) :- not(L = nil), preorder(L, Ls), append(Ls, Xs).
 preorder(t(X,nil,R), [X|Xs]) :- not(R = nil), preorder(R, Rs), append(Rs, Xs).
 preorder(t(X, L, R), [X|Xs]) :- preorder(L, Ls), preorder(R, Rs), append(Ls, Rs, Xs).
