<?php 
include "../controllers/check_login.php";
include("../configs/connectdb.php");
    $masach = $_POST["masach"];
    $tensach = $_POST["tensach"];
    $tacgia = $_POST["tacgia"];
    $theloai = $_POST["theloai"];
    $giatien = $_POST["giatien"];
    $image = $_POST["image"];
    $mota = $_POST["mota"];
    $date = date("Y-m-d");



    $reg_img = '/[\`\[\]\'\(\)\|\{\}\"\<\>]/';
    $reg_tacgia = '/[\`\-\=\[\]\;\,\.\/\!\~\@\#\$\%\^\*\(\)\+\|\{\}\:\"\<\>\?]/';
    $reg_giatien = '/^[0-9]+$/';
    $reg_mota = '/[\`\=\[\]\~\@\#\%\*\+\|\{\}\<\>]/';
    $reg_tensach = '/[\`\~\#\^\*\{\}\<\>]/';
    $reg_masach = '/^[0-9]+$/';

        if (isset($_POST['submit']) &&
            $tensach !="" &&
            $tacgia !="" && 
            $theloai !="" &&
            $giatien !="" &&
            $image !="" &&
            $mota !="" &&
            $masach !="" &&
            $theloai != "--Thể Loại--"&&
            !preg_match($reg_tensach,$tensach)&& 
            !preg_match($reg_tacgia,$tacgia) && 
            preg_match($reg_giatien,$giatien) && 
            !preg_match($reg_mota,$mota) && 
            preg_match($reg_masach,$masach) && 
            !preg_match($reg_img,$image) )
           
        {
            $sql = "UPDATE sach SET tensach = '$tensach', tacgia = '$tacgia', theloai = '$theloai', giatien = '$giatien', image = '$image', mota = '$mota', ngaycapnhat = '$date' WHERE masach ='${masach}'";
            mysqli_query($conn, $sql);
            $_SESSION['thongbao'] ='<script>alert("Cập nhật thông tin sách thành công")</script>';
            $conn->close();
            header('Location:../views/layouts/admin/admin_qls.php');
        }
        else 
        { 
            $_SESSION['thongbao'] ='<script>alert("Vui lòng kiểm tra lại thông tin")</script>';
            $conn->close();
            header("Location:../views/layouts/admin/update_sach.php?masach=$masach");
        }
?>