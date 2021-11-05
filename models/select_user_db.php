<?php 
include"../../../configs/connectdb.php";
if (!isset($_SESSION['admin']))
{
    header('Location:../../../views/layouts/admin/admin.php');
}
if (isset($_POST["search"])){
  $search = $_POST["search"];
}
else 
{
  $search ="";
}

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
      $sql = "SELECT @row := @row + 1 AS stt, t.* FROM user t, (SELECT @row := 0) r WHERE (level = 0) AND (username LIKE '%$search%' OR name LIKE '%$search%' OR phone LIKE '%$search%' OR email LIKE '%$search%' ) ";
      $result = $conn->query($sql);
      if ($result->num_rows > 0) 
      {

        while($row = $result->fetch_assoc()) 
          {
            if($search =="")
            {
              $stt = $row['stt'];
              $username = $row['username'];
              $password = $row['password'];
              $name = $row['name'];
              $phone = $row['phone'];
              $email = $row['email'];
            }
            else 
            {
              $stt = $row['stt'];
              $username = str_replace($search,"<span style='color:red'>${search}</span>",$row['username']);
              $password = $row['password'];
              $name = str_replace($search,"<span style='color:red'>${search}</span>",$row['name']);
              $phone = str_replace($search,"<span style='color:red'>${search}</span>",$row['phone']);
              $email = str_replace($search,"<span style='color:red'>${search}</span>",$row['email']);
            }

            echo "<tr onclick = 'clr(this)'>
            <td style='cursor:pointer'> ${stt}</td>
            <td style='cursor:pointer'>${username}</td>
            <td style='cursor:pointer'>${password}</td>
            <td style='cursor:pointer'>${name}</td>
            <td style='cursor:pointer'>${phone}</td>
            <td style='cursor:pointer'>${email}</td>
            
            <td><a class = 'dplnone' id ='sua' style='text-decoration: none' href = '../../../views/layouts/admin/update_user.php?username=$username'><button style='margin:5px' type='button' class='btn btn-outline-warning' disabled >Sửa</button></a>

            <a class = 'dplnone' id = 'xoa' style='text-decoration: none' href = '../../../models/delete_user_db.php?username=$username'><button style='margin:5px' type='button' class='btn btn-outline-danger'disabled>Xóa</button></a></td>
            </tr>";
          }
      } 
      else 
      {
        echo "Không có tài khoản nào";
      }
      echo "</table>";
      $conn->close();
?>
   