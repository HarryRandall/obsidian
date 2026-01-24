
/*--------------------------------------*/
/* COMP 1600/6260 Tutorial 5 Exercise 1 */
/*--------------------------------------*/

function DoubleMinusOne(n: int):int{
  if n <= 0 then 0 else (2 * n - 1) + DoubleMinusOne(n-1)
}

// ***** UNCOMMENT THIS FUNCTION WHEN YOU ARE READY TO ATTEMPT IT.
lemma {:induction false} SquareLemma(n:int)
    requires n >= 1 //asume n > 1
    // we want to prove that sum of the first n numbers equals n^2
    // 1 + 3 + 5 + ... + (2n-1) = n^2.
    ensures DoubleMinusOne(n) == n * n{
    // Base Case where n = 1.
    if (n == 1){
        // The recursive function 2 * n - 1 + 0
        //  = (((2 * 1) - 1) + 0) = 1.
        assert DoubleMinusOne(1) == 1;
        // we assert that 1 = 1^2
        assert 1 == 1 * 1;
    }
    else {
    // --- Inductive step (n > 1) ---
    // Inductive hypothesis (IH): DoubleMinusOne(n-1) == (n-1)*(n-1).
    // We obtain the IH by a recursive call on the smaller argument.

    // Moving onto the Inductive step, for values >= 2, I'll define
    // an inductive hypothesis as DoubleMinusOne(n-1) == (n-1)*(n-1)
    // where we're trying to prove 1 + 3 + 5 + ... + (2n-1) = n^2.
    // First we'll break up the function into a recursive call like in the lectures.
    // this is a condition for the recursive call
    // we show that the recondition for the lemma holds.
    assert n - 1 >= 1;
    // this recursive call will establish the inductive hypothesis
    // DoubleMinusOne(n-1) = (n-1)*(n-1)
    SquareLemma(n - 1); // now we can work on the inductive hypothesis.

    calc {
      DoubleMinusOne(n);
      // we unpack the defintion at n
      == (2*n - 1) + DoubleMinusOne(n-1);
      // we apply the IH DoubleMinusOne(n-1) = (n-1)*(n-1) to replace
      // the DoubleMinusOne(n-1) section.
      == (2*n - 1) + (n - 1) * (n - 1);
      // now we do some algerbra, we turn (n - 1) * (n - 1)
      // into n^2 -2n + 1, to get the line
      // (2* n -1) + (n*n - (2 * n + 1))
      == (2 * n -1) + (n*n - 2 * n + 1);
      // reordering we get
      // (2n -1) + (n^2 + (-2n - 1))
      // which is (2n - 2n) + (1 - 1) + n^2
      // which leaves us with just n^2 or n * n
      == n*n;
    }
  }
}

/*------------------------------------------*/
/* Required functions given to the students */
/*------------------------------------------*/


datatype List<T> = Nil | Cons(head:T,tail:List<T>)

function Length<T>(xs: List<T>):nat {
  match xs
  case Nil => 0
  case Cons(_,tail) => 1 + Length(tail)
}

function Append<T>(xs:List<T>, ys:List<T>): List<T>
  ensures Length(Append(xs,ys)) == Length(xs) + Length(ys){
   match xs
   case Nil => ys
   case Cons(x,tail) => Cons(x,Append(tail,ys))
}

/*--------------------------------------*/
/* COMP 1600/6260 Tutorial 5 Exercise 2 */
/*--------------------------------------*/

function Take<T>(xs:List<T>, n:nat): List<T>
   requires n <= Length(xs)
{
  if n == 0 then Nil 
  else Cons(xs.head,Take(xs.tail,n-1))
}

/*--------------------------------------*/
/* COMP 1600/6260 Tutorial 5 Exercise 3 */
/*--------------------------------------*/

/* ***** UNCOMMENT THIS FUNCTION WHEN YOU ARE READY TO ATTEMPT IT.
lemma {:induction false} LengthTake<T>(xs:List<T>,n:nat)
   requires n <= Length(xs)
   ensures Length(Take(xs,n)) == n{
     match xs
     case Nil =>
       // To do.
     case Cons(y,ys) =>
       // To do.
}
*/

/*--------------------------------------*/
/* COMP 1600/6260 Tutorial 5 Exercise 4 */
/*--------------------------------------*/

// Helper Function Drop
// this function takes in a list of T defined as xs
// it then removes the first N items from that list
// and returns a new list with the first items removed.
function Drop<T>(xs:List<T>, n:nat): List<T>
  // the length of the list must be greater than the values
  // you are trying to remove from the list, otherwise
  // you get an array error (py).
  requires n <= Length(xs)
{
  // if n is 0, then the list is unchanged, so return the original list
  if n == 0 then xs
  // if not
  else
    // set up a match or switch statement
    match xs
    // we drop the head, and recursively drop n-1 more from the tail.
    case Cons(_,tail) => Drop(tail, n-1)
}


