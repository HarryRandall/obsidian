ghost predicate even (n: nat) { exists k : nat :: n == 2 * k }
ghost predicate odd (n: nat) { exists k : nat :: n == 2 * k + 1 }

lemma even_succ (n: nat)
ensures even (n) ==> odd (n+1)
{ }

lemma odd_succ (n: nat)
  ensures odd(n) ==> even (n+1)
{   
     if (odd(n))
     {
        var k :| n == 2 * k + 1;
        assert (n+1 == 2 * (k+1));
        
     }
}

/*--------------------------------------*/
/* COMP 1600/6260 Tutorial 4 Exercise 4 */
/*--------------------------------------*/

lemma all_even_odd()
   ensures forall n: int | n >= 0 :: even(n) || odd(n){
    forall n: int | n >= 0 ensures even(n) || odd(n){
      even_odd_ind(n);
   }
}

/* inductive proof */
lemma even_odd_ind (n:nat)
ensures even(n) || odd(n)
{
    if ( n == 0) {
        assert (0 == 2 * 0);
    } else {
        even_odd_ind (n-1); // Inductive hypothesis.
        even_succ(n-1);
        odd_succ(n-1);
    }
}

/* non-inductive proof */
lemma even_odd_nonind (n: nat) 
    ensures even(n) || odd(n)
{
    var r: nat := n % 2;
    assert (r == 0) || (r == 1);
    if (r == 0) { 
        assert (n == 2 * (n / 2));  
    } else {
     assert (n == 2 * (n / 2) + 1);  
    }
}



/*--------------------------------------*/
/* COMP 1600/6260 Tutorial 4 Exercise 5 */
/*--------------------------------------*/

// Exercise 5 Verification of Functions (MA, 10 credits)
// Show that this function indeed matches its specification by proving the lemma on the right above. You might want
// to prove an auxiliary statement first, or use one of the previous lemmas from this tutorial. Hint: More than one base
// case may be required.


// we create a lemma that asserts that 0 is even, we use this later.
lemma Even0()
  ensures even(0){
  assert 0 == 2 * 0;
}

// new lemma for numbers that are greater than two.
lemma even_pred2(n: nat)
  requires even(n) && n >= 2
  // if we subtract 2 from n, it remains even.
  ensures  even(n - 2){
  // define some K such that n = 2k
  var k: nat :| n == 2 * k;
  // since n > 1, we can say that k is greater than or equal to one.
  assert k >= 1;
  // define a new variable m = k - 1 which we use in the next step.
  var m: nat := k - 1;
  // we conclude that n - 2 is m (even)
  assert n - 2 == 2 * m;
}


// Function provided
function is_even (n: nat) : bool {
  if (n == 0) then true // base case 1
  else if (n == 1) then false // base case 2
  else is_even(n-2) // very bad recursive function subtracting 2, worse as >n
}



lemma is_even_corr (n: nat)
  // if function says true, that means that n is even.
  ensures is_even(n) ==> even(n){
  // Base case using helper function, which is already defined as true for 0.
  if n == 0 {
    Even0();
  // Second base case is false, so this already holds and we don't need any logic.
  } else if n == 1 {
  // else for n > 1
  } else {
    // setup inductive hypothesis for n - 2
    is_even_corr(n - 2);
    // work through the inductive hypothesis
    if is_even(n) {
      // from the defintinition of the function, we know that
      // n == n-2 with the is_even function.
      assert is_even(n - 2);
      // using inductive hypothesis, we assert that even( n - 2) holds.
      assert even(n - 2);
      // defining a new variable k and stating that n - 2 = 2 * k.
      // stems from even(n-2)
      var k: nat :| n - 2 == 2 * k;
      // rearrange the formula to get n into it's original form.
      assert n == 2 * (k + 1);
      // conclude that even(2 * (k + 1)) to satisfy even(n)
      assert even(n);
    }
  }
}

lemma even_is_corr (n: nat)
  // if function says true, that means that n is even.
  ensures even(n) ==> is_even(n){
  // base case = 0, should be true.
  if n == 0 {
  // even(1) is false, so this is an implication and holds by default.
  } else if n == 1 {
  // now we look  for n > 1.
  } else {
    // we start an inductive hypothesis
    // if even(n-2) ==> is_even(n-2)
    even_is_corr(n - 2);
    if even(n) {
      // go through the inductive hypothesis
      // and we get is_even(n) == is_even(n-2), which holds
      even_pred2(n);
      assert even(n-2);
      assert true;
      assert is_even(n - 2);
      assert is_even(n);
    }
  }
}
