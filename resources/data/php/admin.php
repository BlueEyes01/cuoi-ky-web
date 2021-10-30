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
                                <a class="nav-link active" onclick="login_admin()" id="btn_qltk" aria-current="page"
                                    href="#">
                                    <div onmouseover="m_over(this)" onmouseout="m_out(this)"
                                        class="alert alert-info animate__animated animate__pulse animate__repeat-2 animate__slow"
                                        role="alert">
                                        <h2 style="color:rgb(63, 230, 99)">Quản lý tài khoản<h2>
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" onclick="login_admin()" id='btn_qls' aria-current="page"
                                    href="#">
                                    <div onmouseover="m_over(this)" onmouseout="m_out(this)"
                                        class="alert alert-info animate__animated animate__pulse animate__repeat-2 animate__slow"
                                        role="alert">
                                        <h2 style="color:rgb(63, 230, 99)">Quản lý sách<h2>
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" onclick="login_admin()" id='btn_qldh' aria-current="page"
                                    href="#">
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
            <div class="col-9">
                <div class="right ">
                    <div class=" text-center  animate__animated animate__pulse animate__infinite animate__slow"
                        role="alert">
                        <h2 style="color:blueviolet">Cuộc đời ta thay đổi theo hai cách: <br>Qua những người ta gặp và
                            qua những cuốn sách ta đọc.<h2>
                    </div>
                    <div class="text-center">
                        <img class=" img1 animate__animated animate__pulse animate__slow	2s animate__infinite	infinite"
                            src="../..//img/book.png" width="200px">
                    </div>
                        <div class="login animate__animated animate__backInRight">
                            <div class="text-center">
                                <h2 style="color : red">Đăng nhập nào admin</h2>
                            </div>

                                <form action="" method="post">
                                    <div>
                                        <h5>Tên đăng nhập</h5>
                                        <input oninput="oip(this)" onblur="obl_tk(this)" onfocus="ofc(this)"
                                            class="form-control" type="text" name="username" placeholder="User name">
                                        <span class="form-message"></span>
                                    </div>

                                    <div>
                                        <h5>Mật khẩu</h5>
                                        <input oninput="oip(this)" onblur="obl_mk(this)" onfocus="ofc(this)"
                                            name = password class="form-control" type="password" placeholder="Password">
                                        <span class="form-message"></span>
                                        <div><button id="btn-login" type="submit" name="submit"  class="btn d-block w-100 ">Đăng nhập</button>
                                        </div>
                                    </div>
                                </form>
                        </div>
                        <div class="tb-login alert alert-danger text-right dplnone" role="alert">
                            Tên đăng nhập hoặc mật khẩu không chính xác !
                        </div>
                </div>
            </div>
        </div>
    </div>


    <script src="../js/admin.js"></script>
    <script src="../../../vendors/js/jquery-3.6.0.js"></script>
    <script src="../../../vendors/js/bootstrap.js"></script>
</body>

</html>