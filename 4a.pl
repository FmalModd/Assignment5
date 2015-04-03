/**
 * Problem 4
 */
/**
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

 binaryTree(t(_, L, R)) :- binaryTree(L), binaryTree(R).
