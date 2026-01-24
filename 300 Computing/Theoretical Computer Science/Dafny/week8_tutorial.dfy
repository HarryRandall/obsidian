/* The type of lists used throughout the tutorial */
datatype List<T> = Nil | Cons(head: T, tail: List<T>)

// /* We define a type of propositional formulae that just uses          */
// /* negation and disjunction,  propositional variables  and false.     */
// /* We have a variable for each natural number.                        */
datatype F0 = False0 | Not0(a: F0) | Or0(a: F0, b:F0) | Var0 (n: nat)
// // New datatype F0, which is false
// // Not0(a: F0) = Not A
// // Or0(a: F0, b:F0) = A or B
// // Var0 (n: nat) = p_n

// /* As our variables are numbered by naturals, a valuation is a        */
// /* function from natural numbers to bool. Given a valuation, we can   */
// /* compute the truth value of a formula                               */
function eval0 (a: F0, sigma: nat -> bool) : bool {
    match a {
        case False0 => false
        case Not0(a) => ! eval0(a, sigma)
        case Or0(a, b) => eval0(a, sigma) || eval0(b,sigma)
        case Var0(n) => sigma(n)
    }
}

/*--------------------------------------*/
/* COMP 1600/6260 Tutorial 8 Exercise 3 */
/*--------------------------------------*/
/* We now define a third data type of formulae that does not have     */ 
/* negation but has two types of propositional variables: positive    */
/* propositional variables and negative propositional variables. The  */
/* positive propositional variables are standard propositional        */
/* variables and the negative propositional variables are negated,    */
/* and we can think of a negative propositional variable as not p,    */
/* for a variable p.                                                  */

datatype F2 = True2 | False2 | Or2(a: F2, b: F2) | And2 (a: F2, b: F2) | PosVar2(n: nat) | NegVar2(n: nat)


// We define a function that takes in a formula, and returns the size
// of the nodes in the tree.
function sizeOfF0(a: F0): nat
  decreases a{
  match a
    // False has a size of 1
    case False0 => 1
    // A variable counts as 1
    case Var0(y) => 1
    // Not has the Not + the variable inside of the not, so 2.
    // we add 1 and recurse through the function
    case Not0(x) => 1 + sizeOfF0(x)
    // Or counts are 3, as we have the or statement, plus the two variables.
    case Or0(x, y) => 1 + sizeOfF0(x) + sizeOfF0(y)
}


/* using  not (a /\ b) = (not a) \/ (not b)  and                      */
/* not (a /\ b) = (not a) \/ (not b) we can push all negations to     */
/* the variables.  This is called 'negation normal form' and is       */
/* defined as follows:                                                */
function nnf(a: F0) : F2 
// decreases /* your decreases clause */
// Add the decreases clause for the nnf function.
decreases sizeOfF0(a) 
{
  match a {   
    case False0 => False2
    case Var0(n) => PosVar2(n)
    case Or0(c, d) => Or2 (nnf(c), nnf(d))
    case Not0(False0) => True2
    case Not0(Var0(n)) => NegVar2(n)
    case Not0(Or0(e, f)) => And2(nnf(Not0(e)), nnf(Not0(f)))  
    case Not0(Not0(a)) => nnf(a)
  }
}   

/* We evaluate a negation normal form formula as expected:            */
function eval2 (a: F2, sigma: nat -> bool) : bool 
{
    match a {
        case True2 => true
        case False2 => false
        case And2(a, b) => eval2(a, sigma) && eval2(b, sigma)
        case Or2(a, b)  => eval2(a, sigma) || eval2(b, sigma)
        case PosVar2(n) => sigma(n)
        case NegVar2(n) => ! sigma(n)
    }
}
/* And the following shows that the negation normal form translation  */
/* preserves the truth of a formula.                                  */
/* Correctness of negation normal form translation:                   */

// Question 2

// match a {
//         case False0 => false
//         case Not0(a) => ! eval0(a, sigma)
//         case Or0(a, b) => eval0(a, sigma) || eval0(b,sigma)
//         case Var0(n) => sigma(n)
//     }

// match a {
//     case True2 => true
//     case False2 => false
//     case And2(a, b) => eval2(a, sigma) && eval2(b, sigma)
//     case Or2(a, b)  => eval2(a, sigma) || eval2(b, sigma)
//     case PosVar2(n) => sigma(n)
//     case NegVar2(n) => ! sigma(n)
// }



lemma negationNormalForm_corr(a: F0, sigma: nat -> bool)
// we are testing for any formula 'a' with the type of formula0,
// and any value 'sigma', that eval0 == eval2(nnf(a))
  ensures eval0(a, sigma) == eval2(nnf(a), sigma)
// decreases clause previously defined.
  decreases sizeOfF0(a)
{
  match a
  // Case: False
  // eval0(false0, sigma) = false
  // nnf(False0) = False 2, eval2(False2, sigma) = false
  // therefore they're both false.
  case False0 =>
  // Case: Variable
  // Next we have some arbitary variable
  // eval0(Var0(n), sigma) = sigma(n)
  // nnf(Var0(n)) = PosVar2(n)
  // and eval2(PosVar2(n), sigma) = sigma(n)
  // they're both equal.
  case Var0(n) =>
  // Case: Or
  // Now we look on the induction hypothesis
  // We assume that it holds for both C and D
  // from the subformulas, so it holds for Or(c,d)
  case Or0(c, d) =>
    negationNormalForm_corr(c, sigma);
    negationNormalForm_corr(d, sigma);
  // Case not:
  case Not0(x) =>
    match x
      // this is siilar to the first one, but we have no0,
      // so we have eval0(Not0(False0, sigma)) = !false = true
      // nnf(Not0(False0)) = True2
      // eval2(True2, sigma) = true
      // therefore this case is all good and we don't need to assert
      case False0 =>
      // this as well is similar, we have
      // eval0(Not0(Var0(n)), sigma) = !sigma(n)
      // nnf(Not0(Var0(n))) = NegVar2(n)
      // eval2(NegVar2(n), sigma) = !sigma(n)
      // These two statements now match, so we're done.
      case Var0(n) =>

      // The De Morgans case is a little more difficult
      // We split it into two sides, the left hand side being
      // eval0(not0(Or0(e, f), sigma)) = !(eval0(e,sigma) || eval0(f,sigma))
      // the right hand side is nnf(Not0(or0(e,f))) = And2(nnf(Not0(e)), nnf(Not0(f)))
      // by demorgans law, !(E || F) = (!E & !F)
      // so we need the function to hold for both of these recurisve cases.
      case Or0(e, f) =>
        negationNormalForm_corr(Not0(e), sigma);
        assert sizeOfF0(Not0(f)) < sizeOfF0(Not0(Or0(e,f)));
        negationNormalForm_corr(Not0(f), sigma);
      

    // The other subcase is for Not, we have double negation
    // eval0(Not0(Not0(y)), sigma) = eval0(y, sigma)
    // nnf(Not0(Not0(y))) = nnf(y)
    // so you only need the induction hypothesis on y
      case Not0(y) =>
        assert sizeOfF0(y) < sizeOfF0(Not0(Not0(y)));
        negationNormalForm_corr(y, sigma);
}

/* tut08-ex3-end */
