datatype Tree<T> = Emp | Node(l:Tree<T>, elem: T, r: Tree<T>)

// define a predicate, returns a boolean.
// element_of_node = root.

// The type must already be defined. T(==)
predicate is_path<T(==)> (p: seq<T>, t: Tree<T>){
    match t{
        // Check if it's an empty sequence.
        // Is the P = an empty sequence.
        case Emp => p == []
        case Node(left_subtree, element_of_node, right_subtree) =>
        //  This case is for when it's not empty, not an empty sequence.
        // The size of the sequence is > 1.
            |p| > 1 && p[0] == element_of_node && (is_path<T>(p[1..], left_subtree) || is_path<T>(p[1..], right_subtree))
    }
}

lemma path_emp()
    ensures is_path<int>([], Emp){

    }

function sum(p: seq<int>): int{
    if |p| == 0 then 0
    else p[0] + sum(p[1..])
}

function path_sum(t: Tree<int>, s:int): bool{
    // we're adding up all the paths and trying to see
    // if we can add up a whole path
    match t{
        // If the path is empty, then it's false.
        case Emp => (s == 0)
        case Node(left_subtree, element_of_node, right_subtree) =>
            path_sum(left_subtree, s - element_of_node) || path_sum(right_subtree, s - element_of_node)
    }
}

lemma {:induction false}path_sum_correct(tree: Tree<int>, s:int)
    // We want to add up all of the paths and check if the sum == the value of s.
    ensures path_sum(tree, s) ==> exists path: seq<int> :: is_path(path, tree) && sum(path) == s{
        match tree{
            case Emp =>
              if(path_sum(tree, s)){
                assert s == 0;
                // If given an empty seuqnce, and the sum of this sequence
                // is 0, then
                assert is_path([], tree) && sum([]) == 0;
              }

            case Node(left_subtree, element_of_node, right_subtree) =>
                path_sum_correct(left_subtree, s - element_of_node); //IH
                path_sum_correct(right_subtree, s - element_of_node); //IH2

                if path_sum(left_subtree, s - element_of_node){
                    assert(exists pl: seq<int> :: is_path(pl, left_subtree) && sum(pl) == s - element_of_node);
                    var pl :| is_path(pl, left_subtree) && sum(pl) == s - element_of_node;
                    assert is_path(([element_of_node] + pl), tree);
                    assert sum([element_of_node] + pl) == s;

                }
                if path_sum(right_subtree, s - element_of_node){

                }
        }
    }