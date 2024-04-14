<?php
session_start();  // Start the session at the very top of the file

// Handle logout
if (isset($_GET['logout'])) {
    session_destroy();  // Destroy the session
    header("Location: society.php");  // Redirect to the society page after logout
    exit();
}

// Initialize a session variable if it isn't set
if (!isset($_SESSION['session_id'])) {
    $_SESSION['session_id'] = generateSessionID();  // Assign a new session ID
}

function generateSessionID() {
    return rand(1000, 9999);  // Simple function to generate a random session ID
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Douglas County Humane</title>
    <link rel="icon" type="image/png" href="small.png">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<div class="navbar">
    <img src="logo.png" alt="Douglas County Humane Logo" style="height:100px; vertical-align: middle; margin-right: 10px;">
    <div>
        <a href="society.php">Home</a> 
        <a href="society.php#about">About Us</a>
        <a href="animals.html">Available Pets</a>
        <a href="society.php#contact">Contact</a>
    </div>
</div>
<header>
    <h1>Welcome to Our Humane Society Adoption Center</h1>
    <p>Helping Pets Find Forever Homes</p>
</header>
<div class="container">
    <section id="about">
        <h2>About Us</h2>
        <p>We are a non-profit organization dedicated to the welfare of animals. We provide shelter, care, and love to homeless pets until they find their forever homes.</p>
    </section>
    <!-- Additional sections can be added here -->
    <section id="contact">
        <h2>Contact Us</h2>
        <p>If you're interested in adopting a pet or have any questions, please contact us at info@humane-society.com or (555) 123-4567.</p>
    </section>
</div>
<footer>
    <div class="footer">
        <a href="#about">About Us</a>
        <a href="https://www.example.com/donate" target="_blank">Donate</a>
        <a href="https://www.example.com/volunteer" target="_blank">Volunteer</a>
        <a href="?logout=true">Logout</a> <!-- Logout link added here -->
    </div>
    <p>&copy; 2024 Humane Society Adoption Center. All rights reserved.</p>
</footer>
</body>
</html>
