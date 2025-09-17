datatype Tree = Emp | Node (left_node: Tree, i_main_node: int, right_node: Tree)

function is_in (i: int, t: Tree): bool {
match t {
    case Emp => false
    case Node (left_node, j, right_node) => i == j ||
        is_in(i, left_node) || is_in (i, right_node)
} }

// passing in some integer 'i' and we want to see if it's in the Tree passed in.
// if the list is empty, then it's not going to be in the list, so we return false
// else

// if the current node in the tree is that integer i, then we return true
// if not, we recurse through the left side of the tree, with the new node
// if the current node is null, then that ends.
// we do the same on the right side, and we can find if something is
// in the tree.