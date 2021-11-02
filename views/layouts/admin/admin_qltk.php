<?php include "../../../controllers/check_login.php";
include"../../books/admin/header.php";?>
<title>Quản lý tài khoản</title>
</head>
<body>
    <div class="all">
        <div class="row">
          <?php include"../../../views/books/admin/body.php"; ?>
            <div class="col-9">
                <div class="right">
                    <?php 
                        include '../../../models/select_user_db.php';
                    ?>
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
<?php include"../../books/admin/footer.php"; ?>