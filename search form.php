


      die('Could not connect: ' . mysql_error());
      else
      if (!$con)
      if (mysql_query("CREATE DATABASE db_test", $con))
     $con = mysql_connect("localhost", "root", "");
     mysql_close($con);
     {
     {
     }
     }
    {
    }
   ( 
   )";
   </body>
  $sql = "CREATE TABLE Liam
  <?php
  Category varchar (30),
  Code varchar (30),
  CutSize varchar (30),
  Description varchar (30),
  echo "Database created";
  echo "Error creating database: " . mysql_error();
  mysql_select_db("db_test", $con);
 ?> 
 mysql_query($sql, $con);
<body