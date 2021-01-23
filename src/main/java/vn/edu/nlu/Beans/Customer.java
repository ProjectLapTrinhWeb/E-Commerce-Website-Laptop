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

}
