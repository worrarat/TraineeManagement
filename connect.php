<?php
$servername = "localhost";
$username = "admin";
$password = "trainee@521";

//Create connection
$conn = new mysqli($servername, $username, $password);

//Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
echo "Connected successfully".'</br>';
?>