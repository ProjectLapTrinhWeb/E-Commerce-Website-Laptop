package vn.edu.nlu.Beans;

import vn.edu.nlu.Entity.ProductEntity;

import java.io.Serializable;
import java.sql.SQLException;
import java.text.NumberFormat;

public class Product implements Serializable, Comparable<Product> {
    private String id;
    private String name;
    private String price;
    private double discount;
    private String description;
    private String img;
    private int categoryId;
    private int supplierId;
    private MyDate createdDate;
    private String createdBy;
    private MyDate modifiedDate;
    private String modifiedBy;
    private String status;
    private int quantity;
    private String priceSale;
    private String priceSaleValue;

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

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(int supplierId) {
        this.supplierId = supplierId;
    }

    public MyDate getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(MyDate createdDate) {
        this.createdDate = createdDate;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public MyDate getModifiedDate() {
        return modifiedDate;
    }

    public void setModifiedDate(MyDate modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    public String getModifiedBy() {
        return modifiedBy;
    }

    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setPriceSale(String priceSale) {
        this.priceSale = priceSale;
    }

    public String getPriceSaleValue() {
        return priceSaleValue;
    }

    public void setPriceSaleValue(String priceSaleValue) {
        this.priceSaleValue = priceSaleValue;
    }

    public Product() {
    }

    public Product(String id, String name, String price, double discount, String description, String img, int categoryId, int supplierId, String status, int quantity) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.discount = discount;
        this.description = description;
        this.img = img;
        this.categoryId = categoryId;
        this.supplierId = supplierId;
        this.status = status;
        this.quantity = quantity;
        this.priceSale = getPriceSale();
        this.priceSaleValue = getCurrentPrice();
    }

    public String getVNDPrice() {
        String rs = null;
        NumberFormat nf = NumberFormat.getInstance(); // get instance
        nf.setMaximumFractionDigits(0); // set decimal places
        rs = nf.format(Double.parseDouble(price)) + " VNĐ";
        return rs;
    }

    public String getPriceSale() {
        double ps = (Double.parseDouble(price) * (100 - discount) / 100);
        NumberFormat nf = NumberFormat.getInstance(); // get instance
        nf.setMaximumFractionDigits(0); // set decimal places
        priceSale = nf.format(ps) + " VNĐ";

        return priceSale;
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Product p = ProductEntity.getId(1);
        System.out.println(p.getPrice());
        System.out.println(p.getCurrentPrice());
    }

    public String getCurrentPrice() {
        double ps = (Double.parseDouble(price) * (100 - discount) / 100);
        NumberFormat nf = NumberFormat.getInstance(); // get instance
        nf.setMaximumFractionDigits(0); // set decimal places
        String rs = MyUtils.getPrice(nf.format(ps));

        return rs;
    }


    @Override
    public String toString() {
        return "Product{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", price='" + price + '\'' +
                ", discount=" + discount +
                '}' + "\n";
    }

    @Override
    public int compareTo(Product o) {
        int x = Integer.parseInt(this.id);
        int y = Integer.parseInt(o.getId());
        if (x > y)
            return 1;
        if (x < y)
            return -1;
        else
            return 0;
    }
}
