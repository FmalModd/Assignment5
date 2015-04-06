/*
 * Problem 1
 */
/*
 * a)
 */
/*
 * Facts:
 */
 affair('Steve', 'Jane').
 affair('Jane', 'Steve').
 affair('Mary', 'Steve').
 affair('Steve', 'Mary').
 married('Tom', 'Jane').
 married('Jane', 'Tom').
 rich('Steve').
 greedy('John').
 victim('Steve').
/*
 * Rules:
 */
 hates(L, M) :- married(L, S), affair(S, M).
 greed(L, M) :- greedy(L), not(rich(L)), rich(M).
 murders(L, M) :- hates(L, M).
 murders(L, M) :- greed(L, M).
 suspect(L) :- murders(L, M), victim(M).
/*
 * b)
 */
/*
 * Suspect 1: 'Tom'.
 * Suspect 2: 'John'.
 */
/*
 * c)
 */
/*
 * rich('John').
 */

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

/*
 * Problem 2
 */
/*
 * c)
 */
/*
 * Facts:
 */
 insertElementAt(X, Y, 1, [X|Y]).
/*
 * Rules:
 */
 insertElementAt(X, [Y|Ys], N, [Y|Z]) :- insertElementAt(X, Ys, M, Z), N is M + 1.
 
/*
 * Problem 2
 */
/*
 * d)
 */
/*
 * Facts:
 */
 seghelper([X], [X|_]).
/*
 * Rules:
 */
 seghelper([X|Xs],[X|Ys]) :- seghelper(Xs, Ys).
/*
 * Facts:
 */
 segment([], _).
/*
 * Rules:
 */
 segment(X, Y) :- seghelper(X, Y), !.
 segment([X|Xs], [_|Ys]) :- segment([X|Xs], Ys).

/*
 * Problem 2
 */
/*
 * e)
 */
/*
 * Facts:
 */
 addUpListHelper([], [], _).
/*
 * Rules:
 */
 addUpListHelper([X|Xs], [Y|Ys], Acc) :- Y is Acc + X, addUpListHelper(Xs, Ys, Y).
 addUpList(X, Y) :- addUpListHelper(X, Y, 0).
 
/*
 * Problem 3
 */
/*
 * a)
 */
/*
 * Facts:
 */
 mymerge([], Y, Y).
 mymerge(X, [], X).
/*
 * Rules:
 */
 mymerge([X|Xs], [Y|Ys], [X|Z]) :- X < Y, mymerge(Xs, [Y|Ys], Z).
 mymerge([X|Xs], [Y|Ys], [Y|Z]) :- X >= Y, mymerge([X|Xs], Ys, Z).

/*
 * Problem 3
 */
/*
 * b)
 */
/*
 * Facts:
 */
 mysplit([],[],[]).
 mysplit([X],[X],[]).
/*
 * Rules:
 */
 mysplit([X1,X2|Xs], [X1|Y], [X2|Z]) :- mysplit(Xs, Y, Z).

/*
 * Problem 3
 */
/*
 * c)
 */
/*
 * Facts:
 */
 mysort([], []).
 mysort([X], [X]).
/*
 * Rules:
 */
 mysort([X1,X2|Xs],Y) :- mysplit([X1,X2|Xs],L1,L2), mysort(L1, S1), mysort(L2, S2), merge(S1,S2,Y).

/*
 * Problem 4
 */
/*
 * a)
 */
/*
 * Facts:
 */
 binaryTree(nil).
 binaryTree(t(_, nil, nil)).
/*
 * Rules:
 */
 binaryTree(t(_, L, nil)) :- not(L = nil), binaryTree(L).
 binaryTree(t(_, nil, R)) :- not(R = nil), binaryTree(R).
 binaryTree(t(_, L, R)) :- not(L = nil), not(R = nil), binaryTree(L), binaryTree(R).

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
