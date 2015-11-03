<?php
/**
 * Functional paradigm made on php
 *
 * NOTES:
 * A function needs to be immutable, which means it needs to be 'constant'
 *
 */

///////////////// Example of lambda functions //////////////////////////
$square = function ($arg) {
    return $arg * $arg;
};
$value = $square(5);
echo "The square root of 5 is: " . $value . "\n";

///////////////// Example of lambda with closure //////////////////////
// Ver con objetos
$rate = .12;

$findInterest = function ($value) use ($rate) {
    return $value * $rate;
};
$interest = $findInterest(100);

echo "The interest is: " . $interest . "\n";

///////////////// Example of partial Functions //////////////////////
// See if this has more default behavior (newer PHP version)

$volume = function ($length = 0, $width = 0, $height = 0) use (&$volume) {
    $args = func_get_args();
    $numArgs = func_num_args();
    if ($numArgs == 3) {
        return $length * $width * $height;
    }
    else if ($numArgs < 3) {
        return function() use(&$volume, $args) {
            $newArgs = array_merge($args, func_get_args());
             return call_user_func_array($volume, $newArgs);
         };
    }
    else {
        throw new BadFunctionCallException("Too many arguments");
    }
};
$standardVolume = $volume(array('depth' => 5));
echo "Volume is: " . $volume(5, 5, 5) . "\n";
echo "The standardVolume is: " . $standardVolume(5, 5) . "\n";

// Ending of the program
echo "\n";
?>
