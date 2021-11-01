<?php
    session_start();
    unset($_SESSION['username']);
    header('Location:../views/layouts/admin/admin.php');
?>