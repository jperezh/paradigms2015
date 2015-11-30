<?php

$gender   = "girl";
$favcolor = "red";
$sport    = "racing";
if ($gender == "boy") {
    switch ($sport) {
      case "racing":
        echo "Your favorite sport is racing!";
        break;
      case "soccer":
        echo "Your favorite sport is soccer!";
        break;
      default:
        echo "Your favorite sport is neither racing nor soccer!";
    }
} else if ($gender == "girl") {
    switch ($favcolor) {
      case "red":
        echo "Your favorite color is red!";
        break;
      case "blue":
        echo "Your favorite color is blue!";
        break;
      default:
        echo "Your favorite color is neither red nor blue!";
    }
}
?>
