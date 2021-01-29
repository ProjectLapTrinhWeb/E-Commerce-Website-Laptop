package vn.edu.nlu.Beans;

public class Staff {
    private String id;
    private String name;
    private String userName;
    private String password;
    private String img;
    private String mail;
    private String phone;
    private String role;
    private String status;

    public Staff() {
    }

    public Staff(String id, String name, String userName, String password, String img, String mail, String phone, String role, String status) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.mail = mail;
        this.phone = phone;
        this.role = role;
        this.status = status;
        this.userName = userName;
        this.password = password;
    }

    @Override
    public String toString() {
        return "Staff{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", userName='" + userName + '\'' +
                ", img='" + img + '\'' +
                ", mail='" + mail + '\'' +
                ", phone='" + phone + '\'' +
                ", role='" + role + '\'' +
                ", status='" + status + '\'' +
                "}\n";
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
