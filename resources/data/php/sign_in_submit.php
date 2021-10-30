<?php 
    include("connectdb.php");
    $username = $_POST["username"];
    $password = $_POST["password"];

    $reg = '/^\w[a-zA-Z0-9\_]{0,16}$/';

    
        if (isset($_POST['submit']) &&
            $username !="" &&
            $password !="" && 
            preg_match($reg,$username)&& 
            preg_match($reg,$password)
            
        {
?>