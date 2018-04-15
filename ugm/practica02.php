<?php 
$id = $_GET['id'];
try {
	
$conexion = new PDO('mysql:host=localhost;dbname=maestria','root','gady');
$statement = $conexion->prepare('SELECT * FROM usuario where id = :id');
$statement -> execute(array(':id' => $id));

$resultados = $statement->fetch();

print_r($resultados);




} catch (PDOException $e) {
	echo "Error: " . $e->getMessage();
}



 ?>