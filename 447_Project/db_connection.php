<?php
$servername = "mysql.eecs.ku.edu"; // Change this to your MySQL server hostname
$username = "447s24_m079o897"; // Change this to your MySQL username
$password = "iasai4Ei"; // Change this to your MySQL password
$dbname = "447s24_m079o897"; // Change this to your MySQL database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>