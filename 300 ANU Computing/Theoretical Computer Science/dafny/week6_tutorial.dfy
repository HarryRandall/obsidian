datatype List<T> = Nil | Cons(head:T,tail:List<T>)

/*--------------------------------------*/
/* COMP 1600/6260 Tutorial 6 Exercise 1 */
/*--------------------------------------*/

function Filter<T>(p: T -> bool, xs: List<T>):List<T>{
    match xs
    case Nil => Nil
    case Cons(x,tail) => if p(x) then Cons(x,Filter(p,tail))
                         else Filter(p,tail)
}

function Sum(xs: List<nat>):nat {
   match xs
   case Nil => 0
   case Cons(x,tail) => x + Sum(tail) 
}

function DoubleAll(xs: List<nat>):List<nat>{
   match xs
   case Nil => Nil
   case Cons(x,tail) => Cons((2*x),DoubleAll(tail))
}


// Target:
// Sum(DoubleAll(Filter(p, xs))) == 2 * Sum(Filter(p, xs))

// Strategy: first prove the general fact
// Sum(DoubleAll(ys)) == 2 * Sum(ys)
// then substitute ys = Filter(p, xs).

// ------------------------------
// Base Case
// ------------------------------

// Let ys = []
// DoubleAll([]) = []
// Sum(DoubleAll([])) = Sum([]) = 0
// 2 * Sum([]) = 2 * 0 = 0
// Therefore, the equality holds for ys = [].

// ------------------------------
// Inductive Step
// ------------------------------

// Inductive Hypothesis (IH):
// For some list t, assume
// Sum(DoubleAll(t)) == 2 * Sum(t)

// We must show it for a non-empty list:
// ys = Cons(x, t)

// Start on the left-hand side:
// Sum(DoubleAll(Cons(x, t)))

// Unfold DoubleAll at Cons:
// DoubleAll(Cons(x, t)) = Cons(2 * x, DoubleAll(t))
// So:
// Sum(DoubleAll(Cons(x, t))) = Sum(Cons(2 * x, DoubleAll(t)))

// Unfold Sum at Cons:
// Sum(Cons(2 * x, DoubleAll(t))) = 2 * x + Sum(DoubleAll(t))

// Apply IH:
// = 2 * x + (2 * Sum(t))

// Factor out 2:
// = 2 * (x + Sum(t))

// Recognise Sum at Cons again:
// Sum(Cons(x, t)) = x + Sum(t)

// Therefore:
// 2 * (x + Sum(t)) = 2 * Sum(Cons(x, t))

// Hence, the property holds for ys = Cons(x, t).

// ------------------------------
// Conclusion
// ------------------------------

// By induction on ys:
// Sum(DoubleAll(ys)) == 2 * Sum(ys)  for all lists ys.

// Substitute ys = Filter(p, xs):
// Sum(DoubleAll(Filter(p, xs))) == 2 * Sum(Filter(p, xs))



/*--------------------------------------*/
/* COMP 1600/6260 Tutorial 6 Exercise 2 */
/*--------------------------------------*/

function sum2(list: List<int>, a: int) : int {
    match list
       case Nil => a
       case Cons(h, t) => sum2(t, a + h)
}

function len (list: List<int>) : int {
    match list
       case Nil => 0 
       case Cons(h, t) => 1 + len(t)
}

function inc_list (list: List<int>) : List<int> {
    match list
        case Nil => Nil
        case Cons(h, t) => Cons(h + 1, inc_list(t))
}

/*--------------------------------------*/
/* COMP 1600/6260 Tutorial 6 Exercise 3 */
/*--------------------------------------*/

// Cons Function
// Takes in an element H
// Takes in a list T
// Combines them, so it's [h] + t

// The followng functions are given from the tutorial:
// takes a list xs and ys and sticks them together
// define a new variable x, as the head of the list xs
// define tail as the rest of the list, apart from the head.
// recurse through the list until the list xs is empty
// then we just add ys to the end of it. 
function Append<T>(xs:List<T>, ys:List<T>): List<T>{
   match xs
   case Nil => ys
   case Cons(x,tail) => Cons(x,Append(tail,ys))
}

 // reverses a list by using recursion and the append function 
// pretty inefficient and slow
// we take in the head 
function rev1 (list: List<int>) : List<int> {
    match list
        case Nil => Nil
        case Cons(h, t) => Append (rev1(t), Cons(h, Nil))
}


