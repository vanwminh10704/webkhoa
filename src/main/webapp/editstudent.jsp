<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sửa Thông Tin Sinh Viên</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container mt-5">
		<h2>Sửa Thông Tin Sinh Viên</h2>

		<!-- Hiển thị thông báo nếu có -->
		<c:if test="${not empty message}">
			<div class="alert ${messageType} alert-dismissible fade show" role="alert">
				${message}
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>
		</c:if>

		<!-- Form sửa thông tin sinh viên -->
		<form action="studentController" method="POST">
			<input type="hidden" name="action" value="update">
			<input type="hidden" name="id" value="${student.id}">
			<div class="mb-3">
				<label for="masinhvien" class="form-label">Mã Sinh Viên:</label>
				<input type="text" class="form-control" id="masinhvien" name="masinhvien" value="${student.masinhvien}" disabled>
			</div>
			<div class="mb-3">
				<label for="email" class="form-label">Email:</label>
				<input type="email" class="form-control" id="email" name="email" value="${student.email}" required>
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">Mật khẩu:</label>
				<input type="password" class="form-control" id="password" name="password" value="${student.password}" required>
			</div>
			<button type="submit" class="btn btn-primary">Cập nhật</button>
		</form>
	</div>
</body>
</html>
