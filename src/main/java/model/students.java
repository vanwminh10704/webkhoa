package model;

public class students {
    private int id;
    private String masinhvien;
    private String email;
    private String password;
 // Constructor mặc định (không tham số)
    public students() {
    }
 // Constructor đầy đủ
    public students(int id, String masinhvien, String email, String password) {
        this.id = id;
        this.masinhvien = masinhvien;
        this.email = email;
        this.password = password;
    }

    // Constructor không có id (dùng cho thêm mới)
    public students(String masinhvien, String email, String password) {
        this.masinhvien = masinhvien;
        this.email = email;
        this.password = password;
    }

    // Getter và Setter
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getmasinhvien() {
        return masinhvien;
    }

    public void setmasinhvien(String masinhvien) {
        this.masinhvien = masinhvien;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
