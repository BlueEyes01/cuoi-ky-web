<?php 

include("connectdb.php");
    session_start();
    $name = $_POST["name"];
    $phone = $_POST["phone"];
    $username = $_POST["username"];
    $password = $_POST["password"];
    $repassword = $_POST["repassword"];
    $email = $_POST["email"];

    $reg = '/^\w[a-zA-Z0-9\_]{0,16}$/';
    $reg_ht ='/[\`\-\=\[\]\;\'\,\.\/\!\~\@\#\$\%\^\&\*\(\)\+\|\{\}\:\"\<\>\?]/';
    $reg_phone = '/^(0)\d{9,}$/';
    $reg_email = '/^[a-zA-Z0-9][a-zA-Z0-9\_]+@[a-zA-Z]+(\.[a-zA-Z]+){1,3}$/';

    if (isset($_POST['submit']) &&
        $name !="" &&
        $phone !="" && 
        $username !="" &&
        $email !="" &&
        $password !="" && 
        $repassword !=""  && 
        preg_match($reg,$username)&&
        preg_match($reg,$password) && 
        !preg_match($reg_ht,$name) && 
        $password == $repassword &&
        preg_match($reg_phone,$phone) && 
        preg_match($reg_email,$email)) 

    {
        $sql = "SELECT * FROM user where username = '$username'";
        $old = mysqli_query($conn,$sql);
        if (mysqli_num_rows($old)!=0)
        {
            $_SESSION['alert'] ='<script>alert("Tên đăng nhập đã tồn tại")</script>';
            header("Location:../../../sign-up.php");
        }
        else
        {
            $password = md5($password);
            $sql = "INSERT INTO user VALUES ('$username', '$password', '$name', '$phone', '$email', 0)";
            mysqli_query($conn, $sql);
            $_SESSION['alert'] ='<script>alert("Bạn đã đăng ký thành công")</script>';
            header('Location:../../../sign-in.php');

        }
    }
    else 
    {
        header('Location:../../../sign-up.php');
    }
    $conn->close();

?>