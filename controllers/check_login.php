<?php
session_start();
if (!isset($_SESSION['username']))
{
    header('Location:../../../views/layouts/admin/admin.php');
}
?>