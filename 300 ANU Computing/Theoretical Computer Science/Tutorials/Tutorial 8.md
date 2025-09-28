**Class**: [[COMP1600 - Theoretical Computer Science]]
**Date**: Sunday, 28 September 2025, 11:55
**Tags**: 

---
- Understand structural induction over general inductive data types.
- Prove properties of functional programs using structural induction.
- Understand and implement termination proofs for functional programs.

- Use the Dafny file `08-tutorial-handout.dfy` for Dafny and mini-assignment questions.
- Upload a plain text file called `u123456.dfy` (replace by your uID) to Wattle; you might lose some marks otherwise.
- Submit exercises marked **MA** by Wed, October 1st, 2025, 09:00 via Wattle. Late submissions will score 0.

---

### Lists

Throughout the tutorial sheet, we work with the following definition of lists:

```c
datatype List<T> = Nil | Cons(head: T, tail: List<T>)
```

## Exercise 1 Propositional Formulae

We define a type of propositional formulae that just uses negation and disjunction, propositional variables and false. We have a variable for each natural number. We also define a second type of propositional formulae where we form disjunction over lists of formulae, rather than just two formulae. In particular, false is the disjunction over the empty list of formulae.

```c
datatype F0 = Bot0 | Not0(a: F0) | Or0(a: F0, b: F0) | PV0(n: nat)
datatype F1 = Or1(l: List<F1>) | Not1(a: F1) | PV1(n: nat)
```

As our variables are numbered by naturals, a valuation is a function from natural numbers to `bool`. Given a valuation, we can compute the truth value of a formula. Dafny recognises the first definition as terminating, but not the second one.

```c
function eval0(a: F0, sigma: nat -> bool): bool
{
  /* no decreases clause necessary */
  match a
  {
    case Bot0        => false
    case PV0(n)      => sigma(n)
    case Not0(a)     => !eval0(a, sigma)
    case Or0(a, b)   => eval0(a, sigma) || eval0(b, sigma)
  }
}

function eval1(w: F1, sigma: nat -> bool): bool
  decreases /* your decreases clause here */
{
  match w
  {
    case PV1(n)            => sigma(n)
    case Not1(a)           => !eval1(a, sigma)
    case Or1(Nil)          => false
    case Or1(Cons(h, t))   => /* your hint */
                               eval1(h, sigma) || eval1(Or1(t), sigma)
  }
}
```

**(a)** Define a termination measure to complete the `decreases` clause to show the function as terminating. You might need a termination hint in the function definition too, and might want to define the measure by mutual recursion.

The following translates a formula of type 1 to a formula of type 0.

```c
function tr10(w: F1) : F0
  decreases /* your decreases clause here */
{
  match w
  {
    case PV1(n)            => PV0(n)
    case Not1(a)           => Not0(tr10(a))
    case Or1(Nil)          => Bot0
    case Or1(Cons(h, t))   => /* your hint here */
                               Or0(tr10(h), tr10(Or1(t)))
  }
}
```

**(b)** Define a `decreases` clause and a lemma that makes Dafny recognise this function as terminating and, if required, a termination hint in the form of a lemma.

**(c)** Show that the translation of a formula preserves its truth value, i.e. prove that `eval1(w, sigma) == eval0(tr10(w), sigma)` for all `w: F1` and all `sigma: nat -> bool`.

---

## Exercise 2 Euclidean Algorithm

The Euclidean algorithm computes the greatest common divisor of two numbers. We assume that the first number is always larger. This is the `requires` clause: function calls are only allowed if the `requires` clause is true.

```c
function euclid(n: nat, m: nat) : nat
  requires m <= n
{
  if m == 0 then n else euclid(m, n % m)
}
```

We use the following definition of divisibility:

```c
ghost predicate divides(n: nat, m: nat)
{
  exists k: nat :: m == k * n
}
```

**(a)** Show that the result of the algorithm always divides both numbers, that is, give a proof of the following lemma.

```c
lemma euclid_corr(n: nat, m: nat)
  requires m <= n
  ensures divides(euclid(n, m), n) && divides(euclid(n, m), m)
{
  /* your proof here */
}
```

**(b)** Show that the result of `euclid` is the largest number with this property. Here, we require that `m < n`. What can go wrong when this condition is not met?

```c
lemma euclid_max(n: nat, m: nat)
  requires m < n
  ensures forall c: nat :: divides(c, n) && divides(c, m) ==> c <= euclid(n, m)
{
  /* your proof */
}
```

---

## Exercise 3 Negation Normal Form (MA, 3+7 credits)

We consider formulae that do not have negation but two types of propositional variables: positive propositional and negative propositional variables. The positive propositional variables are standard propositional variables and the negative propositional variables are negated, and we can think of a negative propositional variable as $\lnot p$, for a variable $p$.

```c
datatype F2 =
  Top2
| Bot2
| Or2(a: F2, b: F2)
| And2(a: F2, b: F2)
| PPV2(n: nat)
| NPV2(n: nat)
```

Using de Morgan’s laws, we can push all negations to the variables. This is called negation normal form translation.

```c
function nnf(a: F0) : F2
  decreases /* your decreases clause */
{
  match a
  {
    case Bot0              => Bot2
    case PV0(n)            => PPV2(n)
    case Or0(c, d)         => Or2(nnf(c), nnf(d))
    case Not0(Bot0)        => Top2
    case Not0(PV0(n))      => NPV2(n)
    case Not0(Or0(e, f))   => And2(nnf(Not0(e)), nnf(Not0(f)))
    case Not0(Not0(a))     => nnf(a)
  }
}
```

The function below defines the evaluation of a negation-normal-form formula.

```c
function eval2(a: F2, sigma: nat -> bool) : bool
{
  match a
  {
    case Top2        => true
    case Bot2        => false
    case And2(a, b)  => eval2(a, sigma) && eval2(b, sigma)
    case Or2(a, b)   => eval2(a, sigma) || eval2(b, sigma)
    case PPV2(n)     => sigma(n)
    case NPV2(n)     => !sigma(n)
  }
}
```

1. The function `nnf` is not recognised as decreasing. Supply a `decreases` clause that makes Dafny recognise this function as terminating.

2. Prove the correctness of negation normal form translation, i.e. complete the missing proof of the lemma below. You might also need to provide a `decreases` clause in the proof.

```c
lemma nnf_corr(a: F0, sigma: nat -> bool)
  ensures eval0(a, sigma) == eval2(nnf(a), sigma)
{
  /* your proof */
}
```
