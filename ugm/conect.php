<?php 
$servername = "localhost";
$username = "root";
$password = "gady";
$dbname = "php";


			$conn = mysqli_connect($servername,$username,$password,$dbname);

			if($conn){
				echo "";
			}else{
				echo "Error de Conexion !! ";
			}
 ?>