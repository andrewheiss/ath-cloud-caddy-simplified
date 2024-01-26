<?php
$servername = "mariadb"; // Use the service name from docker-compose as hostname
$username = "thing2_user";
$password = "thing2_password";
$dbname = "thing2_db";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
echo "Connected successfully";
?>
