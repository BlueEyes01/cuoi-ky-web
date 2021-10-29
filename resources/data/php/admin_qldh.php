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
                    <div class="alert alert-info animate__animated animate__pulse animate__infinite animate__slow" role="alert">
                        <h2 style="color:red">Hi Admin ♥-♥<h2>
                    </div>
                    <div class="menu">
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link active" id = "btn_qltk" aria-current="page" href="admin_qltk.php">
                                    <div onmouseover="m_over(this)" onmouseout = "m_out(this)" class="alert alert-info animate__animated animate__pulse animate__repeat-2 animate__slow" role="alert">
                                        <h2 style="color:rgb(63, 230, 99)">Quản lý tài khoản<h2>
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" id ='btn_qls' aria-current="page" href="admin_qls.php">
                                    <div onmouseover="m_over(this)" onmouseout = "m_out(this)" class="alert alert-info animate__animated animate__pulse animate__repeat-2 animate__slow" role="alert">
                                        <h2 style="color:rgb(63, 230, 99)">Quản lý sách<h2>
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" id = 'btn_qldh' aria-current="page" href="admin_qldh.php">
                                    <div onmouseover="m_over(this)" onmouseout = "m_out(this)" class="alert alert-info animate__animated animate__pulse animate__repeat-2 animate__slow" role="alert">
                                        <h2 style="color:rgb(63, 230, 99)">Quản lý đơn hàng<h2>
                                    </div>
                                </a>
                            </li>     
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-9">
                <div class="right">
                 
                </div>
            </div>
        </div>
    </div>





    <script src="../js/admin.js"></script>
    <script src="../../../vendors/js/jquery-3.6.0.js"></script>
    <script src="../../../vendors/js/bootstrap.js"></script>
</body>

</html>