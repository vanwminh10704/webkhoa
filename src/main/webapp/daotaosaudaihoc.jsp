<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">    
    <!-- CSS Tùy chỉnh -->
    <link rel="stylesheet" href="css/style.css">
    <style>
        
        /* Bảng Đào Tạo Đại Học */
.training-table {
    width: 100%;
    border-collapse: collapse;
    margin: 50px 0;
    font-size: 16px;
    text-align: left;
}
</style>
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
                        <a class="dropdown-item" href="daotáoaudaihoc.jsp">Đào tạo sau đại học</a>
                    </div>
                </li>
                
                <li class="nav-item"><a class="nav-link" href="congthongtin.jsp">Cổng thông tin</a></li>  
                <li class="nav-item"><a class="nav-link" href="login.jsp">Đăng nhập</a></li>                              
            </ul>
        </div>
    </div>
</nav>
<!-- Nội dung chính -->
  
     <!-- Bảng khung chương trình đào tạo -->
<div class="section">
    <h2>Khung chương trình đào tạo</h2>
    <table border="1" cellspacing="0" cellpadding="10" style="width: 100%; border-collapse: collapse; text-align: center;">
        <thead style="background-color: #f2f2f2;">
            <tr>
                <th>STT</th>               
                <th>Ngành đào tạo</th>
                <th>Số tín chỉ</th>
                <th>Chương trình đào tạo</th>
          
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>               
                <td>Hệ thống thông tin</td>
                <td>120</td>
                <td><a href="https://drive.google.com/file/d/1ANETUdyrxHWVE2hVuJQBlnqwAH4w5O3l/view?usp=drive_link">Xem chi tiết</a></td>
                
            </tr>
            <tr>
                <td>2</td>               
                <td>LL và PP dạy học bộ môn Tin học</td>
                <td>70</td>
                <td><a href="https://drive.google.com/file/d/1h9v10WsiJeP3svtaZAO-BOILulgQJv2s/view?usp=drive_link">Xem chi tiết</a></td>
                
            </tr>
            
        </tbody>
    </table>
</div>
        
    </div>

    <!-- Footer -->
    <footer>
        <p>© 2024 Khoa Tin học - Trường Đại học Sư phạm, Đại học Đà Nẵng</p>
    </footer>
</body>
</html>
    
