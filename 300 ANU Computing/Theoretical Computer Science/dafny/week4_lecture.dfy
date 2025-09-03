// recursive function for adding all values

function Addall(n:int):int{
    if n <= 0 then 0 else n + Addall(n-1)
}

// prove with mathematical induction
lemma {:induction false} MathInd(n:int)
    requires n>= 0
    ensures Addall(n) == n * (n+1)/2{
        if (n == 0){
            // Base case
            assert Addall(n) == n*(n+1)/2;
        }else{
            // induction step
            MathInd(n-1);
            calc{
                Addall(n);
            }
        }
    }