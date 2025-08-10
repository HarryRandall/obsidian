**Class**: [[COMP1600 - Theoretical Computer Science]]
**Date**: Wednesday, 6 August 2025, 10:00
**Tags**: #formalisation #proofs

---
## Exercise 1 Interpretation of First Order Logic

We only consider variables of type `Z`, one unary relation `E(x)`, and a binary relation `D(x, y)`, where  
`E(x) ⇐⇒ x is even`; `D(x, y) ⇐⇒ x is divisible by y`.

For each of the following formulae, determine the free variables, and determine precisely for which values of $x$ and $y$ the formulae are true. Justify your answer briefly (in a single sentence).

A variable occurrence is _free_ if it is not inside the scope of a quantifier (∃ or ∀) that binds it; equivalently, after removing all quantifiers from the formula the remaining unquantified variable symbols are the free variables.
**How to proceed (quick recipe):**
- Scan the formula and mark each occurrence of a variable that lies within the scope of a quantifier (e.g. $∀z, ∃z\forall z$) - those are _bound_. Any variable symbol not bound anywhere is _free_.
- To decide truth for particular values of the free variables, interpret $E(x)$$ as “$x$ is even” and $D(x,y)$) as “$x$ is divisible by $y$” and evaluate the formula with the usual semantics of quantifiers over all integers.
- When the formula has quantifiers, remember they range over all integers $\mathbb{Z}$.

1. $D(x, x)$
	- X is a free variable, as it's not bound.
	- The formula is true for all values of $x$, as $x$ is always divisible by itself.
2. $\exists x. D(x, x)$
	- There are no free variables, as $x$ is bound.
	- This formula holds for all of $x$.
3. $\forall x. \exists y. D(x, y)$
	- There are no free variables, $x$ & $y$ are bound.
	- This reads, for every $x$, there exists a $y$ such that $\frac{x}{y}$ holds.
4. $\exists y. E(y) \land D(x, y)$
	- $x$ is a free variable in this case, as it's not bound.
	- There exists a $y$, that is even, and the the variable $x$ is divisible for this even value of $y$. This holds for the arbitrary value $ x = 0$, as $\frac{0}{2}$ meets both conditions.
5. $\forall y. \lnot E(y) \Rightarrow D(y, x)$
	- $x$ is a free variable.
	- For all odd $y$ values implies that's it's divisible by some value of $x$. This is false as $x$ can be a zero value, which is undefined.
	- This statement is only true when $x$ is $1$ or $-1$, as it needs to return $\mathbb{Z}$ an integer. If we had $\frac{3}{2}$ which holds the first condition, it returns $1.5$ which is not $\mathbb{Z}$.
6. $\forall y. E(y) \land D(x, y)$
	- X is a free variable.
	- For all $y$ -> even values of $y$ AND $\frac{x}{y}$ holds.
	- This is true for all values.

---

## Exercise 2 Formalisation

For each of the formulae $A(x, y)$ above, define a predicate $P(x, y)$ such that $P(x, y)$ holds when $x$ and $y$ satisfy the constraint you have found in the previous exercise, and verify your answer using Dafny.

For example, for Part (a), you can do this using the following stub:

```c
ghost predicate E(x: int) { exists k: int :: x == 2 * k }
ghost predicate D(x: int, y: int) { exists k: int :: x == y * k }
ghost predicate spec_2a (x: int, y: int) { D(x, x) } // given
ghost predicate true_2a (x: int, y: int) { /* your answer here */ }

lemma tut2_ex2a ()
  ensures forall x: int, y : int :: spec_2a(x, y) <==> true_2a(x, y)
{ /* your proof here if not automatic */ }
```

Hint: For part (c) you might want to introduce a new predicate, say $Q(x) = \exists y. D(x, y)$ (i.e. a ghost predicate in Dafny) and reformulate part (c) as $\forall x. Q(x)$. This is related to the use of triggers for quantifiers in Dafny.

### Dafny Hacks

The following might make your (coding) life easier:

