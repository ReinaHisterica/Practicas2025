<?php
// echo "Hola";

$prueba = "Good afternoon";

// Para ver la longitud de un string, se usa strlen($variable);
echo strlen($prueba) . "<br>";

// Para convertir un string a mayúsculas, se usa strtoupper($variable).
echo strtoupper($prueba) . "<br>";

// Convertir a minúsculas
echo strtolower($prueba) . "<br>";

// Revertir un string: strrev($variable).
echo strrev($prueba) . "<br>";

// Para extraer un trozo de un string: substr($variable, inicio, longitud).
echo substr($prueba, 2, 6) . "<br>";

// Reemplazar texto en una cadena
echo str_replace("afternoon", "morning", $prueba) . "<br>";

// Buscar posición de una palabra en la cadena
echo strpos($prueba, "Good") . "<br>";

// var_dump nos devuelve el tipo de una variable y su contenido.
echo var_dump($prueba) . "<br>";

// Ver el valor máximo soportado por PHP.
echo PHP_INT_MAX . "<br>";

// Podemos comprobar si un valor es int con: is_int($variable), is_integer($variable) o is_long($variable);
if (is_int($prueba)) {
    echo "Es int" . "<br>";
} else {
    echo "No es int" . "<br>";
}

// ⚠🚨 Usar is_nan SOLO PARA OPERACIONES MATEMÁTICAS, NO PARA COMPROBAR SI UN VALOR ES UN NÚMERO O NO ⚠🚨
// echo is_nan($prueba);

echo "<br>";

// ==========================
// 🔹 1. Manipulación de Números
// ==========================

$num = 3.75;

// Redondear al entero más cercano
echo round($num) . "<br>"; // 4

// Redondear hacia arriba
echo ceil($num) . "<br>"; // 4

// Redondear hacia abajo
echo floor($num) . "<br>"; // 3

// Valor absoluto
echo abs(-15) . "<br>"; // 15

// Número aleatorio entre 1 y 100
echo rand(1, 100) . "<br>";

echo "<br>";

// ==========================
// 🔹 2. Manejo de Arrays
// ==========================

$colores = ["rojo", "azul", "verde"];

// Contar elementos del array
echo count($colores) . "<br>";

// Agregar un elemento al final
array_push($colores, "amarillo");
print_r($colores);
echo "<br>";

// Eliminar el último elemento
array_pop($colores);
print_r($colores);
echo "<br>";

// Eliminar el primer elemento
array_shift($colores);
print_r($colores);
echo "<br>";

// Agregar un elemento al inicio
array_unshift($colores, "negro");
print_r($colores);
echo "<br>";

// Verificar si un valor está en el array
echo in_array("azul", $colores) ? "Sí<br>" : "No<br>";

echo "<br>";

// ==========================
// 🔹 3. Fechas y Hora
// ==========================

// Obtener la fecha actual en formato Año-Mes-Día
echo date("Y-m-d") . "<br>"; // Ejemplo: 2025-03-22

// Obtener la marca de tiempo actual (timestamp)
echo time() . "<br>";

// Convertir una fecha en timestamp
echo strtotime("2025-01-01") . "<br>";

echo "<br>";

// ==========================
// 🔹 4. Funciones para Formularios y Seguridad
// ==========================

$usuario = "<script>alert('Hackeado!')</script>";

// Escapar caracteres especiales para evitar ataques XSS
echo htmlspecialchars($usuario) . "<br>"; // No ejecutará el script

// Eliminar espacios en blanco al inicio y final de una cadena
$cadena = "   Hola PHP!   ";
echo trim($cadena) . "<br>"; // "Hola PHP!"

// Verificar si una variable está definida
$nombre = "Virginia";
echo isset($nombre) ? "Variable definida<br>" : "No definida<br>";

// Verificar si una variable está vacía
$variable_vacia = "";
echo empty($variable_vacia) ? "Está vacía<br>" : "No está vacía<br>";

echo "<br>";

// ==========================
// 🔹 5. Archivos
// ==========================

$archivo = "prueba.txt";
$contenido = "Hola, PHP!";

// Escribir en un archivo
file_put_contents($archivo, $contenido);

// Leer el contenido del archivo
echo file_get_contents($archivo) . "<br>"; // "Hola, PHP!"

?>
