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
    margin: 20px 0;
    font-size: 16px;
    text-align: left;
}

.training-table th, .training-table td {
    border: 1px solid #ddd;
    padding: 15px;
    vertical-align: top; /* Căn các ô theo top */
}

.training-table th {
    background-color: #0D47A1;
    color: white;
    font-weight: bold;
    text-align: center;
}

.training-table tr:nth-child(even) {
    background-color: #f2f2f2; /* Màu nền xen kẽ */
}

.training-table tr:hover {
    background-color: #ddd; /* Hiệu ứng hover */
}

.training-table ul {
    margin: 0;
    padding-left: 20px;
}

.training-table li {
    margin-bottom: 5px;
}
        
        .logo {
            width: 100px;  
            height: 100px; 
            border-radius: 50%; 
            object-fit: cover; 
        }
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            color: #333;
        }

        /* Header */
        header {
            background-color: #002147;
            color: white;
            padding: 20px 10px;
            text-align: center;
        }

        header h1 {
            margin-bottom: 10px;
            font-size: 28px;
        }

        header p {
            font-size: 16px;
        }

        /* Main content */
        .main-content {
            padding: 30px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .section {
            margin-bottom: 40px;
        }

        .section h2 {
            font-size: 24px;
            margin-bottom: 10px;
            color: #002147;
        }

        .section p {
            text-align: justify;
            margin-bottom: 10px;
        }

        /* Footer */
        footer {
            background-color: #002147;
            color: white;
            text-align: center;
            padding: 10px 20px;
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
                        <a class="dropdown-item" href="daotaodaihoc.jsp">Đào tạo sau đại học</a>
                    </div>
                </li>
                
                <li class="nav-item"><a class="nav-link" href="congthongtin.jsp">Cổng thông tin</a></li>  
                <li class="nav-item"><a class="nav-link" href="login.jsp">Đăng nhập</a></li>                              
            </ul>
        </div>
    </div>
</nav>
    <!-- Nội dung chính -->
  <div class="main-content">
    <h1>Đào tạo Đại học</h1>
    <table class="training-table">
        <tr>
            <th>Ngành đào tạo</th>
            <th>Mô tả</th>
            <th>Vị trí việc làm</th>
        </tr>
        <!-- Ngành Sư phạm Tin học -->
        <tr>
            <td>1. Ngành Sư phạm Tin học</td>
            <td>
                Ngành Sư phạm Tin học đào tạo giáo viên giảng dạy Tin học cho các trường phổ thông. Sinh viên được trang bị kiến thức về công nghệ thông tin, phương pháp giảng dạy, và kỹ năng giáo dục. 
                Chương trình học kết hợp lý thuyết và thực hành, giúp sinh viên phát triển kỹ năng lập trình, quản lý lớp học và nghiên cứu giáo dục.
            </td>
            <td>
                <ul>
                    <li>Giáo viên Tin học bậc THPT/THCS</li>
                    <li>Chuyên viên Tin học tại các Phòng/Sở Giáo dục và Đào tạo</li>
                    <li>Giảng viên Tin học tại các trường Đại học/Cao đẳng</li>
                    <li>Nghiên cứu viên tại các viện/trung tâm nghiên cứu/ứng dụng Tin học</li>
                    <li>Chuyên viên tại các đơn vị có chức năng phân tích và xử lý số liệu</li>
                    <li>Lập trình viên tại các công ty chuyên ngành CNTT</li>
                </ul>
            </td>
        </tr>

        <!-- Ngành Công nghệ Thông tin -->
        <tr>
            <td>2. Ngành Công nghệ Thông Tin</td>
            <td>
                Ngành Công nghệ Thông Tin cung cấp kiến thức nền tảng và chuyên sâu về các lĩnh vực như phát triển phần mềm, quản lý hệ thống, bảo mật thông tin và trí tuệ nhân tạo. 
                Sinh viên được học các môn như lập trình, cơ sở dữ liệu, mạng máy tính, và có cơ hội thực tập tại các doanh nghiệp lớn trong ngành.
            </td>
            <td>
                <ul>
                    <li>Công nghệ phần mềm; Mạng máy tính; Phân tích, thiết kế và quản lý hệ thống thông tin</li>
                    <li>Nghiên cứu về kỹ thuật phần mềm; phát triển, kiểm thử và bảo trì phần mềm</li>
                    <li>Mạng máy tính, điện toán đám mây; trí tuệ nhân tạo và khai phá dữ liệu</li>
                    <li>Giảng dạy các kiến thức CNTT tại các trường ĐH, CĐ, trung học chuyên nghiệp và phổ thông</li>
                </ul>
            </td>
        </tr>

        <!-- Ngành CNTT Chất lượng Cao -->
        <tr>
            <td>3. Ngành Công nghệ Thông tin Chất lượng Cao</td>
            <td>
                Chương trình Chất lượng Cao tập trung đào tạo các kỹ sư CNTT với trình độ chuyên môn và ngoại ngữ tốt, đáp ứng nhu cầu nhân lực quốc tế. 
                Sinh viên được học trong môi trường hiện đại với giảng viên có kinh nghiệm, chương trình giảng dạy song ngữ và các dự án thực tế.
            </td>
            <td>
                <ul>
                    <li>Công nghệ phần mềm; Mạng máy tính; Phân tích, thiết kế và quản lý hệ thống thông tin</li>
                    <li>Nghiên cứu kỹ thuật phần mềm; phát triển, kiểm thử và bảo trì phần mềm</li>
                    <li>Mạng máy tính, điện toán đám mây; trí tuệ nhân tạo và khai phá dữ liệu</li>
                    <li>Giảng dạy các kiến thức CNTT tại các trường ĐH, CĐ, trung học chuyên nghiệp và phổ thông</li>
                </ul>
            </td>
        </tr>
    </table>
</div>

        <!-- Bảng khung chương trình đào tạo -->
<div class="section">
    <h2>Khung chương trình đào tạo</h2>
    <table border="1" cellspacing="0" cellpadding="10" style="width: 100%; border-collapse: collapse; text-align: center;">
        <thead style="background-color: #f2f2f2;">
            <tr>
                <th>STT</th>
                <th>Mã ngành</th>
                <th>Ngành đào tạo</th>
                <th>Số tín chỉ</th>
                <th>Chương trình đào tạo</th>
                <th>Chuẩn đầu ra</th>
                <th>Thông tin tuyển sinh</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>7480210</td>
                <td>Sư phạm Tin học</td>
                <td>130</td>
                <td><a href="https://drive.google.com/file/d/1yLyE7v4UxMvOCof3cNPEASNwuMZjhHeB/view?usp=drive_link">Xem chi tiết</a></td>
                <td><a href="#">Xem chi tiết</a></td>
                <td><a href="#">Xem chi tiết</a></td>
            </tr>
            <tr>
                <td>2</td>
                <td>7480201</td>
                <td>Công nghệ thông tin</td>
                <td>130</td>
                <td><a href="https://drive.google.com/file/d/1iCsHv9a7Oy-sEPqouUAP-qOxNlN9wqli/view?usp=drive_link">Xem chi tiết</a></td>
                <td><a href="#">Xem chi tiết</a></td>
                <td><a href="#">Xem chi tiết</a></td>
            </tr>
            <tr>
                <td>3</td>
                <td>7480201</td>
                <td>Công nghệ thông tin CLC</td>
                <td>130</td>
                <td><a href="https://drive.google.com/file/d/1aJcDN3vTEKnirMwozlZ8r50Jo5tmyzCS/view?usp=drive_link">Xem chi tiết</a></td>
                <td><a href="#">Xem chi tiết</a></td>
                <td><a href="#">Xem chi tiết</a></td>
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
