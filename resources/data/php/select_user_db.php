<?php 
echo'<table id = "table" class="table table-bordered border-danger">
      <thead>
        <tr>
          <th scope="col">STT</th>
          <th scope="col">User name</th>
          <th scope="col">Password</th>
          <th scope="col">Họ tên</th>
          <th scope="col">Số điện thoại</th>
          <th scope="col">Email</th>
          <th scope="col">Tùy chỉnh</th>
        </tr>
      </thead>';
      include("connectdb.php");
      $sql = "SELECT @row := @row + 1 AS stt, t.* FROM user t, (SELECT @row := 0) r";
      $result = $conn->query($sql);
      if ($result->num_rows > 0) 
      {
      // output data of each row
        while($row = $result->fetch_assoc()) 
          {
            $stt = $row['stt'];
            $username = $row['username'];
            $password = $row['password'];
            $name = $row['name'];
            $phone = $row['phone'];
            $email = $row['email'];

            echo "<tr onclick = 'clr(this)'>
            <td style='cursor:pointer'> ${stt}</td>
            <td style='cursor:pointer'>${username}</td>
            <td style='cursor:pointer'>${password}</td>
            <td style='cursor:pointer'>${name}</td>
            <td style='cursor:pointer'>${phone}</td>
            <td style='cursor:pointer'>${email}</td>
            <td> <button type='button' class='btn btn-outline-warning' disabled ><a style='text-decoration: none' href = 'update_user.php?username=$username'>Sửa</a></button>

            <button type='button' class='btn btn-outline-danger'disabled><a style='text-decoration: none' href = 'delete_user_db.php?username=$username'>Xóa</a></button></td>
            </tr>";
          }
      } 
      else 
      {
        echo "0 results";
      }
      echo "</table>";
      $conn->close();
?>
   