<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sinh viên</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center">Trang Sinh viên</h1>

        <!-- Thông báo trạng thái -->
        <%
            String status = request.getParameter("status");
            if ("registered".equals(status)) {
        %>
           
            <div class="alert alert-danger text-center">Email hoặc mật khẩu không đúng.</div>
        <% } %>

            <!-- Form đăng nhập -->
            <div class="col-md-6">
                <h3>Đăng nhập</h3>
                <form action="login" method="post">
                <div class="mb-3">
                        <label for="loginmasinhvien" class="form-label">Mã sinh viên</label>
                        <input type="masinhvien" class="form-control" id="loginmasinhvien" name="loginmasinhvien" required>
                    </div>
                    <div class="mb-3">
                        <label for="loginEmail" class="form-label">Email</label>
                        <input type="email" class="form-control" id="loginEmail" name="loginEmail" required>
                    </div>
                    <div class="mb-3">
                        <label for="loginPassword" class="form-label">Mật khẩu</label>
                        <input type="password" class="form-control" id="loginPassword" name="loginPassword" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Đăng nhập</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
