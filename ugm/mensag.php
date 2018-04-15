<?php 


include("conect.php");
$query = "INSERT INTO estudiantes values ('1','angelica','UGM-MINA')";
$datos =mysqli_query($conn, $query);

if($datos){
	echo " Datos ingresados en la base de datos";
}else{
	echo " Datos repetidos !!";
}
 ?>