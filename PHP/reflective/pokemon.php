<?php

/**
 * Simple example to show two basic PHP reflective methods
 * get_class and get_class_methods
 */

class Pokemon {
    public  $name;
}

class Electricity extends Pokemon {
    public  $type  = "Electricity";
    public $color = "Yellow"; 

    // Attacks
    public function thunder() {
    
    }
}

class Pikachu extends Electricity{
    public $owner;

    public function __contruct($owner) {
    $this->owner = $owner;
    }

    // Attacks
    public function tailWhip() {
    }

    private function seduce(){}
}

$pikachu = new Pikachu("Ash");

var_dump(get_class($pikachu));

var_dump(get_class_methods($pikachu));

