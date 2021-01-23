package vn.edu.nlu.Beans;

import java.io.Serializable;


public class Product implements Serializable {
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

    public String getPriceSale() {
        return priceSale;
    }

    public void setPriceSale(String priceSale) {
        this.priceSale = priceSale;
    }

    private String priceSale;

    public Product() {
    }

    public Product(String id, String name, String price, String img, String priceSale) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.img = img;
        this.priceSale = priceSale;
    }

    public Product(String id, String name, String price, double discount, String description, String img, int categoryId, int supplierId,String status, int quantity) {
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
    }

}
