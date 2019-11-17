<?php
session_start(); // Starting Session
$error = ''; // Variable To Store Error Message
if (isset($_POST['submit'])) {
if (empty($_POST['username']) || empty($_POST['password'])) {
$error = "Username or Password is invalid";
}
else{
// Define $username and $password
$username = $_POST['username'];
$password = $_POST['password'];
// mysqli_connect() function opens a new connection to the MySQL server.
$conn = mysqli_connect("localhost", "root", "", "cartigo");
// SQL query to fetch information of registerd users and finds user match.
$query = "SELECT  username, password from login where username=? AND password=? LIMIT 1";
// To protect MySQL injection for Security purpose
$stmt = $conn->prepare($query);
$stmt->bind_param("ss", $username, $password);
$stmt->execute();
$stmt->bind_result($username, $password);
$stmt->store_result();
if($stmt->fetch()) //fetching the contents of the row {
$_SESSION['login_user'] = $username; // Initializing Session
header("location: profile.php"); // Redirecting To Profile Page
// header("location: ADD PRODUCTS.php");
// header("location: DELETE()new.php");
}
mysqli_close($conn); // Closing Connection
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>CARTIGO MANAGEMENT SYSTEM LOGIN</title>
	
	
</head>
<body background="back5.jpg">

</body>
</html>
