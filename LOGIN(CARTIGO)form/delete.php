<?php include("conn_db.php");

$PRODUCT_ID=$_POST['PRODUCT_ID'];
//exit();
if (isset($_POST['delete'])) {
$query="DELETE FROM products where `PRODUCT_ID`=$PRODUCT_ID";
$data=mysqli_query($conn,$query);
if ($data)
{
	echo header("location:DELETE(new).php");
}
else {
	echo "Data not Deleted!!!!!!!";
}
}
mysqli_close($conn);
?>