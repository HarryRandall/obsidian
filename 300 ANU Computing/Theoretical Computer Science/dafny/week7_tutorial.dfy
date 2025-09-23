datatype Tree = Emp | Node (left_node: Tree, i_main_node: int, right_node: Tree)

function is_in (i_main_node: int, tree: Tree): bool {
    match tree {
        case Emp => false
        case Node (left_node, j, right_node) => i_main_node == j ||
            is_in(i_main_node, left_node) || is_in (i_main_node, right_node)
    }
}

// passing in some integer 'i' and we want to see if it's in the Tree passed in.
// if the list is empty, then it's not going to be in the list, so we return false
// else

// if the current node in the tree is that integer i, then we return true
// if not, we recurse through the left side of the tree, with the new node
// if the current node is null, then that ends.
// we do the same on the right side, and we can find if something is
// in the tree.



function lookup (target: int, tree: Tree) : bool {
    match tree {
        case Emp => false
        case Node (left_node, i_main_node, right_node) => 
        (i_main_node == target) ||
        (target < i_main_node && lookup(target,left_node)) || 
        (target > i_main_node && lookup(target,right_node))
    }
}

// Same as the above function, just doing it a different way.
// function takes in an int 'j' and a tree 't'
// the difference is how we go down the lists.
// it's very similar, this is just more efficient,
// as it only goes down the paths that is has to.

// I.E., if the target is 17, instead of going through all of the
// of the rows, it will just go through the right side,
// and it will find it in like 3 iterators, as opposed to 10.
//               14
//          /          \
//        6            18
//      /   \        /     \
//   3       nil   17       22
// 


// Binary Search Tree
ghost predicate is_binary_search_tree (tree: Tree) {
    match tree {
        case Emp => true
        case Node (left_node, i_main_node, right_node) => 
        // we are checking if the values are less than the 
        // main node as this is a quality of 
        (forall target: int :: is_in (target, left_node) ==> 
            target < i_main_node) &&
        (forall target: int :: is_in (target, right_node) ==> 
            target > i_main_node) && 
        is_binary_search_tree(left_node) && is_binary_search_tree(right_node)
    }
}
// Returns either true or false.
// A binary search tree is simply a data structure that follows these rules:
// The left and side and the right hand side are balanced (+ - 1)
// otherwise, you should reshape
//                      07                     
//                      /\                      this is an example of a binary search tree.
//                     /  \                     it's used for optimising lookup times.
//                    /    \                    there are a couple of things we have to check.
//                   /      \                  1. if the nodes L and R are greater than the
//                  /        \                  child nodes. This should not be the case.
//                 /          \                2. If the parents node is longer than the
//                /            \                r or l subtree
//               /              \              3. If there are any duplicate values.
//              /                \             
//             /                  \            
//            /                    \           
//          03                      11         
//          /\                      /\         
//         /  \                    /  \        
//        /    \                  /    \       
//       /      \                /      \      
//      /        \              /        \     
//    01          05          09          13   
//    /\          /\          /\          /\   
//   /  \        /  \        /  \        /  \  
// 00    02    04    06    08    10    12    14


// Exercise 1
// Formulate a lemma is in lookup that states that – for a binary search tree – the lookup function 
// delivers the same result as is in (Dafny proves this automatically.) Give a proof of the statement 
// by hand, stating clearly what you proved, the inductive hypothesis, the base case and the step case.
// Now consider the function insert and the lemma insert bst.


lemma is_in_lookup(tree: Tree, target: int)
    requires is_binary_search_tree(tree)
    ensures (is_in(target, tree)) == (lookup(target, tree)){
    }


lemma insert_bst (j: int, t: Tree)
requires is_binary_search_tree (t)
ensures lookup(j, t) == is_in(j, t){

}
/* Proof by hand:
We show that all t: T that are binary search trees satisfy
lookup(j, t) == is_in(j, t) for all j: int.

More formally, we are proving the following statement by
induction on trees:
forall t: Tree (is_bst(t) ==> forall j: int (is_in(j, t) == lookup(j, t)).

Base case: t = empty. In that case lookup(j, t) and is_in (j, t)
both yield false for any j: int.

Inductive Hypothesis: For given binary search trees l and r,
the functions lookup and is_in agree for all j: int.

Inductive step: We show that for all i: int, the functions lookup
and is_in agree on Node(l, i, r) if the latter is a binary search
tree.

So assume that Node(l, i, r) is a binary search tree, and let j
be given.

    Case 1: i == j. Then both functions return ’true’.

    Case 2: j < i. As t is a binary search tree, we have that all
    elements of the right subtree are greater than i, hence is_in(j,
    r) will return false, so that is_in(j, t) will evalulate to
    is_in(j, l). On the other hand, the function lookup will evaluate
    to (i == j) || (j<i && lookup(j,l)) || (j>i && lookup(j,r).
    Given that we have assumed that j < i, this evaluates to
    lookup(i, l).

As Node (l, i, r) is a binary search tree, we have by definition
that both l and r are binary search trees, as well and we may
conclude by the inductive hypothesis that lookup(i, l) and
is_in(i, j) evaluate to the same value, as required.

Case 2: i < j: this is analogous to the case above, with the
roles of left / right subtree interchanged.
*/



