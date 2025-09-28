/* The type of lists used throughout the tutorial */
datatype List<T> = Nil | Cons(head: T, tail: List<T>)

/*--------------------------------------*/
/* COMP 1600/6260 Tutorial 8 Exercise 1 */
/*--------------------------------------*/

/* We define a type of propositional formulae that just uses          */
/* negation and disjunction,  propositional variables  and false.     */
/* We have a variable for each natural number.                        */
datatype F0 = Bot0 | Not0(a: F0) | Or0(a: F0, b:F0) | PV0 (n: nat)

/* As our variables are numbered by naturals, a valuation is a        */
/* function from natural numbers to bool. Given a valuation, we can   */
/* compute the truth value of a formula                               */
function eval0 (a: F0, sigma: nat -> bool) : bool {
    match a {
        case Bot0 => false
        case Not0(a) => ! eval0(a, sigma)
        case Or0(a, b) => eval0(a, sigma) || eval0(b,sigma)
        case PV0(n) => sigma(n)
    }
}

/* We now define a second type of propositional formulae where we     */
/* form Disjunction over lists of formulae, rather than just two      */
/* formulae. In particular, we can take false as the disjunction over */
/* the empty list (of formulae).                                      */
datatype F1 =  Or1 (l: List<F1>) | Not1 (a: F1) | PV1(n: nat)

/* The following function computes the evaluation of a formula given  */
/* a valuation. We define the size of a formula of type 1 as a        */
/* mutually recursive function like so:                               */
function size1 (f: F1) : nat {
    match f {
        case PV1(n) => 1
        case Not1(f) => 1 + size1(f)
        case Or1(l) => 1 + size1_l(l)
    }
}
function size1_l (l: List<F1>) : nat {
    match l { 
        case Nil => 0
        case Cons(h, t) => size1(h) + size1_l(t)

    }
}

/* This lemma shows that the size of a formula indeed decreases.      */
/* We need this for one recursive call.                               */
lemma size1_disj(h: F1, t: List<F1>) 
ensures size1(h) < size1(Or1(Cons(h, t)))
{ }

/* we can now define the evaluation of a formula of type 1 by make    */
/* its size decreasing.                                               */
function eval1 (w: F1, sigma: nat -> bool): bool 
decreases (size1(w)) {  
    match w { 
        case PV1(n) => sigma(n)
        case Not1(a) => ! eval1(a, sigma)
        case Or1(Nil) => false
        case Or1(Cons(h, t)) => size1_disj(h, t); eval1(h, sigma) || eval1 (Or1(t), sigma)
    }
}

/* the following translates a function of type 1 to a formula of      */ 
/* type 0.                                                            */ 
function tr10 (w: F1) : F0
decreases size1(w) {
    match w {
        case PV1(n) => PV0(n)
        case Not1(a) => Not0(tr10(a))
        case Or1(Nil) => Bot0
        case Or1(Cons(h, t)) => size1_disj(h, t); Or0(tr10(h), tr10(Or1(t)))
    }
} 

/* We show that the translation of a formula preserves its truth value  */
lemma tr10_corr(w: F1, sigma: nat -> bool)
ensures eval1(w, sigma) == eval0(tr10(w), sigma)
decreases size1(w) 
{ 
    match w {
        case PV1(n) => { }
        case Not1(a) => { tr10_corr(a, sigma); }
        case Or1(Nil) => { }
        case Or1(Cons(h, t)) => size1_disj(h, t); { 
            tr10_corr(h, sigma); 
            tr10_corr(Or1(t), sigma);
        }
    }

}
/*--------------------------------------*/
/* COMP 1600/6260 Tutorial 8 Exercise 2 */
/*--------------------------------------*/

/* The Euclidean algorithm is one of the most famous algorithms ever  */
/* and computes the greatest common divisor of two numbers.           */
/* To make things simpler, we assume that the first number is always  */
/* larger. We show that the result of the algorithm always divides    */
/* both numbers, and that it is the largest number with this          */
/* property.  */

/* We are using the following definition of divides: */
ghost predicate divides (n: nat, m: nat) { exists k : nat :: m == k * n }
function euclid (n: nat, m: nat) : nat 
requires m <= n
{
    if (m == 0) then n else euclid(m, n % m)
}

