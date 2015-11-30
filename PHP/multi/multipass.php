<?php
/**
 * Multiparadigms
 */

echo "Welcome to the multiparadigms PHP\n";

description(date("G"));

function description($hour) {
    $daytime = (intval($hour) > 12 ? "Evening" : "Morning");
    echo "Have a good " . $daytime . ", this will present a simple multiparadigm example\n"; 

}


// Some simple object oriented code
abstract class Person {
    public  $name;
    private $father;
    
    public function _setFather() {}
}

class Man extends Person {

    public function __construct($name) {
        $this->name = $name; 
    }

    public function setFather(Person $father) {
        if($father == "god") {
            echo "YISUS CRIST";
            $this->father = $father;
        } else {
            $this->father = $father;
        }
    }
} 

// Instantiate the objects
$parent = new Man("god");

$son = new Man("Yisus");
$son->setFather($parent);


echo "The father of " . $son->name . " is: " . $parent->name;

$convertWine = function($personName) {
    if($personName == "Yisus") {
        return "can";
    } else {
        return "can not";
    }
};

echo ", and he " . $convertWine("cas") . " convert water into wine\n";

// Some closures
$parentName = $parent->name;
$moonwalk = function ($name) use ($parentName) {
    if ($name == "Yisus" && $parentName == "god") {
        return "He can also walk in the water!\n";
    }
};

echo $moonwalk($son->name);

