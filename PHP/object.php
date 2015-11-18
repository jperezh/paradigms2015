<?php

class Course {
    var $name;
    var $teacher;
    var $code;

    public function __construct($name, $teacher, $code) {
        $this->name    = $name;
        $this->teacher = $teacher;
        $this->code    = $code;
    }

    public function getTeacher() {
        return $this->teacher;
    }
    
    public function replaceTeacher($newTeacher) {
        $this->teacher = $newTeacher;
    }

    public function getDepartment() {
        switch($this->code) {
            case "ST666":
                return "System!!\n";
                break;           
    
        }
    }

}

class Person {
    var $name;
    var $age;

    public function isAlive() {
        if ($age < 0 || $age > 100) {
            echo "My condolences";
        }
    }

}




$teacherParadigms = 'Pacho';
$paradigms = new Course("Paradigms", $teacherParadigms, "ST666");

echo "The teacher is: " . $paradigms->getTeacher() . "\n";
echo "The department is: " . $paradigms->getDepartment();


?>
