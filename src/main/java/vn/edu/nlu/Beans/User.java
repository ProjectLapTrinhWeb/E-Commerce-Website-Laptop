package vn.edu.nlu.Beans;

public class User {
    public static String getPassword;
    private String ID;
    private String userName;
    private String password;
    private String FullName;
    private String Email;
    private String Phone;
    private String Address;
    private String Status;
    private String RoleID;
    private String Image;

    public User(String userName,String  password){
        this.userName = userName;
        this.password = password;
    }
    public User(String ID, String userName, String password, String fullName, String email, String phone, String address, String status, String roleID,String Image) {
        this.ID = ID;
        this.userName = userName;
        this.password = password;
        FullName = fullName;
        Email = email;
        Phone = phone;
        Address = address;
        Status = status;
        RoleID = roleID;
        this.Image= Image;
    }


    public String getID() {
        return this.ID;
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

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String fullName) {
        FullName = fullName;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) {
        Phone = phone;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String status) {
        Status = status;
    }

    public String getRoleID() {
        return RoleID;
    }

    public void setRoleID(String roleID) {
        RoleID = roleID;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String image) {
        Image = image;
    }

    @Override
    public String toString() {
        return "User{" +
                "ID='" + ID + '\'' +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", FullName='" + FullName + '\'' +
                ", Email='" + Email + '\'' +
                ", Phone='" + Phone + '\'' +
                ", Address='" + Address + '\'' +
                ", Status='" + Status + '\'' +
                ", RoleID='" + RoleID + '\'' +
                ", Image'" + Image + '\'' +
                '}';
    }
}
