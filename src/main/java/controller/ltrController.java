package controller;

import java.io.IOException;
import java.util.List;

import dao.ltrDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.lecturer;

@WebServlet("/ltrController")
public class ltrController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private ltrDao lecturerDao;

    @Override
    public void init() throws ServletException {
        lecturerDao = new ltrDao();  // Initialize ltrDao
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            if (action == null) {
                action = "list";  // Default action
            }

            switch (action) {
                case "list":
                    List<lecturer> lecturerList = lecturerDao.getAllLecturers();  // Get all lecturers
                    request.setAttribute("lecturerList", lecturerList);
                    request.getRequestDispatcher("lecturerManagement.jsp").forward(request, response);
                    break;

                case "update":
                    int updateId = Integer.parseInt(request.getParameter("id"));
                    lecturer lecturerToUpdate = lecturerDao.getLecturerById(updateId);  // Get lecturer by ID
                    request.setAttribute("lecturer", lecturerToUpdate);
                    request.getRequestDispatcher("editLecturer.jsp").forward(request, response);
                    break;

                case "delete":
                    int deleteId = Integer.parseInt(request.getParameter("id"));
                    lecturerDao.deleteLecturer(deleteId);  // Delete lecturer
                    request.setAttribute("message", "Xóa giảng viên thành công!");
                    request.setAttribute("messageType", "alert-success");
                    List<lecturer> lecturerListAfterDelete = lecturerDao.getAllLecturers();  // Get updated list
                    request.setAttribute("lecturerList", lecturerListAfterDelete);
                    request.getRequestDispatcher("lecturerManagement.jsp").forward(request, response);
                    break;

                default:
                    request.setAttribute("message", "Hành động không hợp lệ!");
                    request.setAttribute("messageType", "alert-warning");
                    request.getRequestDispatcher("lecturerManagement.jsp").forward(request, response);
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
                    // Collect form data for new lecturer
                    String name = request.getParameter("ten");
                    String email = request.getParameter("email");
                    String position = request.getParameter("chucDanh");
                    String department = request.getParameter("boMon");
                    String imageUrl = request.getParameter("urlImage");

                    lecturer newLecturer = new lecturer();
                    newLecturer.setTen(name);
                    newLecturer.setEmail(email);
                    newLecturer.setChucDanh(position);
                    newLecturer.setBoMon(department);
                    newLecturer.setUrlImage(imageUrl);

                    lecturerDao.addLecturer(newLecturer);  // Add lecturer

                    request.setAttribute("message", "Thêm giảng viên thành công!");
                    request.setAttribute("messageType", "alert-success");

                    List<lecturer> lecturerList = lecturerDao.getAllLecturers();  // Get all lecturers
                    request.setAttribute("lecturerList", lecturerList);

                    request.getRequestDispatcher("lecturerManagement.jsp").forward(request, response);
                    break;

                case "update":
                    // Collect form data for updating lecturer
                    int id = Integer.parseInt(request.getParameter("id"));
                    String updatedName = request.getParameter("ten");
                    String updatedEmail = request.getParameter("email");
                    String updatedPosition = request.getParameter("chucDanh");
                    String updatedDepartment = request.getParameter("boMon");
                    String updatedImageUrl = request.getParameter("urlImage");

                    lecturer updatedLecturer = new lecturer();
                    updatedLecturer.setId(id);
                    updatedLecturer.setTen(updatedName);
                    updatedLecturer.setEmail(updatedEmail);
                    updatedLecturer.setChucDanh(updatedPosition);
                    updatedLecturer.setBoMon(updatedDepartment);
                    updatedLecturer.setUrlImage(updatedImageUrl);

                    lecturerDao.updateLecturer(updatedLecturer);  // Update lecturer

                    request.setAttribute("message", "Cập nhật giảng viên thành công!");
                    request.setAttribute("messageType", "alert-success");

                    List<lecturer> updatedLecturerList = lecturerDao.getAllLecturers();  // Get updated list
                    request.setAttribute("lecturerList", updatedLecturerList);

                    request.getRequestDispatcher("lecturerManagement.jsp").forward(request, response);
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
