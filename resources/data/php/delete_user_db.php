<?php 
    include("connectdb.php");

    if(isset($_GET['username']))
    {
      $username =$_GET['username'];
    }
    $sql = "DELETE FROM user WHERE username ='${username}'";
    $result = $conn->query($sql);
    if ($result === TRUE) {
        echo "Record deleted successfully";
      } else {
        echo "Error deleting record: " . $conn->error;
      }
    header("Location:admin_qltk.php");
      $conn->close();
?>
    