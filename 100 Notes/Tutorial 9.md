**Class**: [[]]
**Date**: Monday, 6 October 2025, 20:02
**Tags**: 

---

## Exercise 1 — What can we conclude?

For the partial loop specifications on the left, written in Dafny syntax:  
(a) Determine whether the code preceding the loop establishes the invariant 
- 
(b) Determine whether the invariant, together with the negation of the loop condition, establishes the assert statement after the loop  

For the loop specification on the right:  
(a) Give a value of `i` that violates the assert statement but satisfies both the invariant and the negation of the loop condition  
(b) Strengthen the invariant so that the assert statement becomes provable  

```c
x := 0
while (x != 100)
  invariant true
assert x == 100
```

```c
i := 0
while (i < 100)
  invariant i >= 0
assert (i == 100)
```

---

## Exercise 2 — The Method `nine`

The next two exercises refer to the following methods:

```c
method nine() {
  var j : int := 9;
  var i : int := 0;
  while (i < 10)
    // <your invariant>
  {
    j := j - 1;
    i := i + 1;
  }
  // assert (j == <something>);
}
```

In `nine`, determine the value of variable `j` after the loop terminates.  
Uncomment the assert statement and add an invariant that suffices to prove it.

---

## Exercise 3 — Integer Multiplication with Sign

```c
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
```

Provide an informal argument explaining why the program is correct with respect to its specification (`ensures` clause).  
Uncomment the ensures clause and insert invariants that prove correctness in Dafny.

---

## Exercise 4 — Fibonacci Numbers (MA, 3 credits)

Uncomment the `ensures` clause and provide a while-loop invariant that allows Dafny to prove it.

```c
function fs(n: nat) : nat { // for fib_spec
  if (n <= 1) then 1 else fs(n-2) + fs(n-1)
}

method fib(n0: nat) returns (f: nat)
  // ensures f == fs(n0)
{
  var f0, f1, n: nat := 1, 1, 0;
  while (n < n0) {
    f0, f1, n := f1, f0 + f1, n + 1;
  }
  f := f0;
}
```

---

## Exercise 5 — Euclid’s Algorithm, Again (MA, 3 credits)

Show that `gcd` computes the same result as the functional version `euclid`.

```c
function euclid(n: nat, m: nat) : nat
  requires m <= n
{ if (m == 0) then n else euclid(m, n % m) }

method gcd(n: nat, m: nat) returns (g: nat)
  requires m <= n
  // ensures g == euclid(n, m)
{
  var f : nat;
  g, f := n, m;
  while (f > 0) {
    g, f := f, g % f;
  }
}
```

Uncomment the `ensures` clause and add a loop invariant so Dafny can prove it.

---

## Exercise 6 — What can we conclude, Part 2 (MA, 2 + 2 credits)

```c
x := 20
while (x < 20)
  invariant x % 2 == 0
assert x == 20

i := 0
while (i < 97)
  invariant 0 <= i <= 99
assert (i == 99)
```

For the left specification:  
(a) Determine whether the pre-loop code establishes the invariant  
(b) Determine whether the invariant and negated condition establish the assert  

For the right specification:  
(a) Find an `i` value violating the assert but satisfying both the invariant and negated condition  
(b) Strengthen the invariant to make the assert provable  

Answer in Dafny comments, with brief justification (1–2 sentences each).

---

## Exercise 7 — Fast Exponentiation

Prove the correctness of `fast_exp` against the `exp_spec` function.

```c
method fast_exp(n: int) returns (r: int)
  requires n >= 0
  // ensures r == exp_spec(2, n)
{
  var e: int, b: int := n, 2; // exp, base
  r := 1; // result
  while (e > 0) {
    if (e % 2 == 1) {
      r := b * r;
      e := e - 1;
    }
    e := e / 2;
    b := b * b;
  }
  return r;
}

function exp_spec(b: int, e: int): int
  requires (e >= 0)
{
  if (e <= 0)
  then 1
  else b * exp_spec(b, e - 1)
}
```

Define an invariant that allows Dafny to prove correctness of `fast_exp`.  
Convince Dafny that the invariant holds after the loop executes, using either `calc { ... }` or assertions with supporting lemmas.
