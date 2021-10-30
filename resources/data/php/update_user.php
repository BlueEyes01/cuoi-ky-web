<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../vendors/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/admin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <title>Document</title>
</head>

<body>
    <div class="all">
        <div class="row">
            <div class="col-3">
                <div class="left">
                    <div class="alert alert-info animate__animated animate__pulse animate__infinite animate__slow"
                        role="alert">
                        <h2 style="color:red">Hi Admin ♥-♥<h2>
                    </div>
                    <div class="menu">
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link active" id="btn_qltk" aria-current="page" href="admin_qltk.php">
                                    <div onmouseover="m_over(this)" onmouseout="m_out(this)"
                                        class="alert alert-info animate__animated animate__pulse animate__repeat-2 animate__slow"
                                        role="alert">
                                        <h2 style="color:rgb(63, 230, 99)">Quản lý tài khoản<h2>
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" id='btn_qls' aria-current="page" href="admin_qls.php">
                                    <div onmouseover="m_over(this)" onmouseout="m_out(this)"
                                        class="alert alert-info animate__animated animate__pulse animate__repeat-2 animate__slow"
                                        role="alert">
                                        <h2 style="color:rgb(63, 230, 99)">Quản lý sách<h2>
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" id='btn_qldh' aria-current="page" href="admin_qldh.php">
                                    <div onmouseover="m_over(this)" onmouseout="m_out(this)"
                                        class="alert alert-info animate__animated animate__pulse animate__repeat-2 animate__slow"
                                        role="alert">
                                        <h2 style="color:rgb(63, 230, 99)">Quản lý đơn hàng<h2>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

<?php
    include("connectdb.php");
    if(isset($_GET['username']))
    {
        $username = $_GET['username'];
    }
    $sql = "SELECT * FROM user WHERE username = '$username'";
    $user = mysqli_query($conn, $sql);
    mysqli_num_rows($user);
    $row = mysqli_fetch_array($user);
            $username = $row['username'];
            $password = $row['password'];
            $name = $row['name'];
            $phone = $row['phone'];
            $email = $row['email'];
            $conn->close();
?>


            <div class="col-9">
                <div class="right">
                    <div class=" text-center  animate__animated animate__pulse animate__infinite animate__slow" role="alert">
                            <h2 style="color:blueviolet">Cuộc đời ta thay đổi theo hai cách: <br>Qua những người ta gặp và qua những cuốn sách ta đọc.<h2>
                    </div>
                    <div class="update animate__animated animate__bounceInDown">
                        <form action="update_user_db.php" method="POST">
                            <div class="row">
                                <div class="text-center">
                                    <img class="animate__animated animate__pulse animate__slow	 animate__infinite" src="../..//img/book.png" width="200px">
                                </div>
                                <div class="col-6">
                                    <h5>Tên đăng nhập</h5>
                                    <input oninput="oip(this)" onblur="obl_tk(this)" onfocus="ofc(this)" disabled
                                        class="form-control" type="text" value=<?php echo$username?> >
                                    <span class="form-message"></span>
                                </div>
                                <div class="col-6" style="display:none">
                                    <h5>Tên đăng nhập</h5>
                                    <input oninput="oip(this)" onblur="obl_tk(this)" onfocus="ofc(this)" name="username"
                                        class="form-control" type="text" value=<?php echo$username?> >
                                    <span class="form-message"></span>
                                </div>
                                <div class="col-6">
                                    <h5>Họ và tên</h5>
                                    <input oninput="oip(this)" onblur="obl_hoten(this)" onfocus="ofc(this)" name="name"
                                        class="form-control" type="text"value='<?php echo$name?>' >
                                    <span class="form-message"></span>
                                </div>
                                <div class="col-6">
                                    <h5>Số điện thoại</h5>
                                    <input oninput="oip(this)" onblur="obl_sdt(this)" onfocus="ofc(this)" name="phone"
                                        class="form-control" value=<?php echo$phone?> >
                                    <span class="form-message"></span>
                                </div>
                                <div class="col-6">
                                    <h5>Email</h5>
                                    <input oninput="oip(this)" onblur="obl_email(this)" onfocus="ofc(this)" name="email"
                                        class="form-control" type="email" value=<?php echo$email?> >
                                    <span class="form-message"></span>
                                </div>
                                <div class="col-6 dplnone dplnone1" >
                                    <h5>Mật khẩu</h5>
                                    <input oninput="oip(this)" onblur="obl_mk(this)" onfocus="ofc(this)" name="password"
                                        class="form-control" type="password" id="password" placeholder="Password">
                                    <span class="form-message"></span>
                                </div>
                                <div class="col-6 dplnone dplnone1" >
                                    <h5>Nhập lại mật khẩu</h5>
                                    <input oninput="oip(this)" onblur="obl_remk(this)" onfocus="ofc(this)"
                                        name="repassword" class="form-control" id="repassword" type="password" placeholder="Confirm Password">
                                    <span class="form-message"></span>
                                </div>
                                <div class="checkbox-mk">
                                    <p><input onchange="dplnone()" name ='checkbox' type = "checkbox">  Đổi mật khẩu</p>
                                </div>
                                <div>
                                    <button type="submit" name="submit" class="btn btn-update w-100 ">Sửa</button>
                                </div>
                            </div>

                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>





    <script src="../../js/main.js"></script>
    <script src="../js/admin.js"></script>
    <script src="../../../vendors/js/jquery-3.6.0.js"></script>
    <script src="../../../vendors/js/bootstrap.js"></script>
</body>

</html>