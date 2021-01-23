package vn.edu.nlu.Beans;

public class Order {
    private String id;
    private int userId;
    private int paymentId;
    private String customerName;
    private String phone;
    private String address;
    private String note;
    private long totalPrice;
    private String status;

    public Order() {

    }

    public Order(String id, int userId, int paymentId, String customerName, String phone, String address, String note, long totalPrice, String status) {
        this.id = id;
        this.userId = userId;
        this.paymentId = paymentId;
        this.customerName = customerName;
        this.phone = phone;
        this.address = address;
        this.note = note;
        this.totalPrice = totalPrice;
        this.status = status;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id='" + id + '\'' +
                ", userId=" + userId +
                ", paymentId=" + paymentId +
                ", customerName='" + customerName + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", note='" + note + '\'' +
                ", totalPrice=" + totalPrice +
                ", status='" + status + '\'' +
                '}';
    }
}
