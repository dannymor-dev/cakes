<?php
session_start();

// Dummy user credentials (replace with actual database connection and query)
$valid_username = "user";
$valid_password = "password";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    // Validate credentials (should query database for actual authentication)
    if ($username === $valid_username && $password === $valid_password) {
        // Authentication successful, redirect or set session variables
        $_SESSION["username"] = $username;
        echo json_encode(array("success" => true));
    } else {
        // Authentication failed
        echo json_encode(array("success" => false, "message" => "Invalid username or password."));
    }
}
?>
