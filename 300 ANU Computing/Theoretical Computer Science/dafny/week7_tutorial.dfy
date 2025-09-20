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
ghost predicate is_bst (tree: Tree) {
    match tree {
        case Emp => true
        case Node (left_node, i_main_node, right_node) => 
        // we are checking if the values are less than the 
        // main node as this is a quality of 
        (forall target: int :: is_in (target, left_node) ==> 
            target < i_main_node) &&
        (forall target: int :: is_in (target, right_node) ==> 
            target > i_main_node) && 
        is_bst(left_node) && is_bst(right_node)
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


lemma {:induction false} is_in_lookup(tree: Tree, target: int)
    requires is_bst(tree)
    ensures (is_in(target, tree)) == (is_in(target, tree)){
        // match tree{
        //     case Emp => 
        //     case Node (left_node, i_main_node, right_node) =>  
        // }
    }



// Given functions
function insert (j: int, t: Tree): Tree {
    match t { case Emp => Node (Emp, j, Emp)
        case Node (l, i, r) =>
        if (j < i) then Node (insert (j, l), i, r)
        else if (j > i) then Node (l, i, insert (j, r)) else t
    }
}

lemma insert_bst (j: int, t: Tree)
requires is_bst (t)
ensures is_bst (insert (j, t))


// Exercise 2 Insertion – Elements
// Formulate two lemmas, insert is in and insert only in that assert that both j and 
// every element i of a tree t are elements of insert(j, t), and that every element of 
// insert (j, t) is of this form. Dafny should prove these lemmas automatically. As in 
// the previous Exercise, also give the proof of insert is in by hand in a comment.