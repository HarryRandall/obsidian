/* tut2-ex1-begin */
/*--------------------------------------*/
/* COMP 1600/6260 Tutorial 2 Exercise 1 */
/*--------------------------------------*/

/* (a) */

lemma Dessert(mudcake: bool, chocolate: bool, tasty: bool, raspberry: bool)
ensures (mudcake ==> tasty)
requires (chocolate ==> tasty)
requires (raspberry ==> mudcake || chocolate)
requires (mudcake ==> raspberry)
requires (mudcake ==> chocolate)
{
    if (mudcake){
        assert chocolate;
        assert tasty;
    }
}


/* tut2-ex1-end */
/* tut2-ex2-begin */

/*--------------------------------------*/
/* COMP 1600/6260 Tutorial 2 Exercise 2 */
/*--------------------------------------*/

/* (a) */

lemma Weather(winter:bool, cold:bool, snowing:bool, frost:bool)
  requires (snowing ==> winter)
  requires (!frost)
  requires (winter ==> cold)
  requires (!frost ==> !cold)
  {
    
}


/* tut2-ex2-end */
/* tut2-ex3-begin */

/*--------------------------------------*/
/* COMP 1600/6260 Tutorial 2 Exercise 3 */
/*--------------------------------------*/

/* (a) */

lemma DinnerParty()
{
}



/* tut2-ex3-end */

/* tut2-ex4-begin */
