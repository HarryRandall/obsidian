**Class**: [[COMP1600 - Theoretical Computer Science]]
**Date**: Wednesday, 24 September 2025, 10:03
**Tags**: 

---
## Lecture 1
- Non-Terminating (`nt`) is illegal, and is a program that won't end.

```c
nt (n: int) : int { nt(n) + 1}
```

- With this definition, we could prove that
```c
0 = nt(0) - nt(0) 
  = nt(0) + 1 - nt
  = 0 = 1
```

- So we have proved that `0 = 1`, which isn't true.
- The proof principles outlined here only work if all functions are terminating.

**Question:** Can you write a program that (a) takes in a program (file) as input, and (b) checks whether the program prints "hello world", nothing else, and stops?

- No, because what if you have

```python
while True():
	pass
print("hello world")
```

- You can't prove it.

**Question:** How do we prove that a function terminates?

```c
function len(l: List<int>): int{
	match l {
			case Nil => 0
			case Cons(h, t) => 1 + len(t)
		}
}
```

## Lecture 2
**Generic Recursive Functions**
```c
function f(x1, ..., xn){
	... (some code) .. f(e1, ..., en) .. (more code)
}
```
- `e1, ..., en` are expressions typically involving `x1, ..., xn`
- Need: `T(e1, ..., en) < T(x1, ..., xn)` for all recursive calls `f(e1, ..., en)`
- Where `T` is a function with values in a well-founded order./

**Well-Founded Orders**
- `(S, <)` so that there are no infinite sequences `S0 > S1 > S2 > ...`
- Guarantees no infinite sequences of recursive calls.

**List Merging Example**
```c
function merge(l1: List<int>, l2: List<int>) : List<int>
  decreases
  match l1 {
    case Nil => l2
    case Cons(h, t) => Cons(h, merge(l2, t))
  }
}
```

- 