/* Show that for all k >= 0, 7^k - 1 is divisible by 6. */

/* Informal proof: we write '=' for equality, and n^k for */
/* n to the power of k, i.e. exponentiation (just to be closer to maths). */

/* Proof by induction on k. */
/* Base case: k = 0.  */
/* We know that 6 * 0 = 7^0 - 1 (because 7^0 = 1). */ 
/* Hence 6 divides 7^0 - 1 */
/* Step case: k > 0. */
/* By induction hypothesis, 6 divides 7^(k-1) - 1. */
/* Hence there is some l such that 6 * l = 7^(k-1) - 1. */
/* Let l be such that 6 * l = 7^(k-1) - 1. */
/* We calculate that 
          7^k - 1 = 7 * 7^(k-1) - 1
                  = 7 * 7^(k-1) - 7 + 6 
                  = 7 * (7^(k-1) - 1) + 6 
                  = 7 * 6 * l + 6
                  = 6 * (7 * l + 1) */
/* Hence 6 divides 7^k - 1. */

/* Need to defined divides in Dafny */
/* this is a ghost predicate because it doesn't compute */
ghost  predicate divides (n: int, k: int) 
{ exists l: int :: n * l == k }

/* and exponentiation */
function exp (n: int, k: nat ) : int {
    if (k == 0) then 1 else n * exp(n, k-1)
}

/* Formal proof in Dafny: see the correspondence. */
/* Show that for all k >= 0, 7^k - 1 is divisible by 6. */
lemma div (k: nat) ensures divides (6, exp(7, k) - 1)
{   /* Proof by induction on k */
    /* Base case: k = 0. */
    if (k == 0) { 
        /* We know that 6 * 0 = 7^0 - 1 (because 7^0 = 1). */
        assert 6 * 0 == exp(7, 0) - 1;
        /* Hence 6 divides 7^0 - 1. */
        assert divides (6, exp(7, 0) - 1);
    }
    else { 
        /* Step case: k > 0 */
        /* By induction hypothesis, 6 divides 7^(k-1) - 1. */
        assert divides (6, exp(7, k-1) - 1);
        /* Hence there is some l such that 6 * l = 7^(k-1) - 1. */
        assert exists l :: 6 * l == exp(7, k-1) - 1;
        /* Let l be such that 6 * l = 7^(k-1) - 1. */
        var l : int :| 6 * l == exp(7, k-1) - 1;
        /* We calculate that 
          7^k - 1 = 7 * 7^(k-1) - 1
                  = 7 * 7^(k-1) - 7 + 6 
                  = 7 * (7^(k-1) - 1) + 6 
                  = 7 * 6 * l + 6
                  = 6 * (7 * l + 1) */
        calc {
            exp (7, k) - 1;
            == 7 * exp(7, k-1) - 1;
            == 7 * exp(7, k-1) - 7 + 6;
            == 7 * (exp (7, k-1) - 1) + 6;
            == 7 * (6 * l) + 6; 
            == 6 * (7 * l + 1);
        }
        /* Hence 6 divides 7^k - 1. */
        assert (divides (6, exp(7, k) -1));
        
    }
}


/* Show that 0 * 0! + 1 * 1! + ... + (k-1) * (k-1)! = k! - 1 */
/* Proof by induction on k. */
/* Base case: k = 0. */
/* we know that the LHS is the empty sum, hence 0 */
/* which is equal to the RHS because 0! = 1 */
/* Step case: k > 0 .*/
/* By inductive hypothesis, 0 * 0! + .. + (k-2) * (k-2)! = (k-1)! = 1. */
/* We calculate:
                0 * 0! + ... + (k-1) * (k-1)!
            = 0 * 0! + .. + (k-2)*(k-2)! + (k-1) * (k-1)!
            = (k-1)! - 1 + (k-1) * (k-1)!
            = (k-1)! * (1 + k-1) - 1
            = (k-1)! * k - 1
            = k! - 1. */

/* In Dafny, we need to define factorial first: */
function fact (n: nat) : nat {
    if (n == 0) then 1 else n * fact (n-1)
}

/* And we need to define the function that calculates */
/* 0 * 0! + ... + (k-1) * (k-1)!. This function depends on k.  */
/* For k == 0, nothing is being added, so the value is zero. */
function sum_of_fact (k: nat) : nat {
    if (k == 0) then 0 else (k-1) * fact(k-1) + sum_of_fact(k-1)
}

/* Show that 0 * 0! + 2 * 2! + ... + (k-1) * (k-1)! = k! - 1 */
lemma fact_sum (k: nat) ensures sum_of_fact(k)  == fact(k) - 1
{   /* Proof by induction on k. */
    /* Base case: k = 0. */
    if (k == 0) {
        /* we know that the LHS is the empty sum, hence 0 */
        /* which is equal to the RHS because 0! = 1 */
        assert sum_of_fact(0) == fact(0) - 1;
    } else {
        /* Step case: k > 0 .*/
        /* By inductive hypothesis, 1 * 1! + .. + (k-2) * (k-2)! = (k-1)! = 1. */
        assert sum_of_fact(k-1) == fact(k-1) - 1;
        /* We calculate:
                1 * 1! + ... + (k-1) * (k-1)!
            = 1 * 1! + .. + (k-2)*(k-2)! + (k-1) * (k-1)!
            = (k-1)! - 1 + (k-1) * (k-1)!
            = (k-1)! * (1 + k-1) - 1
            = (k-1)! * k - 1
            = k! - 1. */
        calc {
            sum_of_fact(k);
            == sum_of_fact(k-1) + (k-1) * fact(k-1); 
            == fact (k-1) - 1 + (k-1) * fact(k-1); 
            == fact(k-1) + (k-1) * fact(k-1) - 1;
            == fact(k-1) * (1 + k-1) - 1;
            == fact(k-1) * k - 1;
            == fact(k) - 1;
        }
    }

}


