<?php
session_start(); 
$error = ''; 
if (isset($_POST['submit'])) {
if (empty($_POST['username']) || empty($_POST['password'])) {
$error = "Username or Password is invalid";
}
else{

$username = $_POST['username'];
$password = $_POST['password'];
$conn = mysqli_connect("localhost", "root", "", "cartigo");
$query = "SELECT  username, password from login where username=? AND password=? LIMIT 1";
$stmt = $conn->prepare($query);
$stmt->bind_param("ss", $username, $password);
$stmt->execute();
$stmt->bind_result($username, $password);
$stmt->store_result();
if($stmt->fetch())  {
$_SESSION['login_user'] = $username; 
header("location: profile.php"); 
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
