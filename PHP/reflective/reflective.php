<?php
/**
 * Example of the refletive paradigm of PHP
 *
 * Reflective: "In computer science, reflection is the ability of a computer program to examine (see type introspection) 
 * and modify its own structure and behavior (specifically the values, meta-data, properties and functions) at runtime"
 */

// Example class Foo
class Foo {
    public function hello() {
        echo "Hello from foo fighters\n";
    }
}

class Fighters {
    public function bye() {
        echo "Hasta la vista baby\n";
    }
    public function hero() {
        echo "There goes my heroe!!\n";
    }
}

// without reflection
$foo = new Foo();
$foo->hello();

// getProperties
// with reflection
$reflector = new ReflectionClass('Fighters');
$foo = $reflector->newInstance();
$foo->bye();
$hello = $reflector->getMethod('hero');
$hello->invoke($foo);

// using callback
$foo = new Foo();
call_user_func(array($foo, 'hello'));

// using variable variables syntax
$className = 'Foo';
$foo = new $className();
$method = 'hello';
$foo->$method();

?>
