<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="home.jsp">Khoa Tin học</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item"><a class="nav-link" href="#">Thông báo</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Lịch học</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Xem điểm</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Tài liệu học tập</a></li>
                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                       <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
    <%
        String studentmasinhvien = (String) session.getAttribute("studentmasinhvien");
        if (studentmasinhvien != null) {
            out.print(studentmasinhvien); // Hiển thị tên sinh viên từ session
        } else {
            out.print("mã sinh viên"); // Mặc định nếu chưa đăng nhập
        }
    %>
</a>
                        <ul class="dropdown-menu dropdown-menu-end">
                            <li><a class="dropdown-item" href="#">Thông tin cá nhân</a></li>
                            <li><a class="dropdown-item" href="#">Đăng xuất</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Content Section -->
    <div class="container mt-4">
        <div class="row">
            <!-- Notifications -->
            <div class="col-md-6 mb-3">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        Thông báo mới nhất
                    </div>
                    <div class="card-body">
                        <ul>
                            <li>Thông báo 1: Lịch thi cuối kỳ.</li>
                            <li>Thông báo 2: Nộp học phí trước 30/12.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Quick Links -->
            <div class="col-md-6 mb-3">
                <div class="card">
                    <div class="card-header bg-success text-white">
                        Liên kết nhanh
                    </div>
                    <div class="card-body">
                        <a href="#" class="btn btn-primary mb-2">Lịch học</a>
                        <a href="#" class="btn btn-secondary mb-2">Xem điểm</a>
                        <a href="#" class="btn btn-success">Đăng ký môn học</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Timetable -->
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header bg-info text-white">
                        Lịch học tuần này
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead class="table-dark">
                                <tr>
                                    <th>Thứ</th>
                                    <th>Buổi sáng</th>
                                    <th>Buổi chiều</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Thứ 2</td>
                                    <td>Toán Ứng Dụng - Phòng 101</td>
                                    <td>Lập Trình Java - Phòng 202</td>
                                </tr>
                                <tr>
                                    <td>Thứ 3</td>
                                    <td>Vắng</td>
                                    <td>Kỹ Thuật Mạng - Phòng 303</td>
                                </tr>
                                <!-- Add more rows as needed -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center py-3 mt-4">
        <p>Khoa Tin học - Đại học Sư phạm Đà Nẵng</p>
        <p>Văn phòng: B1 – 303A | Số điện thoại: 0236 3841323</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
