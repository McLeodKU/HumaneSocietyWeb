<?php
session_start();
ini_set('display_errors', 1);  // Enable error reporting
error_reporting(E_ALL);

// Check if the form has been submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $number = $_POST['number'];

    // Check if the input is a number
    if (is_numeric($number)) {
        $_SESSION['number'] = $number;  // Store the number in a session variable

        // Redirect to society.php
        header("Location: society.html");
        exit();  // Prevent further script execution after redirect
    } else {
        // Optionally handle the error case where the input is not a number
        $error = "Please enter a valid number.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Number Login</title>
</head>
<body>
    <h2>Enter a Number</h2>
    <form method="POST" action="login.php">
        <div>
            <label for="number">Number:</label>
            <input type="text" id="number" name="number" required>
        </div>
        <div>
            <button type="submit">Submit</button>
        </div>
        <?php if (!empty($error)): ?>
            <p style="color: red;"><?php echo $error; ?></p>
        <?php endif; ?>
    </form>
</body>
</html>
