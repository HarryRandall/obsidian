**Class**: [[COMP1600 - Theoretical Computer Science]]
**Date**: 16-07-2025
**Tags**: 

---
## Learning goals
- Become familiar with **propositional formulae**  
- Construct **truth tables**  
- Understand **logical equivalence**  
- Use the **Dafny** tool to create simple program specifications  
_No submission is required for this tutorial._

---

## Exercise 1 · Boolean-formula evaluation

Given the truth-value assignment  

$$
\sigma(p)=T,\qquad \sigma(q)=T,\qquad \sigma(r)=F
$$

determine which of the following formulae evaluate to **$T$** under $\sigma$.  
Use truth tables to justify your answers.

1. $(\lnot p \lor \lnot q)\;\lor\;\lnot(r \land q)$  
2. $\lnot(\lnot p \lor \lnot q)\;\lor\;(p \lor \lnot r)$  
3. $\lnot(p \lor \lnot q)\;\land\; r$  
4. $\lnot\bigl(p \lor (\lnot q \land r)\bigr)$  

---

## Exercise 2 · Logical equivalence

For each pair of formulae below, decide (again by truth tables) whether they are **logically equivalent**.

1. $(p \land q) \;\lor\; (\lnot p \land \lnot q)$  
2. $\lnot p \;\lor\; q$  
3. $(p \lor \lnot q) \;\land\; (q \lor \lnot p)$  
4. $\lnot(p \lor q)$  
5. $(q \land p) \;\lor\; \lnot p$  

---

## Exercise 3 · Card games (“Wason selection task”)

A logician places **four cards** on the table.  
Each card has a **number** on one side and a **letter** on the other.  
You see: **E K 4 7** on the visible faces.

> **Claim:** “If a card has a *vowel* on one side, then it has an *even number* on the other.”

How many cards must you turn over to test the claim?  
Which specific cards are they, and **why**?

---

## Exercise 4 · Post-conditions in Dafny

```c
function FindMax(x:int, y:int, z:int): int
  ensures FindMax(x,y,z) >= x &&
          FindMax(x,y,z) >= y &&
          FindMax(x,y,z) >= z
{
  if x > y && x > z then
    x
  else if y > x && y > z then
    y
  else
    z
}
```

1. Run it in Dafny.  
   - Is the `ensures` clause proved?  
   - If not, repair the function so the post-condition holds.

2. Is that post-condition **sufficient**?  
   - Write a function that satisfies the same `ensures` clause yet sometimes **fails to return the true maximum**.

3. Strengthen the post-condition so it uniquely characterises **“the maximum of the three integers.”**

---

## Exercise 5 · Pre-conditions in Dafny

```C
function Multiply(x:int, y:int): int
{
  match y
    case 0 => 0
    case _ => x + Multiply(x, y - 1)
}
```

1. Add an `ensures` clause specifying the expected result and verify it.  
   - Does Dafny prove it?  
   - If not, decide whether the issue lies in the post-condition or the code.

2. Certain inputs lead to **undesired behaviour**.  
   - Identify those inputs.  
   - Without changing the code, add a `requires` clause that **rules out the invalid inputs**.

---

## Exercise 6 · More post-conditions in Dafny

```C
function IsGreaterThan(x:int, y:int): bool
  ensures IsGreaterThan(x,y) ==> (x > y)
{
  // To do
}
```

1. Does the `ensures` clause fully capture the intent “return *true* **iff** $x > y$”?  
   - Implement the function so the current post-condition **passes** even when the function erroneously returns `false` for some $x > y$ cases.

2. Strengthen the post-condition so that your faulty implementation **fails**, thereby enforcing the correct behaviour.

---
