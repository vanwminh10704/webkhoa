package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.students;
import utills.dataConnection;

public class studentDao {

    // Lấy danh sách tất cả sinh viên
    public List<students> getAllStudents() throws Exception {
        List<students> listStudents = new ArrayList<>();
        String sql = "SELECT * FROM students WHERE id > 10";
        
        try (Connection conn = dataConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            
            while (rs.next()) {
                students student = new students();
                student.setId(rs.getInt("id"));
                student.setmasinhvien(rs.getString("masinhvien"));
                student.setEmail(rs.getString("email"));
                student.setPassword(rs.getString("password"));
                listStudents.add(student);
            }
        }
        return listStudents;
    }

    // Thêm một sinh viên mới
    public boolean addStudent(students student) throws Exception {
        if (studentExists(student.getmasinhvien())) {
            System.out.println("Error: Sinh viên với mã " + student.getmasinhvien() + " đã tồn tại.");
            return false;
        }
        String sql = "INSERT INTO students (masinhvien, email, password) VALUES (?, ?, ?)";
        try (Connection conn = dataConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, student.getmasinhvien());
            stmt.setString(2, student.getEmail());
            stmt.setString(3, student.getPassword());
            return stmt.executeUpdate() > 0;
        }
    }

    // Cập nhật thông tin sinh viên
    public void updateStudent(students student) {
        String query = "UPDATE students SET email = ?, password = ? WHERE id = ?";
        
        try (Connection connection = dataConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            
            statement.setString(1, student.getEmail());
            statement.setString(2, student.getPassword());
            statement.setInt(3, student.getId());
            
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    // Xóa một sinh viên
    public boolean deleteStudent(int id) throws Exception {
        String sql = "DELETE FROM students WHERE id = ?";
        try (Connection conn = dataConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            return stmt.executeUpdate() > 0;
        }
    }

    // Lấy thông tin sinh viên theo id
    public students getStudentByMaSV(String msv) throws Exception {
        String sql = "SELECT * FROM students WHERE id = ?";
        try (Connection conn = dataConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, msv);;
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return new students(
                            rs.getInt("id"),
                            rs.getString("masinhvien"),
                            rs.getString("email"),
                            rs.getString("password")
                    );
                }
            }
        }
        return null;
    }
    
    public students getStudentByID(int id) throws Exception {
        String sql = "SELECT * FROM students WHERE id = ?";
        try (Connection conn = dataConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);;
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return new students(
                            rs.getInt("id"),
                            rs.getString("masinhvien"),
                            rs.getString("email"),
                            rs.getString("password")
                    );
                }
            }
        }
        return null;
    }

    // Kiểm tra sinh viên tồn tại
    public boolean studentExists(String masinhvien) throws Exception {
        String sql = "SELECT COUNT(*) FROM students WHERE masinhvien = ?";
        try (Connection conn = dataConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, masinhvien);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1) > 0;
                }
            }
        }
        return false;
    }
    
    public static void main(String[] args) throws Exception {
		studentDao dao = new studentDao();
		List<students> list = dao.getAllStudents();
		for (students students : list) {
			System.out.println("list: " + list );
		}
	}
    
}
