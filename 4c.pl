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
 leaves(t(_,L,nil), Xs) :- not(L = nil), leaves(L, Xs).
 leaves(t(_,nil,R), Xs) :- not(R = nil), leaves(R, Xs).
 leaves(t(_,L,R), Xs) :- not(L = nil), not(R = nil), leaves(L,Ls), leaves(R,Rs), append(Ls,Rs,Xs).
