**Class**: [[COMP1600 - Theoretical Computer Science]]
**Date**: Wednesday, 30 July 2025, 13:03
**Tags**: 

---
## Exercise 1 Dessert

Consider the following incomplete lemma:

```c
lemma Dessert(p: bool, q: bool, r: bool, s: bool)
  ensures (p ==> r) {
}
```

There is a dessert on the table.  
Let $p$ represent that the dessert is a mud cake.  
Let $q$ represent that the dessert contains chocolate.  
Let $r$ represent that the dessert is tasty.  
Let $s$ represent that the dessert has raspberry filling.  

We want to conclude that if the dessert is a mud cake, then it is tasty, represented by the `ensures` clause above.  
However, we only know the following facts:

- If the dessert contains chocolate, then it is tasty.
- If the dessert has raspberry filling, then it is a mud cake $\lor$ it is tasty.
- If the dessert is a mud cake, then it has raspberry filling.
- If the dessert is a mud cake, then it contains chocolate.

### Tasks
(a) Complete the lemma in Dafny. Use one or more of the given facts to write `requires` clauses, so that the lemma satisfies the `ensures` clause. Note: you may not need all of the facts. You must use only the minimum set of facts that are necessary.

```c
lemma Dessert(p: bool, q: bool, r: bool, s: bool)
ensures (p ==> r)
requires (q ==> r)
// requires (s ==> p || r)
// requires (p ==> s)
requires (p ==> q)
{
}
```

(b) Give a logical argument for the proof (i.e. without Dafny), stating which logic rules you used at each step. Write your answer in a comment in your Dafny file.
```
p (mudcake) is r (tasty) is what we're after.
q (chocolate) means r (tasty)
p (mudcake) is q (chocolate)

So we have p implies q (p --> q) and then (q --> r) which we can rewrite as (p --> r), which matches the original statement (p --> r).
```

---

## Exercise 2 Weather

Consider the following incomplete lemma:

```c
lemma Weather(p: bool, q: bool, r: bool, s: bool)
  ensures (!p) {
}
```

Let $p$ represent that it is winter.  
Let $q$ represent that the weather is cold.  
Let $r$ represent that it is snowing.  
Let $s$ represent that there is frost.  

We want to conclude that the weather is not winter, represented by the `ensures` clause above.  
However, we only know the following facts:

- If it is snowing, then it is winter.
- There is no frost.
- If it is winter, then the weather is cold.
- If there is no frost, then the weather is not cold.

### Tasks
(a) Complete the lemma in Dafny. Use one or more of the given facts to write `requires` clauses, so that the lemma satisfies the `ensures` clause. Note: you may not need all of the facts. You must use only the minimum set of facts that are necessary.

(b) Give a logical argument for the proof (i.e. without Dafny), stating which logic rules you used at each step. Write your answer in a comment in your Dafny file.

---

## Exercise 3 Mystery Mansion (MA, 6+4 credits)

Consider the following incomplete lemma:

```c
lemma DinnerParty(..) {
  ...
}
```

During a dinner party, a guest, Mina, realises that her valuable necklace has been stolen. Work out who stole the necklace, given the following clues:

- If Lucy stole the necklace, then the necklace was made only of gold.
- The necklace was a family heirloom.
- The necklace was in the library $\lor$ Lucy was wearing a green dress.
- If the necklace was a family heirloom, then it was made only of silver $\lor$ Jonathan stole it.
- If Lucy was wearing a green dress, then the necklace was made only of silver.
- If Mina was wearing a red dress, then Jonathan stole the necklace.
- The dinner party was held in a mansion and Lucy was not wearing a blue dress.
- If Lucy did not steal the necklace, then Mina was wearing a red dress.
- If the necklace was in the library, then it was made only of silver.

### Tasks
(a) Complete the lemma in Dafny. Use one or more of the given facts to write `requires` clauses, so that you can work out which guest is the thief. You will need to write the `ensures` clause as well as the `requires` clauses. Note that the word “or” in the clauses should be used in the logical sense. You may not need all of the facts. You must use only the minimum set of facts that are necessary.

(b) Give a logical argument for the proof (i.e. without Dafny), stating which logic rules you used at each step. Write your answer in a comment in your Dafny file.

---

## Exercise 4 Boolean formulae evaluation

This exercise is to be completed by hand, not with Dafny.  
For each of the following, either prove that the argument is valid or give a counterexample to show that it is invalid.

(a)  
$$
p \Rightarrow q ,\
q \Rightarrow p \
\therefore p \lor q
$$

(b)  
$$
p ,\
p \Rightarrow q ,\
\lnot q \lor r \
\therefore r
$$

(c)  
$$
p \lor q \\
p \Rightarrow \lnot q \\
p \Rightarrow r \\
\therefore r
$$

(d)  
$$
p \land \lnot q \Rightarrow r \\
p \lor q \\
q \Rightarrow p \\
\therefore r
$$
