method nine() {
  var j : int := 9;
  var i : int := 0;
  while (i < 10)
    invariant i + j == 9
  {
    j := j - 1;
    i := i + 1;
  }
  assert (j == -1);
}

method mult(i : int, j : int)
returns (p: int) // ensures p == i * j
{
  var sign : int, cnt : int := 1, 0;
  if (i < 0) { sign := -1; }
  p := 0;
  while (cnt < sign * i) {
    p := p + j;
    cnt := cnt + 1;
  }
  return (sign * p);
}

function fs(n: nat) : nat { // for fib_spec
  if (n <= 1) then 1 else fs(n-2) + fs(n-1)
}

method fib(n0: nat) returns (f: nat)
  ensures f == fs(n0)
{
  var f0, f1, n: nat := 1, 1, 0;
  while (n < n0)
  invariant f0 == fs(n)
  invariant f1 == fs(n + 1)
  invariant n <= n0
{
    f0, f1, n := f1, f0 + f1, n + 1;
  }
  f := f0;
}


function euclid(n: nat, m: nat) : nat
  requires m <= n{ 
    if (m == 0) 
        then n 
    else 
        euclid(m, n % m) 
}

method gcd(n: nat, m: nat) returns (g: nat)
  requires m <= n
  ensures g == euclid(n, m)
{
  var f : nat;
  g, f := n, m;
  while (f > 0) 
  invariant f <= g
  invariant euclid(g, f) == euclid(n, m)
  {
    g, f := f, g % f;
  }
}


// x := 20
// while (x < 20)
//   invariant x % 2 == 0
// assert x == 20

// // Left spec:
// // (a) Yes. Pre-loop x = 20 and 20 % 2 = 0, so the invariant holds.
// // (b) No. From x % 2 == 0 and ¬(x < 20) i.e. x ≥ 20 you cannot derive x == 20 (e.g. x = 22).

// i := 0
// while (i < 97)
//   invariant 0 <= i <= 99
// assert (i == 99)

// Right spec:
// (a) i = 97 (also 98) violates the assert but satisfies 0 ≤ i ≤ 99 and ¬(i < 97).
// (b) Strengthen to: invariant 0 ≤ i ≤ 99 ∧ i ≠ 97 ∧ i ≠ 98.
//     Then invariant ∧ ¬(i < 97) forces i ∈ {97,98,99}, and excluding 97,98 yields i == 99.
