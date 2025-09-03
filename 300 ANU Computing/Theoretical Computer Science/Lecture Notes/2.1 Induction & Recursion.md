**Class**: [[COMP1600 - Theoretical Computer Science]]
**Date**: Tuesday, 2 September 2025, 10:11
**Tags**: #induction

---
#### Lecture 10 — Mathematical Induction

##### General Principle  

To prove that a property $P$ holds for all integers $n \geq s$ (for some $s$):  
- Prove that $P(s)$ holds (base case).  
- Prove that $$\forall k \mid k \geq s,\; P(k) \Rightarrow P(k+1)$$ (inductive step).  

Then $P$ holds for all integers $n \geq s$.  

For natural numbers:  
- Show $P(0)$ holds.  
- Show $$\forall k \mid k \geq 0,\; P(k) \Rightarrow P(k+1)$$

---

##### How It Works  

- If $P(0)$ holds and $$\forall k,\; P(k) \Rightarrow P(k+1)$$then:  
  - $P(0) \Rightarrow P(1)$  
  - $P(1) \Rightarrow P(2)$  
  - $P(2) \Rightarrow P(3)$  
  - etc.  

Thus $P(n)$ holds for all $n \geq 0$.  

---

##### Why Induction  

- Proves that a property holds for all $n \geq s$ instead of proving each $n$ individually.  
- Can extend beyond numbers to other structures.  

---

##### Example 1: Sum of Integers  

Prove $$\forall n \geq 0,\; \sum_{i=0}^n i = \frac{n(n+1)}{2}$$

**Base case ($n=0$):**  
- LHS $=0$  
- RHS $=\frac{0(0+1)}{2}=0$  
- Holds.  

**Inductive hypothesis:** Assume $$\sum_{i=0}^k i = \frac{k(k+1)}{2}$$  

**Inductive step:**  
$$
\sum_{i=0}^{k+1} i = \left(\sum_{i=0}^k i \right) + (k+1)  
= \frac{k(k+1)}{2} + (k+1)  
= \frac{k(k+1) + 2(k+1)}{2}  
= \frac{(k+1)(k+2)}{2}  
$$  

Therefore holds for $k+1$.  

---

##### Importance of Base Case  

Without a base case, induction fails.  

**Incorrect example:** $$Q(i) \equiv i = i+1$$  
- Hypothesis: Assume $Q(k)$ holds.  
- Then $Q(k+1)$ would follow.  
- Wrong, because no valid base case exists.  

---

#### Lecture 11 — Mathematical Induction Continued.
##### Example 2: Sum of a Geometric Sequence  

Prove $$\forall n \geq 0,\; \sum_{i=0}^n r^i = \frac{r^{n+1}-1}{r-1},\; r>1$$

**Base case ($n=0$):**  
- LHS $= r^0=1$  
- RHS $= \frac{r^{0+1}-1}{r-1} = \frac{r-1}{r-1}=1$  

**Inductive hypothesis:** Assume $$\sum_{i=0}^k r^i = \frac{r^{k+1}-1}{r-1}$$

**Inductive step:**  
$$
\sum_{i=0}^{k+1} r^i = \left(\sum_{i=0}^k r^i\right) + r^{k+1}  
= \frac{r^{k+1}-1}{r-1} + r^{k+1}  
= \frac{r^{k+1}-1+(r-1)r^{k+1}}{r-1}  
= \frac{r^{k+2}-1}{r-1}  
$$  

Therefore holds for $k+1$.  

---

##### Example 3: Divisibility  

Prove $$\forall n \geq 1,\; 4^n-1$$ is divisible by 3.  

**Base case ($n=1$):**  
- $4^1 - 1 = 3$ divisible by 3.  

**Inductive hypothesis:** Assume $4^k - 1$ divisible by 3.  

