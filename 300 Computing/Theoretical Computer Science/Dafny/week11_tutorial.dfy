/* tut11-ex1-begin */
/*---------------------------------------*/
/* COMP 1600/6260 Tutorial 11 Exercise 1 */
/*---------------------------------------*/


method strange (a: int, b: int, c: int )  
decreases * {
    var x, y, z := a, b, c;
    while x > 0 && y > 0 && z > 0
    decreases  *
    {
        if y > x {
            y := z ;
            x := *;
            z := x - 1;
        } else {
            z := z - 1;
            x := *; y := x - 1;
        }
    }
}
/* tut11-ex1-end */

/* tut11-ex2-begin */
/*---------------------------------------*/
/* COMP 1600/6260 Tutorial 11 Exercise 2 */
/*---------------------------------------*/

method slow_add (a: nat, b: nat) returns (s: nat)
decreases *
{
    var x, y:= a, b;
    s := 0;
    while x > 0 || y > 0
    decreases *  {
        if x > 0 {
            x := x - 1;
        } else {
            y := y - 1;
        }
        s := s + 1;
    }
}
/* tut11-ex2-end */

/* tut11-ex3-begin */
/*---------------------------------------*/
/* COMP 1600/6260 Tutorial 11 Exercise 3 */
/*---------------------------------------*/

datatype tree = nul | node(l: tree, i: int, r: tree)

method nnodes(t: tree) returns (cnt: nat)
decreases * {
    cnt := 0;
    var stack := [t];
    while (stack != [])
    decreases  *  {
        var hd := stack[0];
        stack := stack[1..];
        match hd {
            case nul => cnt := cnt + 0;
            case node(l, i, r) =>
                stack := [l, r] + stack;
                cnt := cnt + 1;

        }
    }
}   
/* tut11-ex3-end */

/* tut11-ex4-begin */
// Mini Assignment (4 marks)
/*---------------------------------------*/
/* COMP 1600/6260 Tutorial 11 Exercise 4 */

// Solution already provided in answers - see thread here 
// https://edstem.org/au/courses/25939/discussion/3016457?comment=6640099

/* One termination measure is the length of the list x. This */
/* decreases, as the loop body assigns x to be the tail of x */
/* and it can only decrease finitely many times as the length */
/* is a natural number. */

datatype List = nil | cons(h: int, t: List)


method rev(l: List) returns (r: List)
decreases *
{
    r := nil;
    var x := l;
    while (x != nil)
    // Simple decreases clause.
    decreases x  {
        match x
            case nil => { }
            case cons(h, t) =>
            r := cons(h, r);
            x := t;
  }
}


/* tut11-ex4-end */

/* tut11-ex5-begin */
/*---------------------------------------*/
/* COMP 1600/6260 Tutorial 11 Exercise 5 */
/*---------------------------------------*/

ghost predicate srtd (a: seq<int>) {
    forall i :: forall j :: 0 <= i < j < |a| ==> a[i] <= a[j]
}

function ddist (i: int, j: int) : nat {
    if i < j then j - i else i - j
}

function min(i: int, j: int) : int {
    if (i < j) then i else j
}


/* the thing to note here to prove the ensures clause is that for */
/* the last invariant, only one of i0 or j0 needs to be 'in range' */
/* that is, below i or j, respectively. This is because both  */
/* sequences are ordered. */
method cs(a:seq<int>, b:seq<int>) returns (d:nat)
requires |a| > 0 &&  |b| > 0 && srtd(a) && srtd(b)
//ensures exists i, j :: 0 <= i < |a| &&   0 <= j < |b| && d == ddist(a[i], b[j])
//ensures forall i, j :: 0 <= i < |a| &&    0 <= j < |b| ==> d <= ddist(a[i], b[j])
decreases *
{   var i, j := 0, 0;
    d := ddist(a[0], b[0]);
    while i < |a| && j < |b|
    decreases *
    {
        d := min(d, ddist(a[i], b[j]));
        if  (a[i] <= b[j]) { i  := i + 1; } 
        else { j:= j + 1; }
  }
}

/* tut11-ex5-end */

/* tut11-ex6-begin */
// Mini Assignment (6 marks)
/*---------------------------------------*/
/* COMP 1600/6260 Tutorial 11 Exercise 5 */
/*---------------------------------------*/

/* returns true iff both sequences have an element in common   */
method cp (a: seq<int>, b: seq<int>) returns (r: bool)
requires |a| > 0   && |b| > 0
requires srtd(a) &&  srtd(b)
ensures (exists i, j :: 0 <= i < |a| && 0 <= j < |b| && a[i] == b[j]) <==> r
decreases |a| + |b|
{   
    // Basically pointers at the start of both lists.
    var i, j := 0, 0;
    // Use R to denote if the first items match
    r := a[0] == b[0];
    // Enter while loop, while there are still elements to itterate over.
    while i < |a| && j < |b|
    // the variable previoously denoted is true if and only if we have found a match || a match exists in the remaining elements.
    invariant (exists i_2, j_2 :: 0 <= i_2 < |a| && 0 <= j_2 < |b| && a[i_2] == b[j_2]) <==> r || exists i_2, j_2 :: i <= i_2 < |a| && j <= j_2 < |b| && a[i_2] == b[j_2]
    // The sum of remaining items in the lists decreases through each iteration
    // Similar to the while loop, just doing the opposite.
    decreases |a| - i + |b| - j
    {
        // We update the result if the current elements match.
        r := r ||  (a[i] == b[j]);
        if  (a[i] <= b[j]) { i  := i + 1; } 
        else { j:= j + 1; }
        
    }
}
