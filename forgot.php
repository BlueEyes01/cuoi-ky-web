<?php include "header.php";?>
    <link rel="stylesheet" href="resources/css/sign-up.css">//
    <title>Quên mật khẩu</title>
</head>

<body>
    <div class="all">
        <div class="sign-in animate__animated animate__bounceInDown">
            <form action = "resources/data/php/forgot_db.php" method = "POST">
                <div class="row">
                    <div class="text-center">
                        <img class="animate__animated animate__pulse animate__slow	2s animate__infinite	infinite"
                            src="resources/img/book.png" width="200px">
                            <h3 style="color: deeppink;">Lấy lại mật khẩu</h3><br><br>
                    </div>
                    <div class="col-6">
                        <h5>Tên đăng nhập</h5>
                        <input oninput="oip(this)" onblur="obl_tk(this)" onfocus="ofc(this)" name ="username"  class="form-control" type="text" placeholder="User name">
                        <span class="form-message"></span>
                    </div>
                    <div class="col-6">
                        <h5>Email</h5>
                        <input oninput="oip(this)" onblur="obl_email(this)" onfocus="ofc(this)" name = "email" class="form-control" type="email" placeholder="Email">
                        <span class="form-message"></span>
                    </div>
                    <div class="col-6">
                        <h5>Mật khẩu mới</h5>
                        <input oninput="oip(this)" onblur="obl_mk(this)" onfocus="ofc(this)" name="password" class="form-control" type="password" id = "password" placeholder="Password">
                        <span class="form-message"></span>
                    </div>
                    <div class="col-6">
                        <h5>Số điện thoại</h5>
                        <input oninput="oip(this)" onblur="obl_sdt(this)" onfocus="ofc(this)" name = "phone" class="form-control" placeholder="Số điện thoại">
                        <span class="form-message"></span>
                    </div>
                    <div class="col-6">
                        <h5>Nhập lại mật khẩu</h5>
                        <input oninput="oip(this)" onblur="obl_remk(this)" onfocus="ofc(this)" name = "repassword" class="form-control " id ="repassword" type="password" placeholder="Confirm Password">
                        <span class="form-message"></span>
                    </div>
                    <div>
                        <button   type="submit" name = "submit" class="btn w-100">Lấy mật khẩu</button>
                    </div>
                    <div class="text-center Signup">
                        <span>Tài khoản đã sẵn sàng ? <a id="Sign-up" onclick="drd()" href="sign-in.php">Đăng nhập</a></span>
                        <span>&emsp;&emsp;Bạn chưa có tài khoản ? <a id="Sign-up" onclick="drd()" href="sign-up.php">Đăng ký</a></span>
                    </div>
                </div>
            </form>
        </div>
    </div>
<?php 
        session_start();
        if (isset($_SESSION['alert']))
        {
            echo $_SESSION['alert'];
            unset($_SESSION['alert']);
        }
    ?>
<?php include"footer.php"?>