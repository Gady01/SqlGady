<?php 

try {
	
$conexion = new PDO('mysql:host=localhost;dbname=maestria','root','gady');
$statement = $conexion->prepare('SELECT * FROM usuario');
$statement -> execute();

$resultados = $statement->fetchAll();
foreach ($resultados as $usuario ) {
	echo $usuario ['nombre'].'<br>';
}





} catch (PDOException $e) {
	echo "Error: " . $e->getMessage();
}

//http://localhost/ugm/practica02.php?id=1

 ?>