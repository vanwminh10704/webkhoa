package dao;

import model.lecturer;
import utills.dataConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ltrDao {

    // Lấy danh sách tất cả giảng viên
    public List<lecturer> getAllLecturers() throws Exception {
        List<lecturer> lecturers = new ArrayList<>();
        String sql = "SELECT * FROM Lecturer";
        
        try (Connection conn = dataConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            
            while (rs.next()) {
                lecturer lec = new lecturer();
                lec.setId(rs.getInt("id"));
                lec.setTen(rs.getString("ten"));
                lec.setChucDanh(rs.getString("chucDanh"));
                lec.setEmail(rs.getString("email"));
                lec.setBoMon(rs.getString("boMon"));
                lec.setUrlImage(rs.getString("urlImage"));
                
                lecturers.add(lec);
            }
        }
        return lecturers;
    }

    // Lấy thông tin giảng viên theo id
    public lecturer getLecturerById(int id) throws Exception {
        String sql = "SELECT * FROM Lecturer WHERE id = ?";
        try (Connection conn = dataConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    lecturer lec = new lecturer();
                    lec.setId(rs.getInt("id"));
                    lec.setTen(rs.getString("ten"));
                    lec.setChucDanh(rs.getString("chucDanh"));
                    lec.setEmail(rs.getString("email"));
                    lec.setBoMon(rs.getString("boMon"));
                    lec.setUrlImage(rs.getString("urlImage"));
                    return lec;
                }
            }
        }
        return null;
    }

    // Thêm một giảng viên mới
    public boolean addLecturer(lecturer lec) throws Exception {
        String sql = "INSERT INTO Lecturer (ten, chucDanh, email, boMon, urlImage) VALUES (?, ?, ?, ?, ?)";
        
        try (Connection conn = dataConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, lec.getTen());
            stmt.setString(2, lec.getChucDanh());
            stmt.setString(3, lec.getEmail());
            stmt.setString(4, lec.getBoMon());
            stmt.setString(5, lec.getUrlImage());
            
            return stmt.executeUpdate() > 0;
        }
    }

    // Cập nhật thông tin giảng viên
    public boolean updateLecturer(lecturer lec) throws Exception {
        String sql = "UPDATE Lecturer SET ten = ?, chucDanh = ?, email = ?, boMon = ?, urlImage = ? WHERE id = ?";
        
        try (Connection conn = dataConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, lec.getTen());
            stmt.setString(2, lec.getChucDanh());
            stmt.setString(3, lec.getEmail());
            stmt.setString(4, lec.getBoMon());
            stmt.setString(5, lec.getUrlImage());
            stmt.setInt(6, lec.getId());
            
            return stmt.executeUpdate() > 0;
        }
    }

    // Xóa một giảng viên
    public boolean deleteLecturer(int id) throws Exception {
        String sql = "DELETE FROM Lecturer WHERE id = ?";
        
        try (Connection conn = dataConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, id);
            return stmt.executeUpdate() > 0;
        }
    }

    public static void main(String[] args) throws Exception {
        ltrDao dao = new ltrDao();
        List<lecturer> lecturers = dao.getAllLecturers();
        
        // Kiểm tra nếu danh sách giảng viên không rỗng và in thông tin giảng viên
        if (lecturers != null && !lecturers.isEmpty()) {
            for (lecturer lec : lecturers) {
                System.out.println("ID: " + lec.getId());
                System.out.println("Tên: " + lec.getTen());
                System.out.println("Chức danh: " + lec.getChucDanh());
                System.out.println("Email: " + lec.getEmail());
                System.out.println("Bộ môn: " + lec.getBoMon());
                System.out.println("URL hình ảnh: " + lec.getUrlImage());
                System.out.println("-----");
            }
        } else {
            System.out.println("Không có giảng viên nào.");
        }
    }
}
