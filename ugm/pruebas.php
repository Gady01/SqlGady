<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
	<title>Pruebas</title>
</head>
<body>
<?php 
include("conect.php");
error_reporting(0);
$query = "SELECT * FROM estudiantes";

$data=mysqli_query($conn, $query);

$total=mysqli_num_rows($data);


if ($total !=0)
{
 ?>

 <table class="ta">
 		<tr>
 			<th class="iu">ID</th>
 			<th class="iu">Nombre</th>
 			<th class="iu">Universidad</th>

 		</tr>

 		<?php 
 			while ($result= mysqli_fetch_assoc($data))
 			{
 				echo "<tr>
 						<td>".$result['id']."</td>
 						<td>".$result['name']."</td>
 						<td>".$result['class']."</td>

 				</tr>";
 			}
		 	}else{
		 		echo "La tabla no tiene estudiantes";
		 	}
 		
 		
 		 ?>

 </table>
</body>
</html>