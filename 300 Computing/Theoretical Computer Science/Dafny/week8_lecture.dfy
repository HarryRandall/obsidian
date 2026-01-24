// Non-Terminating Example
// function nt(n: nat) : nat { nt(n) + 1} 


// Lecture 1 Code
datatype List<T> = Nil | Cons(head: T, tail: List<T>)

function len(l: List<int>): nat {
  match l {
    case Nil => 0
    case Cons(h, t) => 1 + len(t)
  }
}

function inc_l(l: List<int>): List<int> {
  match l {
    case Nil => Nil
    case Cons(h, t) => Cons(h + 1, inc_l(t))
  }
}

lemma len_weird(h: int, t: List<int>)
  ensures len(inc_l(t)) < len(Cons(h, t))
{ }

function weird(l: List<int>): int
decreases len(l) // need: len(inc_l(t)) < len(Cons(h,t))
{
  match l {
    case Nil => 0
    case Cons(h, t) => len_weird(h,t); // Hint to prove it
                       1 + weird(inc_l(t))
  }
}
