<?php
session_start(); // start the session to access session variables
session_unset();// clear all session variables
session_destroy(); // destroy the session

header("Location: ../society.html?logout=true"); // redirect to the society page with a logout message
exit(); // Ensure no further execution of script after redirect
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Logout</title>
</head>
<body>
    <p>You have been logged out. Redirecting to login...</p>
    <script>
        setTimeout(function() {
            window.location.href = "login.php";
        }, 3000); // redirect after 3 seconds
    </script>
</body>
</html>
