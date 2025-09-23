**Class**: [[COMP1600 - Theoretical Computer Science]]
**Date**: Monday, 15 September 2025, 09:57
**Tags**: 

---
## Lecture 1

### Defining a Tree

- This is how we define a list in Dafny

![[Pasted image 20250923143205.png]]

- This is how we define a tree in Dafny

![[Pasted image 20250923143338.png]]

- The datatype Tree is of type \<T> which could be anything
- Emp is shorthand for an empty tree.

**Tree Example**:

- We can create the following subtree using the following code:
```c
Node(Emp, 217, Emp)
```
![[Pasted image 20250923143716.png]]

- We can add to this tree with the following code:
```c
Node(Node(Emp, 217, Emp), 7, Emp)
```

![[Pasted image 20250923143832.png]]

- Combining all of these elements together, we can create a large tree as follows:
 ![[Pasted image 20250923144001.png]]

### Induction
#### Natural Number Induction
- To prove a property $P$ holds for all natural numbers:
**Base case**  
- Prove that $P(0)$ holds.
**Induction step**  
- Prove that for all $k \geq 0$, $P(k) \Rightarrow P(k+1)$.  

#### List Induction
- To prove a property $P$ holds for all **lists**:
**Base case**  
- Prove that $P(\text{Nil})$ holds. 
**Induction step**  
- Prove that $\forall x, \forall xs.\; P(xs) \Rightarrow P(\text{Cons}(x, xs))$.  

#### Tree Induction
- To prove a property $P$ holds for all **trees**:
**Base case**  
- Prove that $P(\text{Emp})$ holds.  
**Induction step**  
- Prove that $\forall l, \forall x, \forall r.\; P(l) \land P(r) \Rightarrow P(\text{Node}(l, x, r))$.  


## Lecture 2

## Lecture 3
All done in Dafny
