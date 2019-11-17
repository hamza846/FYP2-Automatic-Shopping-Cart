<?php
include('session.php');
if(!isset($_SESSION['login_user'])){
header("location: index.php"); // Redirecting To Home Page
}

?>

<!DOCTYPE html>
<html>
<head>
<title>CARTIGO MANAGEMENT SYSTEM(LOGIN)</title>

<link href="style.css" rel="stylesheet" type="text/css">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
	<body background="back5.jpg" >
  <br/>
  <div class="container" align="center" >
    <img src="images/logo.jpg"  height="200" width="1000" > 

<br>
 <br>
<form class="form_group">
   <nav class="navbar navbar-inverse" style="background-color:lavender">
  <div class="container-fluid" style="background-color:lightblue ">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><b style="color:maroon"><i>CARTIGO MANAGEMENT SYSTEM(Shop & Go)</i></b></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="profile.php">HOMEPAGE</a></li>
      <li><a href="ADD PRODUCTS.php">ADD PRDODUCTS</a></li>
      <li ><a href="DELETE(new).php">DELETE PRODUCTS</a></li>
      <li><a href="#">GENERATE_BILL</a></li>
    </ul>
  </div>
</nav>
<br>
 </body>
 <footer>
<div id="profile">
<b id="welcome">Welcome : <i><?php echo $login_session; ?></i></b>
<b id="logout"><a href="logout.php" style="color: black;background-color:lavender"><b>LogOut</b></a></b>
</div>
</footer>
</body>
</html>
