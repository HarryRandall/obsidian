function hanoi1 (n: nat) : nat {
    if (n == 0) then 0
    else 1 + 2 * hanoi1 (n-1)
}

function hanoi2 (n: nat, a: nat): nat {
    if (n == 0) then a
    else hanoi2 (n-1, 2 * a + 1)
}


lemma hanoi (n: nat, a: nat)
ensures hanoi2(n, a) == hanoi1(n) + a * (hanoi1(n) + 1)
{ }

lemma hanoi12 (n: nat)
ensures hanoi1(n) == hanoi2(n, 0)
{ 
  calc {
    hanoi2(n, 0) ;
   == { hanoi(n,0); }  hanoi1(n) + 0 * (hanoi1(n) + 1); 
    == hanoi1(n);
  }
 }

/* list functions */
datatype List<T> = Nil | Cons(head: T, tail: List<T>)

function Length<T>(xs: List<T>):nat {
  match xs
  case Nil => 0
  case Cons(_,tail) => 1 + Length(tail)
}

function Map<T>(f: T -> T,xs: List<T>):List<T>{
  match xs
  case Nil => Nil
  case Cons(x,tail) => Cons(f(x),Map(f,tail))
}

/* map / length lemma */

lemma {:induction false} MapLength<T>(f:T -> T, xs:List<T>)
  ensures Length(Map(f,xs)) == Length(xs)
  { 
    match xs
      case Nil => { }
      case Cons(k, ks) => { MapLength(f, ks); }
  }



// This function takes two lists and returns a single list made
// by putting ys directly after xs
// If the first xs list is nil, then the result is ys.
// If the first list is non-empty (cons(x, tail)), then take the head
// element x, keep it at the front, and then recurisvely
// append the rest of the tail with ys.

// E.g append([1,2], [3,4])
// Cons(1, Append(2, Append([], [3,4])))
// Cons(1, Cons(2, [3,4]))
// Result is [1,2,3,4]

function Append<T>(xs:List<T>, ys:List<T>): List<T>{
//  ensures Length(Append(xs,ys)) == Length(xs) + Length(ys){
   match xs
   case Nil => ys
   case Cons(x,tail) => Cons(x,Append(tail,ys))
}

lemma AppendLength<T>(xs:List<T>,ys:List<T>)
  ensures Length(Append(xs,ys)) == Length(xs) + Length(ys){

}

lemma  {:induction false} AppendMap<T>(xs:List<T>, ys:List<T>, f:T->T)
  ensures Map(f,Append(xs,ys)) == Append(Map(f,xs),Map(f,ys))
{ 
    match xs
      case Nil => { }
      case Cons(k, ks) => {
        calc {
          Append(Map(f, xs), Map(f, ys));
          == Append(Map(f, Cons(k, ks)), Map(f, ys));
          == Append(Cons(f(k), Map(f, ks)), Map(f, ys));
          == Cons(f(k), Append(Map(f, ks), Map(f, ys)));
          == { AppendMap(ks, ys, f); } Cons(f(k), Map(f, Append(ks, ys)));
        }
      }
}


// Takes in a list of type T
// Duplicates every ement in order
// [a,b,c] = [a,a,b,b,c,c]
// Empty list stays empty. Single
// element [x] becomes [x,x]
function DupAll<T>(xs: List<T>): List<T> {
    match xs { 
      case Nil => Nil
      case Cons(x,tail) => Cons(x,Cons(x,DupAll(tail))) 
    }
}


// Lemma, sticking an element x onto the front of some list
// l on the right of an append, so increases the list
// by exactly one.
lemma  append_cons<T>(k: List<T>, x: T, l: List<T>)
ensures Length(Append(k, Cons(x, l))) == 1 + Length(Append(k, l))
{ }

lemma  DupAppend<T>(l:List<T>)
ensures Length(Append(l,l)) == Length(DupAll(l)) 
{

}

/* summation functions */

function sum1 (l: List<int>): int {
    match l { case Nil => 0
              case Cons(h, t) => h + sum1(t)
    }
}

function sum2(l: List<int>, a: int) : int {
    match l {case Nil => a
             case Cons(h, t) => sum2(t, a + h)
    }
}

lemma sum_aux(l: List<int>, a: int)
ensures sum2(l, a) == a + sum1(l)
{ }

lemma sum12 (l: List<int>)
ensures sum1(l) == sum2(l, 0) 
{  sum_aux(l, 0); }

/* list reversal functions */

function rev (l: List<int>, a: List<int>): List<int> {
    match l
        case Nil => a
        case Cons(h, t) => rev(t, Cons(h, a))
}

function rev1 (l: List<int>) : List<int> { rev(l, Nil) }

/* wishful thinking: derive a relationship for general arguments 

want: rev1(rev1(l)) == l
i.e.: rev(rev(l, Nil), Nil) == l

in general: rev(l, c) = reverse(l) ++ c where 'reverse' just reverses a list.
consider rev(rev(l, a), b) == reverse(rev(l, a)) ++ b == reverse(reversal(l) ++ a) ++ b
== reverse(a) ++ reverse(reverse(l)) ++ b == reverse(a) ++ l ++ b == rev(a, Append(l, b))
*/

lemma rev_rev(l: List<int>, a: List<int>, b: List<int>)
ensures rev(rev(l, a), b) == rev(a, Append(l, b))
{ }

lemma append_nil(l: List<int>)
ensures Append(l, Nil) == l
{ }

lemma rev1_rev1(l: List<int>)
ensures rev1(rev1(l)) == l
{ 
  calc{
    rev1(rev1(l)); 
    == rev(rev(l, Nil), Nil);
    == { rev_rev(l, Nil, Nil); } rev(Nil, Append(l, Nil));
    == Append(l, Nil);
    == { append_nil(l); } l;
  }
}



function rev0(l: List<int>) : List<int> {
    match l
        case Nil => Nil
        case Cons(h, t) => Append (rev0(t), Cons(h, Nil))
}

/* do this yourself :-) 
lemma rev0_rev1 (l: List<int>)
ensures rev0(l) == rev1(l)
 {   }
*/







/*
Inter: Takes in a value N, a list L, and returns a list.
The match statement is splitting out the shape of the list
Case Nil = If the list is empty, the result is just empty.
Case cons(h, nil) = if the list has exactly one element h, then
just [h], no need to do anthing fancy with n.
Case cons(h, t) = if the last has a head h and a non-empty tail t
then the result is [h n] followed by recursively interpassing
n into the tail.


It inserts the given number n between every two elements of the input list.

So if you call:
inter(0, [1,2,3]) you’ll get [1,0,2,0,3].
inter(5, [9]) you’ll get [9].
inter(7, []) you’ll get [].

Show that for all l, length(inter(n, l)) >= length(l)
\*