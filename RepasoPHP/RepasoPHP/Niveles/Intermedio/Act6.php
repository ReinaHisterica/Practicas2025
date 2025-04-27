<?php
$cadena = "Lorem Ipsum Dolor Sit Amet o algo así.";

$palabraEnCadena = strpos($cadena, "Lorem");
if ($palabraEnCadena != '') {
    echo "Palabra encontrada en la posición $palabraEnCadena";
} else {
    echo "Palabra no encontrada.";
}

?>