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

2 * 5 (10) <= a (10), this is true, it doesn't exceed.
m = 2

3 * 5 (15) <= a (10), false, so m = 3

Once we reach that state, we exit the while loop
a = 10, b = 5, m = 3

we perform m = m - 1, so m is now 2
r = a - m * b = 10 - (2 * 5) = 10

Answer = 2?

ensures statement: 
a == m * b + r, this should hold.
0 <= r < b, 
*/

method div(a: int, b: int) returns (m: int, r: int)
  requires a >= 0 && b > 0
  ensures a == m * b + r && 0 <= r < b
{
  m := 1;
  while (m * b <= a) 
  invariant m >= 0
  invariant a
  {
    m := m + 1;
  }
  m := m - 1;
  r := a - m * b;
}