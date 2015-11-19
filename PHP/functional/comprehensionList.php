<?php

// It can be used to construct lists in a very natural, easy way, like a mathematician is used to do. 
$out = array_map(function($x) {return $x*$x;}, range(0, 9));
print_r($out);

// Another example where it gets the first letter from the array elements.
$arr = array_map(function($el) { 
	return $el[0];
}, array('dingo', 'wombat', 'wallaby'));
print_r($arr);
