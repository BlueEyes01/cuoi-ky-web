<?php
       include 'check_login.php';
?>
<?php include"header.php"; ?>
<title>Quản lý sách</title>
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
                            
                            <li class="nav-item them">
                                <a class="nav-link active" id ='btn_qls' aria-current="page" href="admin_qls.php">
                                    <div onmouseover="m_over(this)" onmouseout = "m_out(this)" class="alert alert-primary animate__animated animate__pulse animate__repeat-2 animate__slow" role="alert">
                                        <h2 style="color:rgb(63, 230, 99)">Thêm sách<h2>
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
                            <li class="nav-item">
                                <a class="nav-link active" id = "btn_qltk" aria-current="page" href="logout.php">
                                    <div onmouseover="m_over(this)" onmouseout = "m_out(this)" class="alert alert-info animate__animated animate__pulse animate__repeat-2 animate__slow" role="alert">
                                        <h2 style="color:red">Đăng xuất<h2>
                                    </div>
                                </a>
                            </li>    
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-9">
                <div class="right">
                    <!-- database -->
                </div>
            </div>
        </div>
    </div>
<?php include"footer.php";?>