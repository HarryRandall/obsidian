ghost predicate DividesByFive(x:int) {exists k: int :: x == 5 * k}

lemma addDividesFive()
  ensures forall x:int, y:int, z:int :: DividesByFive(x) && DividesByFive(y) ==> DividesByFive(x * y){
    // If X is divisible by 5, and Y is divisible by 5, then X * Y is divisible by 5.
    forall x:int, y:int, z:int ensures DividesByFive(x) && DividesByFive(y) ==> DividesByFive(x * y){
      if(DividesByFive(x)){
        var k:int  :| x == 5 * k;
        if(DividesByFive(y)){
          var z:int  :| y == 5 * z;
          assert (x * y == (5 * k) * (5 * z));
          assert (x * y == 5 * 5 * k * z);
          assert (x * y == 5 * (5 * k * z));
        } 
      }
    }
}