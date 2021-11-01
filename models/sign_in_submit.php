<?php 
    include("../configs/connectdb.php");
    $username = $_POST["username"];
    $password = $_POST["password"];

    $reg = '/^\w[a-zA-Z0-9\_]{0,16}$/';

    
        if (isset($_POST['submit']) &&
            $username !="" &&
            $password !="" && 
            preg_match($reg,$username)&& 
            preg_match($reg,$password))
            
        {
            $password= md5($password);
            $sql = "SELECT * FROM user WHERE username='$username' AND password='$password'";
            $user = mysqli_query($conn,$sql);
            if ($row = mysqli_fetch_array($user))
            {
                echo"Hello ".$row['name']."<br>Bạn đã đăng nhập thành công";
                //add trang chu ban sach
                // header("Location:");
            }
            else
            {
                echo "Tên đăng nhập hoặc mật khẩu không chính xác, vui lòng kiểm tra lại!";
                 // header("Location:");
            }
        }
        else 
        {
            header("Location:../views/layouts/public/sign-in.php");
        }
        $conn->close();
?>