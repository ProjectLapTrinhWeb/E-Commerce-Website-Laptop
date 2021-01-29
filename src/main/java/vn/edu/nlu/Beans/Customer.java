package vn.edu.nlu.Beans;

public class Customer {
    private String id;
    private String name;
    private String mail;
    private String phone;
    private String status;

    public Customer() {
        
    }

    public Customer(String id, String name, String mail, String phone, String status) {
        this.id = id;
        this.name = name;
        this.mail = mail;
        this.phone = phone;
        this.status = status;
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
