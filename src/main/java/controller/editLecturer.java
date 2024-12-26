package controller;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/editLecturer")
public class editLecturer extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/databasewebsitekhoatin";
    private static final String DB_USERNAME = "root";
    private static final String DB_PASSWORD = "28112004";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy ID từ tham số URL
        String id = request.getParameter("id");

        // Kiểm tra ID có hợp lệ hay không
        if (id == null || id.isEmpty()) {
            response.sendRedirect("ltrController.java?error=invalid_id");
            return;
        }

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD)) {
            // Truy vấn thông tin giảng viên dựa vào ID
            String sql = "SELECT * FROM lecturers WHERE id = ?";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, id);
                ResultSet rs = stmt.executeQuery();
                if (rs.next()) {
                    // Gửi thông tin giảng viên đến JSP
                    request.setAttribute("lecturer", rs);
                    request.getRequestDispatcher("editLecturer.jsp").forward(request, response);
                } else {
                    response.sendRedirect("ltrController.java?error=not_found");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("ltrController.java?error=database_error");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy dữ liệu từ form
        String id = request.getParameter("id");
        String ten = request.getParameter("ten");
        String chucDanh = request.getParameter("chucDanh");
        String email = request.getParameter("email");
        String boMon = request.getParameter("boMon");
        String urlImage = request.getParameter("urlImage");

        // Kiểm tra dữ liệu đầu vào
        if (id == null || id.isEmpty() || ten == null || chucDanh == null || email == null || boMon == null || urlImage == null) {
            response.sendRedirect("editLecturer.jsp?id=" + id + "&error=invalid_input");
            return;
        }

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD)) {
            // Cập nhật thông tin giảng viên
            String sql = "UPDATE lecturers SET ten = ?, chucDanh = ?, email = ?, boMon = ?, image_url = ? WHERE id = ?";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, ten);
                stmt.setString(2, chucDanh);
                stmt.setString(3, email);
                stmt.setString(4, boMon);
                stmt.setString(5, urlImage);
                stmt.setString(6, id);

                int rowsUpdated = stmt.executeUpdate();
                if (rowsUpdated > 0) {
                    response.sendRedirect("ltrController.java?success=update_success");
                } else {
                    response.sendRedirect("editLecturer.jsp?id=" + id + "&error=update_failed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("editLecturer.jsp?id=" + id + "&error=database_error");
        }
    }
}
