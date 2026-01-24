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

// Mini Assignment

function fs(n: nat) : nat { // for fib_spec
  if (n <= 1) then 1 else fs(n-2) + fs(n-1)
}

method fib(n0: nat) returns (f: nat)
  ensures f == fs(n0)
{
  var f0, f1, n: nat := 1, 1, 0;
  while (n < n0)
  // First invariant
  // {P} -> S -> {Q}
  // f0 always holds the fib values, fs(n)
  invariant f0 == fs(n)
  // f1 does the same as above, but for n+1 vaules
  invariant f1 == fs(n + 1)
  // therefore the first value is less than the first, never exceeds.
  invariant n <= n0
{
    f0, f1, n := f1, f0 + f1, n + 1;
  }
  f := f0;
}

// Question 2

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
  // f is always less than g from the precondition of euclid, matches.
  invariant f <= g
  // the current pair (gf) represents the same state (n,m) per definition g, f := n, m;
  invariant euclid(g, f) == euclid(n, m)
  {
    g, f := f, g % f;
  }
}

// Question 3

// Function 1
// x := 20
// while (x < 20)
//   invariant x % 2 == 0
// assert x == 20

// (a) the code preceding the loop establishes the invarian
/*
Yes. The modulus operator finds the remainder. 20 / 2 = 10, no remainder, so it holds.
\*
// (b) whether the invariant, together with the negation of the loop condition, establishes the assert statement after the loop.
/*
No it doesn't establish the assert because x could be 22 24 or any even number >= 20
\*


// i := 0
// while (i < 97)
//   invariant 0 <= i <= 99
// assert (i == 99)

// (a) give a value of i that violates the assert statement, but satisfies both the invariant and the negation of the loop condition
/*
The values of 98 will satisfy the invariiant and the negation of the loop conditions
\*

// (b)  strengthen the invariant so that the assert statement becomes provable.
/*
Tried a couple of times but couldn't get the syntax correct. Going to leave the function as is.
\*