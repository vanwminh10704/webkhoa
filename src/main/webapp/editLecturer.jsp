<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sửa Giảng Viên</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4">Sửa Giảng Viên</h2>

    <form action="ltrController" method="POST">
        <!-- Trường ẩn chứa ID của giảng viên -->
        <input type="hidden" name="action" value="update">
        <input type="hidden" name="id" value="${lecturer.id}">

        <div class="mb-3">
            <label for="name" class="form-label">Họ tên:</label>
            <input type="text" class="form-control" id="name" name="ten" value="${lecturer.ten}" required>
        </div>

        <div class="mb-3">
            <label for="chucDanh" class="form-label">Chức danh:</label>
            <input type="text" class="form-control" id="chucDanh" name="chucDanh" value="${lecturer.chucDanh}" required>
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">Email:</label>
            <input type="email" class="form-control" id="email" name="email" value="${lecturer.email}" required>
        </div>

        <div class="mb-3">
            <label for="boMon" class="form-label">Bộ môn:</label>
            <input type="text" class="form-control" id="boMon" name="boMon" value="${lecturer.boMon}" required>
        </div>

        <div class="mb-3">
            <label for="urlImage" class="form-label">URL Hình ảnh:</label>
            <input type="text" class="form-control" id="urlImage" name="urlImage" value="${lecturer.urlImage}" required>
        </div>

        <button type="submit" class="btn btn-primary">Cập nhật</button>
        <a href="ltrController?action=list" class="btn btn-secondary">Hủy</a>
    </form>
</div>
</body>
</html>
