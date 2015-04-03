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
