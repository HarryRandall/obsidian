**Class**: [[COMP1600 - Theoretical Computer Science]]
**Date**: Sunday, 24 August 2025, 16:11
**Tags**: 

---
## Exercise 1 Induction Problem 1

Notice that the following holds:

$$
1 = 1
$$

$$
1 + 3 = 4
$$

$$
1 + 3 + 5 = 9
$$

$$
1 + 3 + 5 + 7 = 16
$$

$$
1 + 3 + 5 + 7 + 9 = 25
$$

Work out a general formula for the above, and prove it using mathematical induction. All steps of the proof must be shown. The proof should be completed without Dafny.

---

## Exercise 2 Induction Problem 2

Prove, using mathematical induction, that:

$$
\sum_{i=1}^{n-1} i(i + 1) = \frac{n(n - 1)(n + 1)}{3}
$$

for all integers $n \geq 2$.  

All steps of the proof must be shown. The proof should be completed without Dafny.

---

The next few exercises require the following definitions of even and odd:

```c
ghost predicate even (n: nat) { exists k : nat :: n == 2 * k }
ghost predicate odd (n: nat) { exists k : nat :: n == 2 * k + 1 }
```

---

## Exercise 3 Even, Odd and Successor

These lemmas were shown in the lectures. They are needed for the later questions in this tutorial. Try to implement them without re-watching the lectures, but if you get stuck, take a look at the lectures.

```c
lemma even_succ (n: nat)
  ensures even(n) ==> odd(n+1)
{ /* your proof here */ }

lemma odd_succ (n: nat)
  ensures odd(n) ==> even(n+1)
{ /* your proof here */ }
```

---

## Exercise 4 All Integers are Even or Odd

To show that all integers are either even or odd, another lemma is required, which shows that a given integer is either even or odd. There are two different ways to prove this: one is by induction, and the other uses arithmetic and division with remainder (`i % k` is the remainder of dividing `i` by `k` in Dafny).

Implement the following lemma, by using further lemmas as described below:

```c
lemma all_even_odd()
  ensures forall n: int | n >= 0 :: even(n) || odd(n)
{
  /* Insert your proof here, which uses even_odd_ind.*/
}

lemma even_odd_ind (n:nat)
  ensures even(n) || odd(n)
{ /* your inductive proof here */ }

lemma even_odd_nonind (n: nat)
  ensures even(n) || odd(n)
{ /* your non-inductive proof here */ }
```

For the inductive proof, you might want to use the auxiliary lemmas from the previous exercise.

---

## Exercise 5 Verification of Functions (MA, 10 credits)

The following function (very inefficiently) determines whether or not a number is even.

```c
function is_even (n: nat) : bool {
  if (n == 0) then true
  else if (n == 1) then false
  else is_even(n-2)
}
```

```c
lemma is_even_corr (n: nat)
  ensures is_even(n) ==> even(n)
{ /* your proof here */ }

lemma even_is_corr (n: nat)
  ensures even(n) ==> is_even(n)
{ /* your proof here */ }
```

Show that this function indeed matches its specification by proving the lemma on the right above. You might want to prove an auxiliary statement first, or use one of the previous lemmas from this tutorial.  

*Hint:* More than one base case may be required.
