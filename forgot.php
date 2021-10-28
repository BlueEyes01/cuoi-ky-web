<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="vendors/css/bootstrap.css">
    <link rel="stylesheet" href="resources/css/sign-in.css">
    <link rel="stylesheet" href="resources/css/sign-up.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <title>Document</title>
</head>

<body>
    <div class="all">
        <div class="sign-in animate__animated animate__bounceInDown">
            <div class="row">
                <div class="text-center">
                    <img class="animate__animated animate__pulse animate__slow	2s animate__infinite	infinite"
                        src="resources/img/book.png" width="200px">
                        <h3 style="color: deeppink;">Lấy lại mật khẩu</h3><br><br>
                </div>
                <div class="col-6">
                    <h5>Tên đăng nhập</h5>
                    <input oninput="oip(this)" onblur="obl_tk(this)" onfocus="ofc(this)" class="form-control" type="text" placeholder="User name">
                    <span class="form-message"></span>
                </div>
                <div class="col-6">
                    <h5>Email</h5>
                    <input oninput="oip(this)" onblur="obl_email(this)" onfocus="ofc(this)" class="form-control" type="email" placeholder="Email">
                    <span class="form-message"></span>
                </div>
               
                <div class="col-6">
                    <h5>Mật khẩu mới</h5>
                    <input oninput="oip(this)" onblur="obl_mk(this)" onfocus="ofc(this)" class="form-control" type="password" id = "password" placeholder="Password">
                    <span class="form-message"></span>
                </div>
                <div class="col-6">
                    <h5>Nhập lại mật khẩu</h5>
                    <input oninput="oip(this)" onblur="obl_remk(this)" onfocus="ofc(this)" class="form-control" type="password" placeholder="Confirm Password">
                    <span class="form-message"></span>
                </div>
                <div class="col-6">
                    <h5>Số điện thoại</h5>
                    <input oninput="oip(this)" onblur="obl_sdt(this)" onfocus="ofc(this)" class="form-control" placeholder="Số điện thoại">
                    <span class="form-message"></span>
                </div>
                <div>
                    <button type="submit" class="btn w-100 ">Lấy mật khẩu</button>
                </div>
                <div class="text-center Signup">
                    <span>Tài khoản đã sẵn sàng ? <a id="Sign-up" onclick="drd()" href="sign-in.php">Đăng nhập</a></span>
                    <span>&emsp;&emsp;Bạn chưa có tài khoản ? <a id="Sign-up" onclick="drd()" href="sign-up.php">Đăng ký</a></span>
                </div>
            </div>

        </div>
    </div>

    <script src="resources/js/main.js"></script>
    <script src="vendors/js/jquery-3.6.0.js"></script>
    <script src="vendors/js/bootstrap.js"></script>
</body>

</html>