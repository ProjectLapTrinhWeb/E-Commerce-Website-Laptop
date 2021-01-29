package vn.edu.nlu.Beans;

import java.io.Serializable;

public class Comments implements Serializable {
    private String ID;
    private String userName;
    private String userID;
    private String ProductID;
    private String Content;

    public Comments(String ID, String userName, String userID, String ProductID, String Content) {
        this.ID = ID;
        this.userName = userName;
        this.userID = userID;
        this.ProductID = ProductID;
        this.Content = Content;
    }

    public String getID() {
        return ID;
    }

    public void setID(String UserID) {
        this.ID = ID;
    }

    public  String getUserName() {
        return userName;
    }

    public void setUserName(String UserName) {
        this.userName = UserName;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String UserID) {
        this.userID = UserID;
    }

    public String getProductID() {
        return ProductID;
    }

    public void setProductID(String ProductID) {
        this.ProductID = ProductID;
    }


    public  String getContent() {
        return Content;
    }

    public void setContent(String Content) {
        this.Content = Content;
    }

    @Override
    public String toString() {
        return "User{" +
                "ID='" + ID + '\'' +
                ", userName='" + userName + '\'' +
                ", ProductID='" + ProductID + '\'' +
                ", Content='" + Content + '\'' +
                '}';
    }
}


