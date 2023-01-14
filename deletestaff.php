<?php
    $con = mysqli_connect('localhost:3306', 'root', '','boxing');
$uname=$_GET['id'];
$sql="DELETE from staff where S_uname='$uname'";
    $res=mysqli_query($con,$sql);
    if($res)
    {
        echo '<script>alert("Staff Deleted Successfully!!")</script>';
        echo '<script> window.location.href = "admin_details.php";</script>';
    }
    else{
        echo "failed";
    }


?>