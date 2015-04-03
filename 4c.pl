/*
 * Problem 4
 */
/*
 * c)
 */
/*
 * Facts:
 */
 leaves(nil, []).
 leaves(t(X,nil,nil), [X]).
/*
 * Rules:
 */
 leaves(t(_,L,R),Xs) :- leaves(L,Ls), leaves(R,Rs), append(Ls,Rs,Xs).
