<?php
$servername = "mysql.eecs.ku.edu"; 
$username = "447s24_m079o897"; 
$password = "iasai4Ei"; 
$dbname = "447s24_m079o897"; 

// create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>