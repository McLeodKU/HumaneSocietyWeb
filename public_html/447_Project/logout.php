<?php
session_start(); // Start the session to access session variables

// Clear all session variables
session_unset();

// Destroy the session
session_destroy();

// Redirect to the login page
header("Location: login.php");
exit(); // Ensure no further execution of script after redirect
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Logout</title>
</head>
<body>
    <!-- Optionally include a message or automatic redirection if not already handled by PHP -->
    <p>You have been logged out. Redirecting to login...</p>
    <script>
        setTimeout(function() {
            window.location.href = "login.php";
        }, 3000); // Redirect after 3 seconds
    </script>
</body>
</html>
