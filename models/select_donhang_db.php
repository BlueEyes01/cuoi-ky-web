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
      <th scope="col">Mã đơn hàng</th>
      <th scope="col">Họ tên</th>
      <th scope="col">Email</th>
      <th scope="col">SĐT</th>
      <th scope="col">Địa chỉ</th>
      <th scope="col">Ghi chú</th>
      <th scope="col">Ngày đặt</th>
      <th scope="col">Tổng tiền</th>
      <th scope="col">Trạng thái</th>
      <th scope="col">Tùy chỉnh</th>
    </tr>
  </thead>';
  $sql = "SELECT @row := @row + 1 AS stt, t.* FROM orders t, (SELECT @row := 0) r WHERE id LIKE '%$search%' OR hoten like '%$search%' OR email like '%$search%' OR phone like '%$search%' OR diachi like '%$search%' OR note like '%$search%' OR order_date like '%$search%' OR tongtien LIKE'%$search%'";
  $result = $conn->query($sql);
  if ($result->num_rows > 0) 
  {

    while($row = $result->fetch_assoc()) 
      {
        if($row['trangthai']==0)
        {
            $trangthai = 'Chờ xác nhận';
        }
        else if($row['trangthai']==1)
        {
            $trangthai = 'Bị từ chối';
        }
        else if($row['trangthai']==2)
        {
            $trangthai='Đã xác nhận';
        }

        if($search =="")
        {
          $stt = $row['stt'];
          $id = $row['id'];
          $hoten = $row['hoten'];
          $email = $row['email'];
          $phone = $row['phone'];
          $diachi = $row['diachi'];
          $note = $row['note'];
          $order_date = $row['order_date'];
          $tongtien = $row['tongtien'];
          $tongtien = number_format($tongtien);
        }
        else
        {
            $stt = $row['stt'];
            $id = str_replace($search,"<span style='color:red'>${search}</span>",$row['id']);
            $hoten = str_replace($search,"<span style='color:red'>${search}</span>",$row['hoten']);
            $email = str_replace($search,"<span style='color:red'>${search}</span>",$row['email']);
            $phone = str_replace($search,"<span style='color:red'>${search}</span>",$row['phone']);
            $diachi = str_replace($search,"<span style='color:red'>${search}</span>",$row['diachi']);
            $note = str_replace($search,"<span style='color:red'>${search}</span>",$row['note']);
            $order_date = str_replace($search,"<span style='color:red'>${search}</span>",$row['order_date']);
            $trangthai = str_replace($search,"<span style='color:red'>${search}</span>",$trangthai);
            $tongtien = str_replace($search,"<span style='color:red'>${search}</span>",$row['tongtien']);
    
        }

        echo "<tr onclick = 'clr_dh(this)'>
        <td style='cursor:pointer'> ${stt}</td>
        <td style='cursor:pointer'>${id}</td>
        <td style='cursor:pointer'>${hoten}</td>
        <td style='cursor:pointer'>${email}</td>
        <td style='cursor:pointer'>${phone}</td>
        <td style='cursor:pointer'>${diachi}</td>
        <td style='cursor:pointer'>${note} </td>
        <td style='cursor:pointer'>${order_date}</td>
        <td style='cursor:pointer'>${tongtien} VNĐ</td>
        <td style='cursor:pointer'><span class='badge bg-info text-dark'>${trangthai}</span></td>

        <td><a class = 'dplnone' id ='sua' style='text-decoration: none' href = 'order_processing.php?id=$id'><button type='button' class='btn btn-outline-warning' style='margin:5px' disabled >Chi tiết</button></a></td>
        </tr>";
      }
  } 
  else 
  {
    echo "Không tìm thấy";
  }
  echo "</table>";
  $conn->close();

?>
   