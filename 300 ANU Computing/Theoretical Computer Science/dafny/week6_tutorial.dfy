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

function Append<T>(xs:List<T>, ys:List<T>): List<T>{
   match xs
   case Nil => ys
   case Cons(x,tail) => Cons(x,Append(tail,ys))
}

function rev1 (list: List<int>) : List<int> {
    match list
        case Nil => Nil
        case Cons(h, t) => Append (rev1(t), Cons(h, Nil))
}

function rev2 (list: List<int>, a: List<int>) : List<int> {
    match list
        case Nil => a
        case Cons(h, t) => rev2 (t, Cons(h, a))
}


// ==========================================
// Exercise 3: List reversal equivalence
// ==========================================

// Recall: Append joins two lists together.
// rev1 reverses a list by recursion + append.
// rev2 reverses a list by carrying an accumulator (a "work in progress").
// Goal: prove that rev1(list) == rev2(list, Nil) for all lists.

// ---------------------------------------------------------
// Part (a): Lemma Append_assoc
// ---------------------------------------------------------

lemma append_assoc<T>(xs: List<T>, ys: List<T>, zs: List<T>)
  // Property: (xs ++ ys) ++ zs == xs ++ (ys ++ zs)
  // In words: concatenation is associative.
  ensures Append(Append(xs, ys), zs) == Append(xs, Append(ys, zs))
{
  // Proof by structural induction on xs.
  match xs
    case Nil =>
      // Case xs = []
      // Append([], ys) = ys
      // So LHS = Append(ys, zs)
      // RHS = Append([], Append(ys, zs)) = Append(ys, zs)
      // Therefore equality holds automatically.
    case Cons(h, t) =>
      // Case xs = Cons(h, t)
      // LHS = Append(Append(Cons(h, t), ys), zs)
      //     = Append(Cons(h, Append(t, ys)), zs)
      //     = Cons(h, Append(Append(t, ys), zs))
      // RHS = Append(Cons(h, t), Append(ys, zs))
      //     = Cons(h, Append(t, Append(ys, zs)))
      // By induction hypothesis on t, the inner Append parts match.
      append_assoc(t, ys, zs);
}

// ---------------------------------------------------------
// Part (b): Lemma Append_nil
// ---------------------------------------------------------

lemma Append_nil<T>(xs: List<T>)
  // Property: appending [] to the right of xs doesn’t change xs.
  ensures Append(xs, Nil) == xs
{
  match xs
    case Nil =>
      // Case xs = []
      // Append([], []) = [] so equality holds.
    case Cons(h, t) =>
      // Case xs = Cons(h, t)
      // LHS = Append(Cons(h, t), Nil)
      //     = Cons(h, Append(t, Nil))
      // RHS = Cons(h, t)
      // By induction hypothesis: Append(t, Nil) == t.
      Append_nil(t);
}

// ---------------------------------------------------------
// Part (c): Lemma rev1_rev2_aux
// ---------------------------------------------------------

lemma rev1_rev2_aux(list: List<int>, acc: List<int>)
  // This generalises our final goal:
  // Instead of proving rev1(list) == rev2(list, Nil),
  // we prove: Append(rev1(list), acc) == rev2(list, acc).
  ensures Append(rev1(list), acc) == rev2(list, acc)
{
  match list
    case Nil =>
      // Base case: list = []
      // LHS = Append(rev1([]), acc)
      //     = Append([], acc) = acc
      // RHS = rev2([], acc) = acc
      // Done.
    case Cons(h, t) =>
      // Inductive case: list = Cons(h, t)
      // LHS = Append(rev1(Cons(h, t)), acc)
      //     = Append(Append(rev1(t), Cons(h, Nil)), acc)
      //     = Append(rev1(t), Append(Cons(h, Nil), acc))   (by Append_assoc)
      // RHS = rev2(Cons(h, t), acc)
      //     = rev2(t, Cons(h, acc))
      // By IH: Append(rev1(t), Cons(h, acc)) == rev2(t, Cons(h, acc))
      // Therefore equality holds.
      append_assoc(rev1(t), Cons(h, Nil), acc);
      rev1_rev2_aux(t, Cons(h, acc));
}

// ---------------------------------------------------------
// Part (d): Lemma rev1_rev2
// ---------------------------------------------------------

lemma rev1_rev2(list: List<int>)
  ensures rev1(list) == rev2(list, Nil)
{
  // Specialise the auxiliary lemma with acc = Nil.
  // It says: Append(rev1(list), Nil) == rev2(list, Nil).
  rev1_rev2_aux(list, Nil);

  // Finally, use Append_nil to simplify Append(rev1(list), Nil) == rev1(list).
  Append_nil(rev1(list));
}
