<?php
session_start();
include 'db_connection.php'; 
$login_err = "";

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['number'])) { // check if the form has been submitted
    $employeeID = trim($_POST['number']);
    $sql = "SELECT EMPLOYEE_ID FROM EMPLOYEE WHERE EMPLOYEE_ID = ?"; // prepare a select statement to check the employee ID
    if ($stmt = $conn->prepare($sql)) {
        $stmt->bind_param("s", $employeeID); // bind variables to the prepared statement as parameters
        if ($stmt->execute()) { // execute the query
            $stmt->store_result(); // store result
            if ($stmt->num_rows == 1) { // check if employee ID exists, if yes then verify password
                $_SESSION['number'] = $employeeID;  // set the session variable
                header("location: ../society.html"); // redirect to a welcome page
                exit();
            } else {
                header("location: ../html_pages/employee.html?error=invalidID");// redirect to login page with an error message if employee ID doesn't exist
                exit();
            }
        } else {
            echo "Oops! Something went wrong. Please try again later.";
        }
        $stmt->close();
    } else {
        echo "Error: " . $conn->error;
    }
    $conn->close();
} else {
    $login_err = "Please enter your employee ID.";
}
?>
