<?php
/** 
 * This kind of function declaration allows to pass as many parameters as we want
 * In PHP this is known as scalar type functions, an aproximation to the partials functions 
**/
// Coercive mode
function sumOfInts(int ...$ints) {
    return array_sum($ints);
}

var_dump(sumOfInts(2, '3', 4.1, 20));
