<?php
include('login.php'); // Includes Login Script
if(isset($_SESSION['login_user'])){
header("location: profile.php"); // Redirecting To Profile Page
}
?>
<!DOCTYPE html>
<html>
<head >
<title>CMS Login</title>
<div align="center"><img src="images/logo.jpg" width="1000" height="200"></div>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
        <div id="login">
        <h2 align="center" style="background-color:#2f90ff">Login</h2>
<br>
<form action="" method="post">
         <div>
         <label><B>USERNAME:</B></label>
         <input id="name" name="username" placeholder="ENTER USERNAME" type="text" required="">
         </div>
         <div>
         <label><B>PASSWORD:</B></label>
         <input id="password" name="password" placeholder="ENTER PASSWORD" type="password" required=""><br><br>
         </div>
         <input name="submit" type="submit" value=" Login ">
<span><?php echo $error; ?></span>
</form>
</div>
</body>
</html>
