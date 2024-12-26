<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Quản Lý - Admin</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .sidebar {
            height: 100vh;
            background-color: #343a40;
            color: white;
            position: fixed;
            padding: 20px;
            width: 250px;
        }
        .sidebar a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 10px;
            margin-bottom: 5px;
            border-radius: 5px;
        }
        .sidebar a:hover {
            background-color: #495057;
        }
        .main-content {
            margin-left: 260px;
            padding: 20px;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <h4>Quản Lý - Admin</h4>
        <a href="ltrController?action=list">Quản lý Giảng viên</a>
        <a href="studentController?action=list">Quản lý Sinh viên</a>
    </div>

    <!-- Nội dung chính -->
    <div class="main-content">
        <h3 class="mb-4">Chào mừng, Admin!</h3>
        <div class="row">
            <!-- Card 1 -->
            <div class="col-md-4">
                <div class="card text-center bg-primary text-white">
                    <div class="card-body">
                        <h5 class="card-title">Quản lý Giảng viên</h5>
                        <p class="card-text">Xem danh sách, thêm, sửa hoặc xóa giảng viên.</p>
                        <a href="ltrController?action=list" class="btn btn-light">Xem chi tiết</a>
                    </div>
                </div>
            </div>
            <!-- Card 2 -->
            <div class="col-md-4">
                <div class="card text-center bg-success text-white">
                    <div class="card-body">
                        <h5 class="card-title">Quản lý Sinh viên</h5>
                        <p class="card-text">Xem danh sách, thêm, sửa hoặc xóa sinh viên.</p>
                        <a href="studentController?action=list" class="btn btn-light">Xem chi tiết</a>
                    </div>
                </div>
            </div>
            

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>