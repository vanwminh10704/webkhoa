<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">    
    <!-- CSS Tùy chỉnh -->
    <link rel="stylesheet" href="css/style.css">
    <style>
        .logo {
            width: 100px;  
            height: 100px; 
            border-radius: 50%; 
            object-fit: cover; 
        }
    </style>
</head>
<body>
    <!-- Header -->
   <header class="bg-white">
    <div class="container">
        <div class="d-flex align-items-center py-2">
            <!-- Logo -->
            <img src="images/Logo-ued.png" alt="Logo UED" width="100" class="logo">
            <!-- Text bên cạnh -->
            <div>
                <h6 class="mb-0">KHOA TIN HỌC</h6>
                <h5 class="mb-0">TRƯỜNG ĐẠI HỌC SƯ PHẠM - ĐẠI HỌC ĐÀ NẴNG</h5>
            </div>
        </div>
    </div>
</header>
    
    <!-- Thanh điều hướng -->
<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand" href="home.jsp">Trang chủ</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto"> 
                <!-- Dropdown Giới thiệu -->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Giới thiệu
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="gioithieuchung.jsp">Giới thiệu chung</a>
                        <a class="dropdown-item" href="lecturerController.java">Cơ cấu tổ chức</a>
                    </div>
                </li>
                
                <li class="nav-item"><a class="nav-link" href="students.jsp">Sinh viên</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Đào tạo
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="daotaodaihoc.jsp">Đào tạo đại học</a>
                        <a class="dropdown-item" href="#">Đào tạo sau đại học</a>
                    </div>
                </li>
                
                <li class="nav-item"><a class="nav-link" href="congthongtin.jsp">Cổng thông tin</a></li>  
                <li class="nav-item"><a class="nav-link" href="login.jsp">Đăng nhập</a></li>                              
            </ul>
        </div>
    </div>
</nav>
<body>
    <div class="contact">
        <h1>Thông tin liên hệ</h1>
       <ul>
            <li><strong>Văn phòng:</strong> B1 – 303A</li>
            <li><strong>Phòng Trưởng Khoa:</strong> B1 – 303B</li>
            <li><strong>Địa chỉ:</strong> 459 Tôn Đức Thắng, quận Liên Chiểu, TP. Đà Nẵng</li>
            <li><strong>Điện thoại:</strong> 0236 3841323 (số máy lẻ 120)</li>
            <li><strong>Website:</strong> <a href="https://it.ued.udn.vn" target="_blank">https://it.ued.udn.vn</a></li>
            <li><strong>Facebook:</strong> <a href="https://www.facebook.com/khoatinhoc" target="_blank">https://www.facebook.com/khoatinhoc</a></li>
        </ul>
        <h3>Ban chủ nhiệm khoa:</h3>
        <ul>
            <li><strong>Trưởng Khoa:</strong> TS. Nguyễn Trần Quốc Vinh. Email: <a href="mailto:ntqvinh@ued.udn.vn">ntqvinh@ued.udn.vn</a></li>
            <li><strong>Phó Trưởng khoa:</strong> TS. Phạm Anh Phương. Email: <a href="mailto:paphuong@ued.udn.vn">paphuong@ued.udn.vn</a></li>
            <li><strong>Phó Trưởng khoa:</strong> TS. Phạm Dương Thu Hằng. Email: <a href="mailto:pdthang@ued.udn.vn">pdthang@ued.udn.vn</a></li>
        </ul>

        <h3>Thư ký khoa:</h3>
        <ul>
            <li><strong>Cô Trần Thuỳ Trang</strong></li>
            <li>Email: <a href="mailto:tttrang@ued.udn.vn">tttrang@ued.udn.vn</a></li>
        </ul>

        <h3>Trợ lý Sau đại học:</h3>
        <ul>
            <li><strong>TS. Nguyễn Đình Lầu</strong></li>
            <li>Email: <a href="mailto:ndlau@ued.udn.vn">ndlau@ued.udn.vn</a></li>
        </ul>

        <h3>Quản lý website khoa & trang Facebook khoa:</h3>
        <ul>
            <li><strong>TS. Nguyễn Hoàng Hải</strong></li>
            <li>Email: <a href="mailto:nhhai@ued.udn.vn">nhhai@ued.udn.vn</a></li>
        </ul>
    </div>
</body>
</html>
