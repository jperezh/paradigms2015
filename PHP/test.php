<?php

$even = function($number) {
        return ($number % 2) ? null : $number;
};

echo $even(12);