// more efficient reverse function, building a list as it goes.
// We define h as the head of the list [0]
// We define t as the last element in the list [-1]
// a is a new list, that's empty at the beginning, and we build
// upon it as we go.
// We call rev2(tail, [head] + a)
function rev2 (list: List<int>, a: List<int>) : List<int> {
    match list
        case Nil => a
        case Cons(h, t) => rev2 (t, Cons(h, a))
}


// Our goal is to prove that rev1(list) == rev2(list, Nil) for all 
// integer lists `list`

// (a) Formulate a lemma `Append_assoc` that expresses that append is \
// associative. Dafny should prove this lemma automatically.  

lemma append_assoc(xs: List<int>, ys: List<int>, zs: List<int>)
  // (xs + ys) + zs = xs + (ys + zs)
    ensures Append(Append(xs, ys), zs) == Append(xs, Append(ys, zs))
{
  // proof on xs to prove the function is associative.
  match xs
  // case one, so the list xs is empty,
  // we get append([], list[ys]) = ys on the left
  // on the right, we have Append([], Append(ys, zs))
  // as Append([], Append(ys, zs)) = Append(ys, zs) this holds.
    case Nil =>
    // case xs = cons(head, tail)
    // append defintion Cons(x,tail) => Cons(x,Append(tail,ys))
    // using this defintion, and the lhs/rhs, we can simplify
    // lhs =  Append(Append(xs, ys), zs)
    // lhs = Append(Append(cons(head, tail), ys), zs)
    // lhs = Append(cons(head, Append(tail, ys)), zs)
    // lhs = Cons(head, Append(Append(tail, ys), zs))
    // rhs = Append(xs, Append(ys, zs))
    // rhs = Cons(head, Append(tail, Append(ys, zs)))
    // as they match, it proves associativity.
    case Cons(head, tail) =>
      append_assoc(tail, ys, zs);
}

// (b) Formulate a lemma `Append_nil` that expresses that concatenation 
// with an empty list on the right is the identity. Again, Dafny should 
// prove this automatically.  

lemma Append_nil<T>(xs: List<T>)
  // appending [] to a lis xs, is still the list xs.
  ensures Append(xs, Nil) == xs
{
  match xs
  // if empty, append([], []) = [] so holds.
    case Nil =>
    // if not, we loop over the head and tail
    // lhs = Append(Cons(head, tail), Nil)
    // lhs = Cons(head, Append(tail, Nil))
    // rhs = Cons(head, tail)
    // we know that Append(tail, Nil) == tail so this holds.
    case Cons(h, t) =>
      Append_nil(t);
}

// (c) Formulate and prove a lemma `rev1_rev2_aux` that generalises the 
// statement `rev1(list) == rev2(list, Nil)`.  

lemma rev1_rev2_aux(list: List<int>, acc: List<int>)
  // rev1(list) == rev2(list, Nil)
  // Append (rev1(t), Cons(head, Nil)) == rev2(list, acc)
  // where Cons(head, Nil)) = acc
  ensures Append(rev1(list), acc) == rev2(list, acc)
{
  match list
    case Nil =>
    case Cons(head, tail) =>
    // xs = Cons(head, tail)
    // lhs = Append (rev1(t), Cons(h, Nil))
    // lhs = Append(Append(rev1(tail), Cons(head, Nil)), acc)
    // using Append(Append(xs, ys), zs) == Append(xs, Append(ys, zs))
    // lhs = Append(rev1(tail), Append(Cons(head, Nil), acc))
    // lhs = Append(rev1(t), Cons(h, acc))
    // rhs = rev2(list, acc)
    // rhs = rev2(Cons(head, taiil), acc)
    // rhs = rev2(t, Cons(h, acc))
    // lhs = rhs, so this holds. holds
      append_assoc(rev1(tail), Cons(head, Nil), acc);
      rev1_rev2_aux(tail, Cons(head, acc));
}

// (d) Use the lemma above to give a proof of lemma 
// rev1_rev2(list: List<int>) which states that 
// rev1(list) == rev2(list, Nil)


lemma rev1_rev2_proof(list: List<int>)
  ensures rev1(list) == rev2(list, Nil)
{
  // looking at the rev1_rev2_aux lemma, we can see that
  // Append(rev1(t), Cons(h, acc)) == rev2(t, Cons(h, acc))
  // Append(rev1(list), Nil) == rev2(list, Nil)
  rev1_rev2_aux(list, Nil);

  // finally we can prove that Append(rev1(list), Nil) == rev1(list)
  // completing the proof.
  Append_nil(rev1(list));
}