// Exercise 2 Insertion – Elements
// Formulate two lemmas, insert is in and insert only in that assert that both j and 
// every element i of a tree t are elements of insert(j, t), and that every element of 
// insert (j, t) is of this form. Dafny should prove these lemmas automatically. As in 
// the previous Exercise, also give the proof of insert is in by hand in a comment.

function insert (j: int, t: Tree): Tree {
match t {
    case Emp => Node (Emp, j, Emp)
    case Node (l, i, r) =>
        if (j < i) then Node (insert (j, l), i, r)
        else if (j > i) then Node (l, i, insert (j, r))
        else t
    }
}

// ===============================
// ======== MA BEGINS ============
// ================================

// Exercise 4, Minium Finding:

// Due to the structure of a binary search tree, the smallest element will be stored at 
// the leftmost position. This means we can compute the minimum of a non-empty binary 
// search tree as follows:

function min (t: Tree): int
requires t != Emp {
    match t { 
        case Node (Emp, root, right) => root
        case Node (left, root, right) => min(left)
    }
}

function root_elt (t: Tree): int
    requires t != Emp {
    match t {
        case Node (left, root, right) => root
    }
}

// (a) Formulate a lemma min_in that asserts that the minimum (computed by the function min) of a 
// non-empty tree is always an element of the tree. Dafny should prove this automatically. In a 
// comment, give a proof of the statement by hand, stating clearly what you prove, the inductive 
// hypothesis, the base case and the step case

lemma min_in(t: Tree)
requires is_binary_search_tree(t)
requires t != Emp
ensures is_in(min(t), t){

} 

/*
Proof for the following:
forall t: Tree (is_binary_search_tree(t) && t != Emp => is_in(min(t), t))

Base Case:
t = node(Emp, root, right)
from the min function, 'case Node (Emp, root, right) => root'
therefore we have t = root, and root is an element of t,
thus min(t) is in t.

Inductive Hypothesis
min(l) is in l

step case:
tree = node(left, root, right), left is non-emty
by definition min(t) = min(root) as left is Emp
and a bst is sorted left to right.
from the inductive hypothesis, min(left) is in left.
Every element of left is also an element of the whole tree.
therefore min(t) is in t in all cases.
*/

// (b) Give a proof, in Dafny, of the lemma min_left that asserts that the minimum of a binary search
// tree (as computed by the function min) is always below the root node. Lemma min_in might be helpful.

lemma min_left(t: Tree)
requires t != Emp
requires is_binary_search_tree(t)
ensures min(t) <= root_elt(t){
    match t
    // Base Case where min(t) = main_node.
    // means that min(t) <= root_element(t)
        case Node(Emp, main_node, right) => 
            assert min(t) == main_node;
            assert root_elt(t) == main_node;
        // Inductive Case
        case Node(left, main_node, right) => 
            min_in(left);
            assert is_in(min(left), left);
}

// (c) Give a proof, in Dafny, of the lemma min_least that asserts the correctness of the function min. 
// The lemma min_left might be helpful.
lemma{:induction false} min_least(t: Tree)
  requires t != Emp
  requires is_binary_search_tree(t)
  ensures forall x:int :: is_in(x, t) ==> min(t) <= x
//Got stuck here, so had to go with a simple solution.
{
  match t
    // Base case where left subtree is empty.
    case Node(Emp, main_node, right_node) =>
    assert min(t) == main_node;
    assert root_elt(t) == main_node;
    assert forall x:int :: is_in(x, t) ==> min(t) <= x;
    // min(t) == main_node, so we just need to show main_node <= x.
    // Step case for a left subtree that's not empty.
    case Node(left_node, main_node, right_node) =>
      min_least(left_node);
      min_left(t);
      assert min(t) <= main_node;
      assert min(t) == min(left_node);
      assert forall x:int :: is_in(x, t) ==> min(t) <= x;
}
