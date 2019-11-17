<?php

// include("search.php");

?>
<!DOCTYPE html>
<html>
 <head>
  <title>CARTIGO Management System </title>  
  <!-- <script src="js/jquery-1.10.2.min.js"></script>
  <link rel="stylesheet" href="css/bootstrap.min.css" />
  <script src="js/bootstrap.min.js"></script>
 -->
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
table th,td{
  color:black;
border: 4px solid darkgrey;
width:1000px;
text-align:center;
background-color:white;
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
      <li ><a href="DELETE(new).php">DELETE PRODUCTS</a></li>
      <li class="active"><a href="Get_prd_info.php">SEARCH_PRODUCTS</a></li>
    </ul>
  </div>
</nav>
   <br />
<div id="flip" style="border:solid;background-color:lavender"><h4><b>SEARCH PRODUCTS:</b></h4></div>
  

   <br>
      <form id="panel10" action="" method="POST">
        <div class="form-group">
          <div class="container" align="center" style="border: solid;background-color:transparent;">
              
       <div class="form-group" >
       <br><label style="color: black; border: solid;background-color:lightblue"><b>RFID_TAG:</b></label>
       <ul><input type="number" name="RFID_TAG" id="RFID_TAG" value="" class="form-control" required="" placeholder="ENTER RFID_TAG" style="width:4in">
       </div>
 <!--       <div class="input_panel" style="background: transparent;background-color:lavender ">
       <ul><h4><b>PRODUCT_TYPE :</b></h4>

        <select id="PRODUCT_TYPE" name="PRODUCT_TYPE" required="" style="width: 10in;height: 0.25IN">
         <option value="--">--</option>
         <option value="SPORTS">SPORTS</option>
         <option value="STATIONARIES">STATIONARIES</option>
         <option value="COOKING OIL">COOKING OIL</option>
         <option value="GHEE">GHEE</option> 
         <option value="SNACKS(CHIPS)">SNACKS(CHIPS)</option> 
         <option value="BISCUITS">BISCUITS</option>
         <option value="CHOCOLATE">CHOCOLATE</option>
         </select>

       </div> -->
<!--             <table border="1" width="200" cellspacing="1" cellpadding="1">
 -->
 <!--  <table  align="center" border="5px" style="width: 1000px">
    <tr><th colspan="10"><h1 align="center">PRODCUTS</h1></th>
         <tr>
                 <th><b>PRODUCT_ID</b></th>
                 <th><b>PRODUCT_NAME</b></th>
                 <th><b>PRODUCT_PRICE</b></th>
                 <th><b>RFID_TAG</b></th>
    </tr> 
  </tr>
  </table>
  -->
 <?php 
 include("conn_db.php");
include("login.php");
 if (isset($_POST['SEARCH'])) {
  
  $RFID_TAG=$_POST['RFID_TAG'];

$sql = "SELECT * FROM products WHERE  `RFID_TAG`=$RFID_TAG && CONCAT(`PRODUCT_ID`, `PRODUCT_NAME`,`PRODUCT_TYPE`, `PRODUCT_PRICE`, `RFID_TAG`)";
$results=mysqli_query($conn,$sql);


// while($row = mysqli_fetch_array($results)){
//   echo "<table>";
//             echo "<tr>";
//                 echo "<th>PRODUCT_ID</th>";
//                 echo "<th>PRODUCT_NAME</th>";
//                 echo "<th>PRODUCT_PRICE</th>";
//                 echo "<th>RFID_TAG</th>";
//             echo "</tr>";

//             echo "<tr>";
//                 echo "<th>" . $row['PRODUCT_ID'] . "</th>";
//                 echo "<th>" . $row['PRODUCT_NAME'] . "</th> ";
//                 echo "<th>" . $row['PRODUCT_PRICE'] . "</th>";
//                 echo "<th>" . $row['RFID_TAG'] . "</th>";
//             echo "</tr>";
        
//   }
// }

    if(mysqli_num_rows($results) >0){
        echo "<table>";
            echo "<tr>";
                echo "<th>RFID_TAG</th>";
                echo "<th>PRODUCT_ID</th>";
                echo "<th>PRODUCT_NAME</th>";
                echo "<th>PRODUCT_PRICE</th>";
                
            echo "</tr>";
        while($row = mysqli_fetch_array($results)){
            echo "<tr>";
               echo "<td>" . $row['RFID_TAG'] . "</td>";
                echo "<td>" . $row['PRODUCT_ID'] . "</td>";
                echo "<td>" . $row['PRODUCT_NAME'] . "</td>";
               
               echo "<td>" . $row['PRODUCT_PRICE'] . "</td>";
               
            echo "</tr>";
        }
        echo "</table>";
}}
?>
        <hr>    
  <button type="submit" class="btn" name="SEARCH" value="SEARCH"><b>SEARCH BY</b></button>
  



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