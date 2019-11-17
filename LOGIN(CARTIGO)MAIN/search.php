<?php
include("conn_db.php");


if (isset($_GET['SEARCH'])) {
$sql = "SELECT * FROM products WHERE CONCAT(`PRODUCT_ID`, `PRODUCT_NAME`,`WEIGHT` ,`PRODUCT_PRICE`, `RFID_TAG`)";
if($result = mysqli_query($conn, $sql)){
    if(mysqli_num_rows($result) >0){
        echo "<table>";
            echo "<tr>";
                echo "<th>PRODUCT_ID</th>";
                echo "<th>PRODUCT_NAME</th>";
                echo "<th>WEIGHT</th>";
                echo "<th>PRODUCT_PRICE</th>";
                echo "<th>RFID_TAG</th>";
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['PRODUCT_ID'] . "</td>";
                echo "<td>" . $row['PRODUCT_NAME'] . "</td>";
                echo "<td>" . $row['WEIGHT'] . "</td>";
                echo "<td>" . $row['PRODUCT_PRICE'] . "</td>";
                echo "<td>" . $row['RFID_TAG'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($conn);
}
 }
mysqli_close($conn);
?>
