<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="vendors/css/bootstrap.css">
    <link rel="stylesheet" href="resources/css/sign-in.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <title>Document</title>
</head>

<body>
    <div class="all">
        <div class="sign-in  animate__animated animate__bounceInDown">
            <form action = "resources/data/php/sign_in_submit.php" method = "POST">
            <div class="text-center">
                <img class=" animate__animated animate__pulse animate__slow	2s animate__infinite	infinite"
                    src="resources/img/book.png" width="200px">
            </div>
            <div>
                <h5>Tên đăng nhập</h5>
                <input oninput="oip(this)" onblur="obl_tk(this)" onfocus="ofc(this)" name="username" class="form-control" type="text" placeholder="User name">
                <span class="form-message"></span>
            </div>
            <div>
                <h5>Mật khẩu</h5>
                <input oninput="oip(this)" onblur="obl_mk(this)" name = "password" onfocus="ofc(this)" class="form-control" type="password"
                    placeholder="Password">
                    <span class="form-message"></span>
            </div>
            <div><button   type="submit" class="btn d-block w-100">Đăng nhập</button></div>
            
            <div class="text-center Signup">
                <a onclick="drd()" class="forgot" href="forgot.php">Quên mật khẩu ?</a><br>
                <span>Bạn chưa có tài khoản ? <a id="Sign-up" onclick="drd()" href="sign-up.php">Đăng ký</a></span>
            </div>
        </form>
           
        </div>
    </div>

    <script src="resources/js/main.js"></script>
    <script src="vendors/js/jquery-3.6.0.js"></script>
    <script src="vendors/js/bootstrap.js"></script>
</body>
</html>