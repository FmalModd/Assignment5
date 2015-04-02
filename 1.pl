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