// UNCOMMENT THIS FUNCTION AFTER DEFINING DROP.
// Given
lemma {:induction false} LengthDrop<T>(xs:List<T>,n:nat)
  requires n <= Length(xs)
  ensures Length(Drop(xs,n)) == Length(xs) - n{
    match xs
    case Nil =>
        assert(Length(xs) == 0);
        assert(n == 0); /* Since n is a nat, so must be 0 or greater than length.
                          but from the precondition, it must be <= length. */
        assert(Drop(xs,n) == xs); 
        assert(Length(Drop(xs,n)) == Length(xs));
        assert(Length(Drop(xs,n)) == Length(xs) - n); // Since n == 0.
    case Cons(y,ys) =>
      if(n == 0){
        assert(Length(Drop(Cons(y,ys),n)) == Length(xs));  /* From definition of Drop 
                                                            * and since n == 0.
                                                            */
        assert(Length(Drop(xs,n)) == Length(xs) - n); 
        
      }else{
        LengthDrop(ys, n-1); // IH
        calc{
                Length(Drop(Cons(y,ys),n));
                == Length(Drop(ys, n-1)); // From the definition of Drop, since n > 0.
                == Length(ys) - (n-1);  // From the IH: Length(Drop(ys,n)) == Length(ys) - (n-1).
                == Length(ys) + 1 - n;  // By mathematics.
                == Length(Cons(y,ys)) - n;  // From the definition of Length.
                == Length(xs) - n;
        }
      }
}


/*--------------------------------------*/
/* COMP 1600/6260 Tutorial 5 Exercise 5 */
/*--------------------------------------*/

// UNCOMMENT THIS FUNCTION AFTER DEFINING DROP.
lemma {:induction false} AppendTakeDrop<T>(xs:List<T>,n:nat)
  // we basically want to prove that if we take n numbers from a list
  // given that n <= the length of the list, that if we drop the first
  // n elements and take the first n elements, then we append them together
  // we are left with the original list.
   requires n <= Length(xs)
   ensures Append(Take(xs,n),Drop(xs,n)) == xs
   // this is the ensures statement that we are trying to prove
  //  by taking the first n items and appending them as previously stateed.
   {
    // To be completed.
    // Okay here we setup the switch statement
    match xs
    // For the case where the xs[i] is null, that only happens if
    // we've reached the end of the list, so n should be 0.
    case Nil =>
      assert n == 0;
    
    // now we split up the head and the tail
    // as per the dfeinition Cons(head:T,tail:List<T>).
    case Cons(y, ys) =>
      // We have two cases, one where N = 0, and one where n != 0.
      if (n == 0){
        // If we take 0, the output should be nil as per the defintion
        // if n == 0 then Nil 
        assert Take(Cons(y,ys), 0) == Nil;
        // By drops defition, it should just return the same list
        assert Drop(Cons(y,ys), 0) == Cons(y,ys);
        // Now we test the case n =0, if we append nil and xs,
        // the output we get is xs, which Dafny accepts.
        assert Append(Take(Cons(y,ys), 0), Drop(Cons(y,ys), 0)) == Cons(y,ys);
      }
      else{
        // Now this is for n > 0, so we have to do an inductive hypothesis.
        // now we have a recursive call on the function, with n - 1.
        AppendTakeDrop(ys, n - 1);
        // we take 1 item from the tail whilst the recursive function is running
        // for n > 0 values.
        assert Take(Cons(y,ys), n) == Cons(y, Take(ys, n-1));
        // we drop a value from tail recursively. 
        // dropping n from cons(y, ys) means dropping n-1 from ys
        assert Drop(Cons(y,ys), n) == Drop(ys, n-1);
        // now we apply the inductive hypothesis
        // which we previously defined as (ys, n - 1)
        // so we substituate these into the goal expression.
        assert Append(Take(Cons(y,ys), n), Drop(Cons(y,ys), n)) == Append(Cons(y, Take(ys, n-1)), Drop(ys, n-1));
        // Use the defintion from append (Cons(x,Append(tail,ys)))
        //  to pull out Y and get the following
        assert Append(Cons(y, Take(ys, n-1)), Drop(ys, n-1)) == Cons(y, Append(Take(ys, n-1), Drop(ys, n-1)));
        // Now we apply the inductive hypothesis to the tail
        // append(take(ys, n-1), drop(ys, n-1)) = ys.
        assert Append(Take(ys, n-1), Drop(ys, n-1)) == ys;
        // We replace the inner append with ys using the inductive hypothesis cons(y, ys)
        // to conclude that cons(y,ys) which was the original list (xs).
        assert Cons(y, Append(Take(ys, n-1), Drop(ys, n-1))) == Cons(y, ys);
        // Dafny Proves
        }
}
