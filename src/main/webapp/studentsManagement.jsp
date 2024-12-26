<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý Sinh viên</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container mt-5">
		<h2>Danh sách Sinh viên</h2>

		<!-- Form tìm kiếm -->
		<form action="studentController?action=list" method="GET" class="mb-3">
			<div class="input-group">
				<input type="text" class="form-control" name="search"
					placeholder="Tìm sinh viên theo mã..." value="${param.search}">
				<button class="btn btn-primary" type="submit">Tìm kiếm</button>
			</div>
		</form>

		<!-- Hiển thị thông báo nếu có -->
		<c:if test="${not empty message}">
			<div class="alert ${messageType} alert-dismissible fade show"
				role="alert">
				${message}
				<button type="button" class="btn-close" data-bs-dismiss="alert"
					aria-label="Close"></button>
			</div>
		</c:if>

		<!-- Hiển thị danh sách sinh viên -->
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>ID</th>
					<th>Mã Sinh viên</th>
					<th>Email</th>
					<th>Hành động</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${not empty studentList}">
						<c:forEach var="student" items="${studentList}">
							<tr>
								<td>${student.id}</td>
								<td>${student.masinhvien}</td>
								<td>${student.email}</td>
								<td><a
									href="studentController?action=update&id=${student.id}"
									class="btn btn-warning btn-sm">Sửa</a> <a
									href="studentController?action=delete&id=${student.id}"
									class="btn btn-danger btn-sm"
									onclick="return confirm('Bạn có chắc chắn muốn xóa sinh viên có mã số ${student.masinhvien}?');">Xóa</a>
								</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="4" class="text-center">Không có sinh viên nào!</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>

	<!-- Thêm sinh viên mới -->
	<div class="container mt-4">
		<h4>Thêm Sinh Viên</h4>
		<form action="studentController" method="POST" class="mt-3">
			<input type="hidden" name="action" value="add">
			<!-- Thêm tham số action -->
			<div class="mb-3">
				<label for="masinhvien" class="form-label">Mã Sinh Viên:</label> <input
					type="text" id="masinhvien" name="masinhvien" class="form-control"
					required>
			</div>
			<div class="mb-3">
				<label for="email" class="form-label">Email:</label> <input
					type="email" id="email" name="email" class="form-control" required>
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">Mật khẩu:</label> <input
					type="password" id="password" name="password" class="form-control"
					required>
			</div>
			<button type="submit" class="btn btn-primary">Thêm mới</button>
		</form>

	</div>
</body>
</html>
