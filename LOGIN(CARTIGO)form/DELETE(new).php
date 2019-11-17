<?php
include("conn_db.php");

include("login.php");  

?>
<!DOCTYPE html>
<html>     
 <head>
  <title>CARTIGO Management System </title>  
  
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
 <body background="back5.jpg">
  <br />
  <body background="images/background2.jpg"><br />
  <div class="container" align="center">
   <img src="images/logo.jpg" align="center" width="1100" height="100" >
   <h2 align="center" style="font:100px; border:solid;background-color:lavender"><b><i>CARTIGO MANAGEMENT SYSTEM </i></b>
    </h2>
  <br />
  <nav class="navbar navbar-inverse" style="background-color:lavender;">
  <div class="container-fluid" style="background-color: lightblue">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><b style="color:maroon"><i>CARTIGO MANAGEMENT SYSTEM(Shop & Go)</i></b></a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="profile.php">HOMEPAGE</a></li>
      <li ><a href="ADD PRODUCTS.php" style="color:slategrey">ADD PRODUCTS</a></li>
      <li class="active"><a href="DELETE(new).php">DELETE PRODUCTS</a></li>
      <li><a href="#">GENERATE_BILL</a></li>
    </ul>
  </div>
</nav>
   <br />
<div id="flip" style="border:solid;background-color:lavender"><h3><b>DELETE PRODUCTS:</b></h3></div>
  

   <br>
      <form id="panel10" action="delete.php" method="POST">
        <div class="form-group">
          <div class="container" align="center" style="border: solid;background-color:transparent;">
<!--     <div class="row">
      <div class="logo col-md-3">
      </div>
 --><!--       <div class="nav navbar col-md-9">
        <nav align="center">
          <ul class="navbar-nav navigation  ">
 --> 
              
       <div class="form-group" >
       <br><label style="color: black; border: solid;background-color:lightblue"><b>PRODUCT_ID :</b></label>
       <ul><input type="number" name="PRODUCT_ID" id="PRODUCT_ID" value="" class="form-control" required="" placeholder="ENTER PRODUCT_ID" style="width:4in">
       </div>


        <hr>
    
  <button type="submit" class="btn" name="delete" value="Delete"><b>Delete</b></button>
  



                </ul>
            </nav>
      </div>

</div>
</div>
</div>
      <div class="form-group" align="center">

      </div>
     </form>
     <footer >
      <div id="profile" align="center">
      <b id="logout"><a href="logout.php" style="color:black;background-color:lavender;border:solid;padding:5px"><b>LogOut</b></a></b>
       </div>
       </footer>
    
    </div>
   </div>
  </div>
       
    </div>
  </body>
 </html>
