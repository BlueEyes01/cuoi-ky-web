<?php
include"check_login.php";
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bansach";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
?>
