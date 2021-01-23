package vn.edu.nlu.Beans;

public class OrderDetail {
    private String OderID;
    private String ProductID;
    private double Price;
    private int Quatity;
    private double TotalPrice;
    private double PriceSale;

    public OrderDetail(String oderID, String productID, double price, int quatity, double totalPrice, double priceSale) {
        OderID = oderID;
        ProductID = productID;
        Price = price;
        Quatity = quatity;
        TotalPrice = totalPrice;
        PriceSale = priceSale;
    }

    public String getOderID() {
        return OderID;
    }

    public void setOderID(String oderID) {
        OderID = oderID;
    }

    public String getProductID() {
        return ProductID;
    }

    public void setProductID(String productID) {
        ProductID = productID;
    }

    public double getPrice() {
        return Price;
    }

    public void setPrice(double price) {
        Price = price;
    }

    public int getQuatity() {
        return Quatity;
    }

    public void setQuatity(int quatity) {
        Quatity = quatity;
    }

    public double getTotalPrice() {
        return TotalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        TotalPrice = totalPrice;
    }

    public double getPriceSale() {
        return PriceSale;
    }

    public void setPriceSale(double priceSale) {
        PriceSale = priceSale;
    }

    @Override
    public String toString() {
        return "OrderDetail{" +
                "OderID='" + OderID + '\'' +
                ", ProductID='" + ProductID + '\'' +
                ", Price=" + Price +
                ", Quatity=" + Quatity +
                ", TotalPrice=" + TotalPrice +
                ", PriceSale=" + PriceSale +
                '}';
    }
}
