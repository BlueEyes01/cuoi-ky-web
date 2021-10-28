<?php 
echo'<table id = "table" class="table table-bordered border-danger">
      <thead>
        <tr>
          <th scope="col">ID</th>
          <th scope="col">User name</th>
          <th scope="col">Password</th>
          <th scope="col">Họ tên</th>
          <th scope="col">Số điện thoại</th>
          <th scope="col">Email</th>
        </tr>
      </thead>';
      include("connectdb.php");
      $sql = "SELECT * FROM user";
      $result = $conn->query($sql);
      if ($result->num_rows > 0) 
      {
      // output data of each row
        while($row = $result->fetch_assoc()) 
          {
            $id = $row['id'];
            $username = $row['username'];
            $password = $row['password'];
            $name = $row['name'];
            $phone = $row['phone'];
            $email = $row['email'];

            echo "<tr style='cursor:pointer'><td> ${id}</td>
            <td>${username}</td>
            <td>${password}</td>
            <td>${name}</td>
            <td>${phone}</td>
            <td>${email}</td></tr>";
          }
      } 
      else 
      {
        echo "0 results";
      }
      echo "</table>";
?>
  