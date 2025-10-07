**Class**: [[COMP1600 - Theoretical Computer Science]]
**Date**: Tuesday, 7 October 2025, 08:06
**Tags**: 

---
## Lecture 1

**Example: Counting**
```c
while (x < n) x:= x + 1
```

**What is a good invariant?**
- There can be many different invariants
- For example, x = x or also x < x (or false)
- Depends on what we want to prove

### Code with Postcondition
**Partial Hoare Triple**
```c
{ something }
	while (x < n) x:= x + 1
{x == n}
```
- Now we have a Postcondition, when we've proving something we have it at the back of our mind.

**While Rule**

$$
\frac{\{I \land x < n\}\; x := x + 1\; \{I\}}
{\{I\}\; \text{while }(x < n)\; x := x + 1\; \{I \land \lnot(x < n)\}}
$$
- From the conclusion of the while rule, we need to be able to infer the conclusion we are after.

**Invariant Spec**

1. For postcondition:  
   $I \land (x \ge n) \Rightarrow x = n$

2. For invariant:  
   $\{I \land (x < n)\}\; x := x + 1\; \{I\}$  

Both need to be valid (as implication and Hoare triple).

**Candidate Invariants**

| \(I\)                     | 1   | 2   |
| ------------------------- | --- | --- |
| $(I \equiv x = n)$        | ✓   | ✗   |
| $(I \equiv x \le n)$      | ✓   | ✓   |
| $(I \equiv \text{false})$ | ✓   | ✓   |
### General Principle

**Counting Loops**

```c
{ <precond> }
var x := <something>
while (x < n) {
  -- do something
  x := x + 1
}
{ <postcond> }
```


**Counting Loop Invariant Principle**

In a loop like the one on the left:

- Often need \( x = n \) for \<postcond\>

**Counting Loop Invariant Principle:**  
- Add \( x $\le$ n \) to the invariant

While rule conclusion (i.e. at end of loop):

- Have \($\lnot(x < n)$\) from loop condition false  
- Have ( $x \le n$ ) from invariant  
- May conclude \( $x = n$ \) as desired
