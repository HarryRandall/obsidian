**Class**: [[COMP1600 - Theoretical Computer Science]]
**Date**: Tuesday, 22 July 2025, 20:07
**Tags**: #dafny

---
#### Post-Conditions
Suppose we have the following function
```C
function Triple1(x:int): int{
  x * 3
}
```

The function takes whatever input X is and multiplies it by 3. The problem is that we don't know if this function is actually tripping this value, as we haven't defined it.

```C
function Triple1(x:int): int{
  x * 4 + x
}
```

This function would also be valid in Dafny, but we can see that it's not logically correct.

```C
function increase(x:int, y:int): int
  ensures Increase(x,y) > x {
  x + y
}
```

The 'ensures' statement is a specification, or a post-condition, and we are basically saying, by the end of this function, the function should've completed the post-condition goal.

So going through the example, passing through a variable $x=5$, $y=2$, the function will add $x$ and $y$ to get a final value of $7$, which when we hit the post-condition, $7 > 5$. 

However, Dafny will mark this as incorrect, as Dafny checks all of the conditions. For example, $x=5$, $y=0$, the function will add $x$ and $y$ to get a final value of $5$, which when we hit the post-condition, $5 \not> 5$, so it's incorrect.

---
#### Pre-Conditions
Pre-Conditions are similar to post-conditions, but rather than ensuring a value after the function, we can ensure a value before the function.

```C
function increase(x:int, y:int): int
  ensures Increase(x,y) > x {
  x + y
}
```

The following function that we went over above doesn't work as $y$ can be either negative or 0. We can implement a pre-condition to this function to ensure that $y$ is $>$ 0 which Dafny will accept.
```C
function increase(x:int, y:int): int
  ensures Increase(x,y) > x 
  requires y > 0{
  x + y
}
```

---
#### Lemma
A lemma is used when we want to prove a logical connective. Lets try and create a function $p = \neg \neg p$, as not not is the same as equals.
```C
lemme notLemme(p:bool)
ensures p == !!p{
}
```
