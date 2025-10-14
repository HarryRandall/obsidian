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


method bump_to_n(n: int) returns (i: int)
  requires n >= 0
  ensures i == n
{
  i := 0;
  while (i < n)
    // TODO: invariant(s)
    // TODO: decreases(...)
    invariant i <= n
  {
    i := i + 1;
  }
}


method countdown(n: int) returns (z: int)
  requires n >= 0
  ensures z == 0
{
  var k := n;
  while (k > 0)
    // TODO: invariant(s)
    // TODO: decreases(...)
  {
    k := k - 1;
  }
  z := k;
}



predicate dup_free(a: seq<int>)
{
  forall i,j :: 0 <= i < j < |a| ==> a[i] != a[j]
}

method nodup(a: seq<int>) returns (b: bool)
  ensures b <==> dup_free(a)
{
  b := true;
  var m := |a| - 1;

  while (m > 0)
    invariant dup_free(a) ==> b
    invariant b ==> (forall p,q ::0 <= p < q < |a| && q > m ==> a[p] != a[q])
  {
    var n := m - 1;
    while (n >= 0)
      invariant dup_free(a) ==> b
      invariant b ==> (forall p,q :: 0 <= p < q < |a| && q > m ==> a[p] != a[q])
      invariant b ==> (forall p :: n < p < m ==> a[p] != a[m])
    {
      if a[n] == a[m] {
        b := false;
      }
      n := n - 1;
    }
    m := m - 1;
  }
}