**Inductive step:**  
$$
\text{LHS} = 4^{(k+1)} - 1
$$
$$
= 4^k \cdot 4^1 - 1
$$
$$
= 4^k \cdot (3 + 1)^1 - 1
$$
$$
= 4^k \cdot (3 + 1) - 1
$$
$$
= 4^k \times 3 + 4^k - 1
$$

which is divisible by 3.  

> Lecture Coding Segment

---
#### Lecture 12 — More Mathematical Induction
##### Example: Properties over Sigma  

Definition of sigma notation:  
$$
\sum_{i=m}^n a_i = a_m + a_{m+1} + a_{m+2} + \dots + a_n
$$
Recursive definition:  
$$
\sum_{i=m}^n a_i =
\begin{cases}
0, & m > n \\
\sum_{i=m}^{n-1} a_i + a_n, & m \leq n
\end{cases}
$$
We want to prove:  
$$
\sum_{i=m}^n (a_i + b_i) = \sum_{i=m}^n a_i + \sum_{i=m}^n b_i
$$ 
---
##### Base Case ($n = m-1$)  

- LHS $=0$  
- RHS $=0+0=0$  
- Holds.  

---
##### Inductive Hypothesis  

Assume it holds for $n=k$:  
$$
\sum_{i=m}^k (a_i+b_i) = \sum_{i=m}^k a_i + \sum_{i=m}^k b_i
$$
##### Inductive Step  

Prove it for $n=k+1$:  
$$
\sum_{i=m}^{k+1} (a_i+b_i) = \sum_{i=m}^{k} (a_i+b_i) + (a_{k+1}+b_{k+1})
$$
By IH:  
$$
= \left(\sum_{i=m}^k a_i + \sum_{i=m}^k b_i\right) + (a_{k+1}+b_{k+1})
= \sum_{i=m}^{k+1} a_i + \sum_{i=m}^{k+1} b_i
$$
Therefore the property holds.  

---

##### Example: Finding the Pattern  

Observe:  

- $1 = 1$  
- $1-4 = -(1+2)$  
- $1-4+9 = (1+2+3)$  
- $1-4+9-16 = -(1+2+3+4)$  
- $1-4+9-16+25 = (1+2+3+4+5)$  

##### General Formula  

LHS:  
$$
\sum_{i=1}^n \big( (-1)^{i-1} \cdot i^2 \big)
$$
RHS:  
$$
(-1)^{n-1} \sum_{i=1}^n i
$$

##### Base Case ($n=1$)  

LHS $= 1^2 = 1$  
RHS $= (-1)^{0}\cdot 1 = 1$  
Holds.  
##### Inductive Hypothesis  

Assume for $n=k$:  
$$
\sum_{i=1}^k \big( (-1)^{i-1} i^2 \big) = (-1)^{k-1} \sum_{i=1}^k i
$$
##### Inductive Step  

For $n=k+1$:  

$$
\sum_{i=1}^{k+1} \big( (-1)^{i-1} i^2 \big) =
\left( \sum_{i=1}^k (-1)^{i-1} i^2 \right) + (-1)^k (k+1)^2
$$

By IH:  
$$
= (-1)^{k-1} \sum_{i=1}^k i + (-1)^k (k+1)^2
$$

Now use the identity:  

$$
\sum_{i=1}^k i = \frac{k(k+1)}{2}
$$
So:  

$$
= (-1)^{k-1}\cdot \frac{k(k+1)}{2} + (-1)^k (k+1)^2
$$
Factorising:  

$$
= (-1)^{k-1}\left( \frac{k(k+1)}{2} - (k+1)^2 \right)
$$  

$$
= (-1)^{k-1}\left( \frac{k^2+k - 2k^2 -4k -2}{2} \right)
= (-1)^{k-1}\left( \frac{-k^2 - 3k - 2}{2} \right)
$$  

$$
= (-1)^{k+1-1} \cdot \frac{(k+1)(k+2)}{2}
$$
Which equals:  

$$
(-1)^{(k+1)-1} \sum_{i=1}^{k+1} i
$$  
Thus the property holds.  
