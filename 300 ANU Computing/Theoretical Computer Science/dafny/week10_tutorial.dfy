/*
Integer division, the variable m starts at 1 and keeps increasing while m * b is 
still less than or equal to a.
div(10, 5)
a = 10, b = 5
Preconditions hold

S program states
m = 1, a = 10, b = 5
while m * b (1 * 5) <= a (10)
increment m by one.



Once we reach that state, we exit the while loop
a = 10, b = 5, m = 3

we perform m = m - 3, so m is now 2
r = a - m * b = 10 - (2 * 5) = 10

Answer = 2 r 0
*/

// ensures statement explanation:
// a == m * b + r holds because r is defined as a - m * b, just rearranged.
// 0 <= r < b means the remainder must be non-negative and strictly less than b,
// so that m is the largest integer where m * b <= a and no extra b fits into a.

// method div(a: int, b: int) returns (m: int, r: int)
//   requires a >= 0 && b > 0
//   ensures a == m * b + r && 0 <= r < b
// {
//   m := 1;
//   while (m * b <= a) 
//   invariant (m - 1) * b <= a
//   {
//     m := m + 1;
//   }
//   m := m - 1;
//   r := a - m * b;
// }


/* 
Question 1)
nodup function goes through each pair of values in a and compares their values
If it finds anything equal, b is set to false. The loop has ensures b==true and 
makes sure using if an only if elements are distinct, which matches dup_free spec.

nodup_srt is similar, but it's a sorted list so all items are next to each other.
This way it can just check neigbouring values using a[m] and a[m-1] and sets the flag
b to false if it finds it.

Both functions verify dup_free(a) in different ways, but they both work.
*/


// Question 2 
predicate dup_free(a: seq<int>)
// Checking that the sequence of integers is duplicate free
// Predicate is basically a bool function, returns true or false.
{ forall i: int, j : int :: 
    0 <= i < j < |a| ==> a[i] != a[j] }

predicate sorted (a: seq<int>)
// Checking that the seq is in order - that is from left to right
// and non decreasing. The items on the left are never greater than the
// items on the right
{ forall i: int, j : int :: 
    0 <= i < j < |a| ==> a[i] <= a[j] }

predicate suffix_duplicate_none(a: seq<int>, m: int)
// everything with right index > m is already good and has no duplicates.
// this predicate checks for two things, the items to the right
// of the curreent item [i], [i+1] are not the same
// and then it checks that on the left is not equal to anything on the right
// This function is used throughout both functions nodup and nodup_srt
{
  forall i,j :: 0 <= i < j < |a| && j > m ==> a[i] != a[j]
}



method nodup(a: seq<int>) returns (b: bool)
  ensures b <==> dup_free(a)
  // we set b to true if and only if the sequence is duplicate free.
{
  b := true;
  var m := |a| - 1;
  while (m > 0)
  // If the input is duplicate free, then this should always hold.
    invariant dup_free(a) ==> b
    // everything on the right index is unique and should never change.
    invariant b ==> suffix_duplicate_none(a, m)
  {
    var n := m - 1;
    while (n >= 0)
    // new loop so new invariants
    // same invariant as before, dupliocate free
      invariant dup_free(a) ==> b
      // same invariant as before, duplicates to the right
      invariant b ==> suffix_duplicate_none(a, m)
      // everything between n and m is already known, and we
      // grow this left and n decreases. If we ever see the same value, we drop b.
      invariant b ==> (forall i :: n < i < m ==> a[i] != a[m])
    {
      if a[n] == a[m] {
        b := false;
      }
      n := n - 1;
    }
    m := m - 1;
  }
}

// Question 3
/*
This is very similar to before, but the input is already sorted
so it's just those other steps we've already looked at.
*/
method nodup_srt(a: seq<int>) returns (b: bool)
requires sorted(a)
ensures b <==> dup_free(a)
  {
    b := true;
    var m: int := |a| - 1;
    while (m > 0) 
    // Similar to previous, duplicate free function
    invariant dup_free(a) ==> b
    //  the right side is find and we keep checking leftwards.
    invariant b ==> suffix_duplicate_none(a, m)
    {
    if a[m-1] == a[m] { b := false; }
    m := m - 1;
  }
  return b;
}
