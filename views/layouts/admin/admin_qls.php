<?php include "../../../controllers/check_login.php";
include"../../books/admin/header.php";  ?>
<title>Quản lý sách</title>
<?php include "../../books/admin/admin_body_sach.php"?>
            <div class="col-9">
                <div class="right">
                   <?php include '../../../models/select_sach_db.php'?>
                </div>
            </div>
        </div>
    </div>
    <?php
        if (isset($_SESSION['thongbao']))
          {
            echo $_SESSION['thongbao'];
            unset($_SESSION['thongbao']);
          }
    ?>
<?php include"../../books/admin/footer.php";;?>