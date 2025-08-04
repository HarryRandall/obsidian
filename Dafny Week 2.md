```c
lemma ThereExists1()
    ensures(exists x:int :: (x * x == x)){
        assert 1*1 == 1; //gave it a hint.
    }
// There exists an X for X * X == x.,
// 1 * 1 == 1.
lemma ThereExists2()
    ensures (exists x:int | x in {1,2,3,4} :: (x * x == x)){
        assert 1*1==1;
    }
// There exists a value N in the set S, such that n squared = n.
lemma ThereExists3(numbers: set<int>)
    requires (1 in numbers)
    ensures (exists x:int | x in numbers :: (x*x == x)){
    }
ghost predicate P(x:int) //pretending there is a Predicate P, that takes in an X. A predicate is a bool.

lemma ForThere()
    ensures (forall x:int :: P(x)) <==> !(exists x:int :: !P(x)){
    }

// For all integers X, P(x) is True OR there does not exist an integer X such that P(x) is false.
```