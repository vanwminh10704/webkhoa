package controller;

import java.io.IOException;
import java.util.List;

import dao.studentDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.students;

@WebServlet("/studentController")
public class studentController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	public studentDao studentDao;

	@Override
	public void init() throws ServletException {
		studentDao = new studentDao();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");

		try {
			if (action == null) {
				action = "list";
			}

			switch (action) {
			case "list":
				List<students> studentsList = studentDao.getAllStudents();
				request.setAttribute("studentList", studentsList);
				request.getRequestDispatcher("studentsManagement.jsp").forward(request, response);
				break;

			case "search":
				String masinhvienSearch = request.getParameter("search");
				if (masinhvienSearch != null && !masinhvienSearch.isEmpty()) {
					students searchResults = studentDao.getStudentByMaSV(masinhvienSearch);
					request.setAttribute("studentList", searchResults);
				} else {
					List<students> allStudents = studentDao.getAllStudents();
					request.setAttribute("studentList", allStudents);
				}
				request.getRequestDispatcher("studentsManagement.jsp").forward(request, response);
				break;

			case "update":
				int updateId = Integer.parseInt(request.getParameter("id"));
				students studentToUpdate = studentDao.getStudentByID(updateId);
				request.setAttribute("student", studentToUpdate);
				request.getRequestDispatcher("editstudent.jsp").forward(request, response);
				break;

			case "delete":
				int deleteId = Integer.parseInt(request.getParameter("id"));
				studentDao.deleteStudent(deleteId);
				request.setAttribute("message", "Xóa sinh viên thành công!");
				request.setAttribute("messageType", "alert-success");
				List<students> studentsListAfterDelete = studentDao.getAllStudents();
				request.setAttribute("studentList", studentsListAfterDelete);
				request.getRequestDispatcher("studentsManagement.jsp").forward(request, response);
				break;

			default:
				request.setAttribute("message", "Hành động không hợp lệ!");
				request.setAttribute("messageType", "alert-warning");
				request.getRequestDispatcher("studentsManagement.jsp").forward(request, response);
				break;
			}

		} catch (Exception e) {
			throw new ServletException("Lỗi khi xử lý yêu cầu GET", e);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		try {
			switch (action) {
			case "add":
				String masinhvien = request.getParameter("masinhvien");
				String email = request.getParameter("email");
				String password = request.getParameter("password");

				students student = new students();
				student.setmasinhvien(masinhvien);
				student.setEmail(email);
				student.setPassword(password);

				studentDao.addStudent(student);

				request.setAttribute("message", "Thêm sinh viên thành công!");
				request.setAttribute("messageType", "alert-success");

				List<students> studentsList = studentDao.getAllStudents();
				request.setAttribute("studentList", studentsList);

				request.getRequestDispatcher("studentsManagement.jsp").forward(request, response);
				break;

			case "update":
				int id = Integer.parseInt(request.getParameter("id"));
				String updatedEmail = request.getParameter("email");
				String updatedPassword = request.getParameter("password");

				students updatedStudent = new students();
				updatedStudent.setId(id);
				updatedStudent.setEmail(updatedEmail);
				updatedStudent.setPassword(updatedPassword);

				studentDao.updateStudent(updatedStudent);

				request.setAttribute("message", "Cập nhật sinh viên thành công!");
				request.setAttribute("messageType", "alert-success");

				List<students> updatedStudentList = studentDao.getAllStudents();
				request.setAttribute("studentList", updatedStudentList);

				request.getRequestDispatcher("studentsManagement.jsp").forward(request, response);
				break;

			default:
				request.setAttribute("message", "Hành động không hợp lệ!");
				request.setAttribute("messageType", "alert-warning");
				break;
			}
		} catch (Exception e) {
			throw new ServletException("Lỗi khi xử lý yêu cầu POST", e);
		}
	}

}
