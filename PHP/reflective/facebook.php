<?php namespace Facebook\Entities;
 
class UUID {}
abstract class Entity {}
interface Friendable {}
interface Likeable {}
interface Postable {}
 
class User extends Entity implements Friendable, Likeable, Postable {
    public function __construct($name, UUID $uuid){}
        
    public function like(Likebable $entity){}
    
    public function friend(User $user){}
    
    public function post(Post $post){}
    
    private function deleteFriend(User $annoyingUser){}
}
 
$reflection = new \ReflectionClass(new User('Philip Brown', new UUID(1234)));


echo "Name: " . $reflection->getName();
echo "\n";

echo "Short Name: " . $reflection->getShortName();
echo "\n";

echo "Namespace: " . $reflection->getNamespaceName();
echo "\n";

$methods = $reflection->getMethods();
var_dump($methods);
echo "\n";
    
    $parent = $reflection->getParentClass();
echo "Parent name: " . $parent->getName();
echo "\n";
