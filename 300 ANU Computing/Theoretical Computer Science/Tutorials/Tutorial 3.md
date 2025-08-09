**Class**: [[COMP1600 - Theoretical Computer Science]]
**Date**: Wednesday, 6 August 2025, 10:00
**Tags**: #formalisation #proofs

---
## Exercise 1 Interpretation of First Order Logic

We only consider variables of type `Z`, one unary relation `E(x)`, and a binary relation `D(x, y)`, where  
`E(x) ⇐⇒ x is even`; `D(x, y) ⇐⇒ x is divisible by y`.

For each of the following formulae, determine the free variables, and determine precisely for which values of $x$ and $y$ the formulae are true. Justify your answer briefly (in a single sentence).

1. $D(x, x)$
	- X is the free variable.
	- Holds for any value of $x$ apart from 0.
2. $\exists x. D(x, x)$
	- This is saying that there exists an X where $\frac {x}{x}$ holds, which know can test with $\frac{1}{1}$ $x$ being $1$, and we can see that this holds. There are no free variables.
3. $\forall x. \exists y. D(x, y)$
	- This is true, for all $x$ values, there exists a $y$ value such that $\frac {x}{y}$, we know that every integer is divisible by $2$, so this holds. There are no free variables.
4. $\exists y. E(y) \land D(x, y)$
	- There exists a Y such that Y is an even value AND x is divisible by y.
	- X is a free variable here, as it's not used.
	- So we need an even value Y so (2,4,6) and some unknown value of $x$ is divisible by $y$.
	- We assume x is an integer Z, so yes, this holds, as we have $x=2, y=2$ so $\frac{2}{2}$ holds AND $y$ is even.
5. $\forall y. \lnot E(y) \Rightarrow D(y, x)$
	- for all y, odd (y) implies $\frac{y}{x}$.
	- $x$ is a free variable.
	- This holds for any odd values of $y$ and any values of $x$ apart from 0.
6. $\forall y. E(y) \land D(x, y)$
	- 

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
