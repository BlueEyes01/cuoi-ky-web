<?php  include"header.php" ;?>
<title>Quản lý tài khoản</title>
</head>
<body>
    <div class="all">
        <div class="row">
          <?php include"body.php"; ?>
            <div class="col-9">
                <div class="right">
                    <?php 
                        include 'select_user_db.php';
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
<?php include 'footer.php'; ?>