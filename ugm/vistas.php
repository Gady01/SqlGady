<?php 
include("conect.php");
error_reporting(0);
$query = "SELECT * FROM estudiantes";

$data=mysqli_query($conn, $query);

$total=mysqli_num_rows($data);


if ($total !=0)
{
 ?>

 <!DOCTYPE html>
 <html>
 <head>
 	<meta charset="utf-8">
 	<title>Vistas</title>
 	<link rel="stylesheet" type="text/css" href="tabla.css">
 </head>
 <body>
 	<div id="contenedor">
		<table>
			<thead>
 				<tr>
 					<th>ID</th>
 					<th>Nombre</th>
 					<th>Universidad</th>

 				</tr>
 			</thead>

 			<?php 
 				while ($result= mysqli_fetch_assoc($data))
 				{
 				echo "<tr>
 						<td>".$result['id']."</td>
 						<td>".$result['name']."</td>
 						<td>".$result['class']."</td>

 						</tr>";
 						}
		 			}	
		 		else{
		 			echo "La tabla no tiene estudiantes";
		 			}
 		
 		
 		 	?>

		</table>

 	</div>

 </body>
 </html>