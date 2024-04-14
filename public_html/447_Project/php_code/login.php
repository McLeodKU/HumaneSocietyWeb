<?php
session_start();
include 'db_connection.php';  // Ensure this path points to your actual database connection script

// Initialize a variable for error messages
$login_err = "";

// Check if the form has been submitted
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['number'])) {
    $employeeID = trim($_POST['number']);

    // Prepare a select statement to check the employee ID
    $sql = "SELECT EMPLOYEE_ID FROM EMPLOYEE WHERE EMPLOYEE_ID = ?";
    if ($stmt = $conn->prepare($sql)) {
        // Bind variables to the prepared statement as parameters
        $stmt->bind_param("s", $employeeID);
        
        // Execute the query
        if ($stmt->execute()) {
            // Store result
            $stmt->store_result();
            
            // Check if employee ID exists, if yes then verify password
            if ($stmt->num_rows == 1) {
                // Employee ID is valid
                $_SESSION['number'] = $employeeID;  // Set the session variable
                header("location: ../society.html"); // Redirect to a welcome page
                exit();
            } else {
                // Redirect to login page with an error message if employee ID doesn't exist
                header("location: ../html_pages/employee.html?error=invalidID");
                exit();
            }
        } else {
            echo "Oops! Something went wrong. Please try again later.";
        }

        // Close statement
        $stmt->close();
    } else {
        echo "Error: " . $conn->error;
    }
    // Close connection
    $conn->close();
} else {
    $login_err = "Please enter your employee ID.";
}
?>
