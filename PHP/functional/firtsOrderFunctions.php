<?php
// Simple variable that stores a function to return if the number is even
$even = function($number) {
        return ($number % 2) ? null : $number;
};

echo "Using first class functions the result is: " . $even(12) . "\n";


// Of course the prev example can be done imperative with a function as follows:

function even($number) {
        return ($number % 2) ? null : $number;
}

echo "Using a function the result is: " . even(12);
