<?php
session_start();
// Check if the user is logged in
if (!isset($_SESSION['number'])) {
    header('Location: login.php'); // Redirect to login page if not logged in
    exit();
}

// Include the database connection file
include 'db_connection.php';

// Check if the form data is posted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $microchipNum = $_POST['microchipNum'] ?? '';
    $name = $_POST['name'] ?? '';
    $weight = $_POST['weight'] ?? 0;  // Collect weight as an integer from form
    $locationnumber = $_POST['locationnumber'] ?? ''; // Collect location number from form

    // Update the pet information in the database
    $sql = "UPDATE ANIMAL SET NAME = ?, WEIGHT = ?, LOCATIONNUMBER = ? WHERE MICROCHIPNUM = ?";
    
    // Prepare the statement to prevent SQL injection
    if ($stmt = $conn->prepare($sql)) {
        // Bind the variables to the prepared statement as parameters
        $stmt->bind_param("sisi", $name, $weight, $locationnumber, $microchipNum);
        
        // Attempt to execute the prepared statement
        if ($stmt->execute()) {
            // Redirect back to the edit_pet_info.php with a success message
            header("Location: ../html_pages/edit_pet_info.html?status=success&microchipNum=$microchipNum");
            exit();
        } else {
            echo "Error updating record: " . $conn->error;
        }
        
        // Close statement
        $stmt->close();
    } else {
        echo "Error preparing statement: " . $conn->error;
    }

    // Close connection
    $conn->close();
} else {
    echo "No data submitted";
}
?>