- You can write `A <==> B` for `(A ==> B) && (B ==> A)`.  
  To prove a statement of the form `A <==> B` one proves both directions separately, i.e. `if (A) { ... }` and `if (B) { ... }` where the `...` are a proof of `B` (using the assumption `A`), or a proof of `A` using the assumption `B`, respectively.

- We can abbreviate sequences of the same quantifier type.  
  That means we can write  
  `forall x1 : T1, x2 : T2 :: P`  
  instead of the more lengthy  
  `forall x1: T1 :: forall x2 : T2 :: P`.

- To prove sequences of quantifiers of the same type, say for example  
  `forall x1 : T1, x2 : T2 :: P`,  
  we can also introduce new variables using the shorthand notation:  
  `forall x1 : T1, x2 : T2 ensures P(x1, x2) { ... }`  
  rather than using two `forall ... ensures` blocks.

---

## Exercise 3 Proof in Dafny

If $R$ is a binary predicate, then $(\forall x. \exists y. R(x, y)) \lor (\lnot \forall x. R(x, x))$ is valid in predicate logic if the variables range over a non-empty type.  

Give a brief informal argument of why the statement holds, and give a proof of this in Dafny by completing the following code snippet. (The declaration type `T(0)` tells Dafny that the type `T` is non-empty.)

```c
type T(0)
ghost predicate R(x: T, y: T)

/* your informal argument */

lemma tut2_ex3()
  ensures (forall x :: exists y :: R(x, y)) || ! forall x :: R(x, x) {
  /* your code here */
}
```

---

## Exercise 4 Knights and Knaves with Treasure (MA, 5+5 credits)

On an island there are two kinds of people: knights, who always tell the truth, and knaves, who always lie. We encounter two people, `a` and `b`. We do not know whether they are knights or knaves. They may be both knaves, both knights, or one knave and one knight.

There are two boxes, `b1` and `b2`. There is a treasure in one of the boxes. The treasure must be in one of the boxes and cannot be in both.

The people make the following statements:

- `a` says: If Person `b` is a knave, then the treasure is in Box 1.
- `b` says: Person `a` is a knight.
- `b` makes a second statement: The treasure is in Box 2.


|                      | Clue 1                             | Clue 2                                   | Clue 3                               | Statement                         |
| -------------------- | ---------------------------------- | ---------------------------------------- | ------------------------------------ | --------------------------------- |
| A: Knight, B: Knight | Treasure is not in box 1. ($\neg$) | True                                     | True                                 | Could be true                     |
| A: Knight, B: Knave  | Treasure in box 1                  | Contradicts, person A has to be a Knave. | Lying, the treasure is in Box 1      | Lots of contradictions, not sure. |
| A: Knave, B: Knight  | Treasure in box 1                  | Contradicts                              | Already contradicts, but this holds. |                                   |
| A: Knave, B: Knave   | Treasure is not in Box 1.          | True, because it lies.                   | Treasure is in box 1.                | Contradicts.                      |



### Part (i)

Your first task is to work out what types `A` and `B` are (Knight/Knave) and which box the treasure is in, using Dafny. Extend the following Dafny code snippet and insert logical assertions that express the situation above. Use this to determine the solution to the problem.

Note: When modelling what Person `b` said, use two separate statements. If you join them with a conjunction, it will not be modelled correctly. Also note that you will need to introduce more types/variables to model the boxes and whether or not they contain the treasure. If you are stuck, make sure to watch the lectures in Weeks 2 and 3, where several similar examples were shown.

```c
type Person(0)
ghost predicate Knight (x: Person)
ghost predicate Knave (x: Person)
ghost predicate Says (x : Person)
const a : Person 
const b : Person

lemma treasure()
  requires /* Your assertions go here. */
  requires /* There may be possibly more than one. */
  ensures /* Your solution goes here. */
{ /* your proof if not automatic */ }
```

### Part (ii)

Your second task is to write out the proof steps that would be required to solve this problem, if Dafny had not automatically proved it. Write out the steps as assertions in the lemma, as shown in the lectures. Use comments to explain what you have attempted to do.
