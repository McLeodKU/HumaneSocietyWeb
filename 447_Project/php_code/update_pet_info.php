<?php
session_start();
if (!isset($_SESSION['number'])) {
    header('Location: login.php'); 
    exit();
}
include 'db_connection.php';

// Check if the form data is posted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $microchipNum = $_POST['microchipNum'] ?? '';
    $name = $_POST['name'] ?? '';
    $weight = $_POST['weight'] ?? 0;  // collect weight as an integer from form
    $locationnumber = $_POST['locationnumber'] ?? ''; // collect location number from form
    $sql = "UPDATE ANIMAL SET NAME = ?, WEIGHT = ?, LOCATIONNUMBER = ? WHERE MICROCHIPNUM = ?";  // Update the pet information in the database
    
    
    if ($stmt = $conn->prepare($sql)) { // prepare the statement to prevent SQL injection
        $stmt->bind_param("sisi", $name, $weight, $locationnumber, $microchipNum); // bind the variables to the prepared statement as parameters
        if ($stmt->execute()) { // attempt to execute the prepared statement
            header("Location: ../html_pages/edit_pet_info.html?status=success&microchipNum=$microchipNum");// redirect back to the edit_pet_info.php with a success message
            exit();
        } else {
            echo "Error updating record: " . $conn->error;
        }        
        $stmt->close();
    } else {
        echo "Error preparing statement: " . $conn->error;
    }
    $conn->close();
} else {
    echo "No data submitted";
}
?>
