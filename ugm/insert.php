<?php 
include ("conect.php");
error_reporting(0);

 ?>

 <html>
	<head>
 		<meta charset="utf-8">
 		<title>Insertar datos</title>
 		
 		<link rel="stylesheet" type="text/css" href="style.css">
 	</head>
 <body>

	<form action="" method="GET">
		<fieldset>
			<legend>Bienvenidos</legend>
				<input type="text" name="id" placeholder="Id" autofocus="" required="">
				<input type="text" name="studenname" placeholder="Name" required="">
				<input type="text" name="class" placeholder="Class" required="">
				<input type="submit" name="submit" value="Guardar">


		</fieldset>
	

	</form>

<?php 

if ($_GET['submit']){
	
	$id = $_GET['id'];
	$name = $_GET['studenname'];
	$cl = $_GET['class'];

		if ($id!="" &&$name!="" && $cl!=""){
			
			$query = "INSERT INTO estudiantes VALUES ('$id','$name','$cl')";
			$datos = mysqli_query($conn, $query);

					if ($datos){
						echo "";
					}
					else{

						echo '<script language="javascript">alert("Datos no incresados, favor verifique.");</script>'; 
					}

		}

}





 ?>

 </body>
 </html>