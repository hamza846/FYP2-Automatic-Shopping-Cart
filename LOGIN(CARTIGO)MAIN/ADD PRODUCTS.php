<?php

include("conn_db.php");
include("session.php");
$PRODUCT_NAME="";
$PRODUCT_PRICE="";
$WEIGHT="";
$QUANTITY="";
$RFID_TAG="";
$PRODUCT_ID="";
$PRODUCT_TYPE="";
$PRODUCT_DESCRIPTION="";
$message = "";

if (isset($_POST['save'])) {
	$PRODUCT_NAME=$_POST['PRODUCT_NAME'];
    $PRODUCT_PRICE=$_POST['PRODUCT_PRICE'];
    $WEIGHT=$_POST['WEIGHT'];
    $QUANTITY=$_POST['QUANTITY'];  
    $RFID_TAG=$_POST['RFID_TAG'];
    $PRODUCT_ID=$_POST['PRODUCT_ID'];
    $PRODUCT_TYPE=$_POST['PRODUCT_TYPE'];
    $PRODUCT_DESCRIPTION=$_POST['PRODUCT_DESCRIPTION'];

if($PRODUCT_NAME!=="" && $PRODUCT_PRICE!=="" && $WEIGHT!=="" &&$QUANTITY!=="" && $RFID_TAG!=="" && $PRODUCT_ID!=="" &&  $PRODUCT_TYPE!=="" && $PRODUCT_DESCRIPTION!==""){

  $query = "INSERT INTO products (PRODUCT_NAME,PRODUCT_PRICE,WEIGHT,QUANTITY,RFID_TAG,PRODUCT_ID,PRODUCT_TYPE,PRODUCT_DESCRIPTION) VALUES ('$PRODUCT_NAME', '$PRODUCT_PRICE', '$WEIGHT', '$QUANTITY', '$RFID_TAG', '$PRODUCT_ID', 
  '$PRODUCT_TYPE', '$PRODUCT_DESCRIPTION')";

  $data =mysqli_query($conn,$query);
  
  if($data){
    $message = " ";
     }
}
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>CARTIGO Management System(Add Products)</title>
      <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <script>

$(document).ready(function(){
    $("#flip").click(function(){
        $("#panel10").slideToggle("slow");
        
    });
});
</script>
<style>
#flip, #panel{
    padding: 5px;
    text-align:center;
    background-color: #e5eecc;
    border: solid 10px #c3c3c3;
}
#panel{
    padding: 50px;
    display:none;
}
</style>
</head>
<body>
<body background="back5.jpg"><br />
  <div class="container">
   <img src="images/logo.jpg" align="center" width="1140" height="150" >
   <h2 align="center" style="font:100px; border:solid;background-color:lightgrey"><b><i>CARTIGO MANAGEMENT SYSTEM </i></b>
    </h2>
  <br />
<nav class="navbar navbar-inverse" style="background-color:lavender;">
  <div class="container-fluid" style="background-color: lightblue">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><b style="color:maroon"><i>CARTIGO MANAGEMENT SYSTEM(Shop & Go)</i></b></a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="profile.php">HOMEPAGE</a></li>
      <li class="active"><a href="ADD PRODUCTS.php" style="color:slategrey">ADD PRODUCTS</a></li>
      <li ><a href="DELETE(new).php">DELETE PRODUCTS</a></li>
      <li><a href="Get_prd_info.php">SEARCH_PRODUCTS</a></li>
    </ul>
  </div>
</nav>
  <br>
<div id="flip" style="border:outset;background-color:lavender"><h3><b>ADD PRODUCTS:</b></h3></div>

<br>   
<div class="panel panel-default" style="background: transparent;" >
<div class="panel-body"  style="border:solid;">
<form id="panel10"  method="POST" action="ADD PRODUCTS.php">
      <?php echo $message; ?>
       <div class="input_panel" style="background: transparent;background-color:lavender ">
       <ul><h4><b>PRODUCT_NAME:</b></h4>
       <input type="text" name="PRODUCT_NAME" class="form-control" value="" required="" , placeholder="ENTER PRODUCT-NAME" style="width: 10in" />
        </div>
<br>
       <div class="input_panel" style="background: transparent;background-color:lavender ">
         <ul><h4><b>PRODUCT_PRICE:</b></h4>
         <input type="number" name="PRODUCT_PRICE" class="form-control" value="" required="" placeholder="ENTER PRODUCT-PRICE" style="width: 10in" />
       </div>
<br>
<br>
       <div class="input_panel" style=";background: transparent;background-color:lavender ">
       <ul><h4><b>RFID_TAG:</b></h4>
       <input type="number" name="RFID_TAG" class="form-control" value="" required="" placeholder="ENTER RFID-TAG" style="width: 10in"/>
       </div>
<br>
       <div class="input_panel" style="background: transparent;background-color:lavender ">
       <ul><h4><b>PRODUCT_ID:</b></h4>
       <input type="number" name="PRODUCT_ID" class="form-control" value="" required="" placeholder="ENTER PRODUCT-ID" style="width: 10in" />
       </div>
<br>
       <input type="text" name="PRODUCT_TYPE" class="form-control" value="" required placeholder="ENTER PRODUCT-TYPE" style="width: 10in"/>
      	<hr>
      	<input type="submit" name="save" value="ADD PRODUCT">
</form>
<hr>
     <footer>
      <div id="profile" align="center">
<b id="welcome">Welcome:<i><?php echo $login_session;?></i></b>
<b id="logout"><a href="logout.php" align="center" style="color:black;background-color:lavender;border:solid;padding:10px"><b>LogOut</b></a></b>
</div>
</footer>

    </div>
   </div>
  </div>
 </body>
</body>
</html>
