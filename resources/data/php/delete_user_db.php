<?php 
    include("connectdb.php");
    $username ="";
    $sql = "DELETE FROM user WHERE username ='${username}'";
    $result = $conn->query($sql);
    if ($result === TRUE) {
        echo "Record deleted successfully";
      } else {
        echo "Error deleting record: " . $conn->error;
      }
      
      $conn->close();
?>
    