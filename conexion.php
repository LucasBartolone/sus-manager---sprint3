<?php
$host="localhost";
$usuario="root";
$clave="70150";
$basededatos="sus_manager";

$conn = new mysqli($host, $usuario, $clave, $basededatos);
    mysqli_query($conn , "SET character_set_result=utf8");
    if($conn->connect_error){
        die("Database Error : " . $conn->connect_error);
    }
?>