/* The result of euclid divides both arguments:                       */
lemma euclid_corr (n: nat, m: nat) 
requires m <= n
ensures divides (euclid(n, m), n) && divides (euclid(n, m), m)
{
    if (m == 0) { 
        assert n == 1 * euclid(n, m);
        assert m == 0 * euclid(n, m);
     } else {
        var k :|  m == k * euclid (m, n % m);
        var l :| n % m  == l * euclid(m, n % m);
        /* as m > 0 have euclid(n, m) == euclid(m, n % m) */
        /* hence euclid(n, m) divides both m and n % m */
        /* but n = m * (n/m) + n % m and thsi is a multiple */
        /* of euclid using equations above: */
        assert (n == (l + (n/m) * k) * euclid(n, m));
     }
}

/* The result of euclid is the largest such number. Here we need      */
/* m < n as otherwise we could have n = m = 0 whence euclid(n, m) = 0 */
/* But we can have c = 1 > 0 such that c divides both n = m = 0.      */
lemma euclid_max(n:nat, m: nat)
requires m < n
ensures forall c:nat :: divides(c,n) && divides(c,m) ==> c <= euclid(n,m)
{  forall c:nat | divides(c,n) && divides(c,m) ensures c <= euclid (n,m) {
    if (m > 0) {
            var k : nat :| n == k * c;
            var l : nat :| m == l * c;
            assert n % m == (k - (l * (n/m))) * c;
            /* from IH: if c divides both n, m, then c <= euclid(m, n % m) */
            /* given that euclid(n, m) = euclid(m, n % m) just need to show that */
            /* c divides n % m which is what we do above. The rest is automatic. */
            
        }
    }
}

/* tut08-ex2-end   */

/* tut08-ex3-begin */
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

function sizeF0(a: F0): nat
  decreases a
{
  match a
  case Bot0 => 1
  case PV0(y) => 1
  case Not0(x) => 1 + sizeF0(x)
  case Or0(x, y) => 1 + sizeF0(x) + sizeF0(y)
}


datatype F2 = Top2 | Bot2 | Or2(a: F2, b: F2) | And2 (a: F2, b: F2) | PPV2(n: nat) | NPV2(n: nat)


/* using  not (a /\ b) = (not a) \/ (not b)  and                      */
/* not (a /\ b) = (not a) \/ (not b) we can push all negations to     */
/* the variables.  This is called 'negation normal form' and is       */
/* defined as follows:                                                */
function nnf(a: F0) : F2 
// decreases /* your decreases clause */
decreases sizeF0(a) 
{
    match a {   
                case Bot0 => Bot2
                case PV0(n) => PPV2(n)
                case Or0(c, d) => Or2 (nnf(c), nnf(d))
                case Not0(Bot0) => Top2
                case Not0(PV0(n)) => NPV2(n)
                case Not0(Or0(e, f)) => And2(nnf(Not0(e)), nnf(Not0(f)))  
                case Not0(Not0(a)) => nnf(a)
            }
}   

/* We evaluate a negation normal form formula as expected:            */
function eval2 (a: F2, sigma: nat -> bool) : bool 
{
    match a {
        case Top2 => true
        case Bot2 => false
        case And2(a, b) => eval2(a, sigma) && eval2(b, sigma)
        case Or2(a, b)  => eval2(a, sigma) || eval2(b, sigma)
        case PPV2(n) => sigma(n)
        case NPV2(n) => ! sigma(n)
    }
}
/* And the following shows that the negation normal form translation  */
/* preserves the truth of a formula.                                  */
/* Correctness of negation normal form translation:                   */
lemma nnf_corr(a: F0, sigma: nat -> bool)
  ensures eval0(a, sigma) == eval2(nnf(a), sigma)
  decreases sizeF0(a)
{
  match a
  case Bot0 =>
  case PV0(_) =>
  case Or0(c, d) =>
    assert sizeF0(c) < sizeF0(Or0(c,d));
    nnf_corr(c, sigma);
    assert sizeF0(d) < sizeF0(Or0(c,d));
    nnf_corr(d, sigma);
  case Not0(x) =>
    match x
    case Bot0 =>
    case PV0(_) =>
    case Or0(e, f) =>
      assert sizeF0(Not0(e)) < sizeF0(Not0(Or0(e,f)));
      nnf_corr(Not0(e), sigma);
      assert sizeF0(Not0(f)) < sizeF0(Not0(Or0(e,f)));
      nnf_corr(Not0(f), sigma);
    case Not0(y) =>
      assert sizeF0(y) < sizeF0(Not0(Not0(y)));
      nnf_corr(y, sigma);
}

/* tut08-ex3-end */
