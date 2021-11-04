<?php include "../../../controllers/check_login.php";
include"../../books/admin/header.php";  ?>
<title>Quản lý sách</title>
<?php include "../../books/admin/admin_body_sach.php"?>
            <div class="col-9">
                <div class="right">
                    <form action="admin_qls.php" method="post">
                      <div class="row">
                        <div class = "col-11">
                            <input name="search" class="form-control" type="text" placeholder="Tìm kiếm">
                        </div>
                        <div class="col">
                          <button name = 'submit' class="btn btn-update" style = "margin-top:5px">Tìm</button>
                        </div>
                        <?php
                        if(isset($_POST['search']) && trim($_POST['search']) !=="")
                        ?>
                      </div>
                    <form>
                    <?php include '../../../models/search_sach_db.php'?>
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