<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <title>Registro - Conexion BD</title>
</head>
<body>
<?php

$nombre = $_POST["nombre"];
$apellido = $_POST["apellido"];
$email = $_POST["email"];
$telefono = $_POST["telefono"];
$fechaNacimiento = $_POST["fechaNacimiento"];
$nombreUsuario = $_POST["nombreUsuario"];
$contraseña = $_POST["contraseña"];

/*print "  <p>Su Usuario es <strong>$usuarioF</strong>.</p>\n";
print "\n";
print "  <p>Su nombre es <strong>$nombre</strong>.</p>\n";
print "\n";
print "  <p>Su apellido es <strong>$apellido</strong> .</p>\n";
print "\n";
print "  <p>Su mail es <strong>$direccion</strong>.</p>\n";
print "\n";*/

// Incluimos los datos de conexión y las funciones:
include("conexion.php");
$con = mysqli_connect($host,$usuario,$clave,$basededatos) or die ("No se ha podido conectar al servidor de Base de datos");
if (!$con) {
    die("Conexión fallida: " . mysqli_connect_error());
}



$db = mysqli_select_db($con, $basededatos) or die ( "Upps! no se ha podido conectar a la base de datos" );
$consulta = "INSERT INTO Usuario (nombre, apellido, email, telefono, fecha_nacimiento) VALUES ('$nombre', '$apellido', '$email', '$telefono', '$fechaNacimiento')";
$consulta = "INSERT INTO perfil (nombreUsuario, contraseña) VALUES ('$nombreUsuario', '$contraseña')";

// Usamos esas variables:
if (mysqli_query ($con, $consulta)){
    echo "<h3>Registro agregado.</h3>";
    } else {
    echo "<h3>No se agregó nuevo registro</h3>";
    echo "Error: " . $consulta . "<br>" . mysqli_error($con);
 }
 mysqli_close($con);


?>
</body>
</html>