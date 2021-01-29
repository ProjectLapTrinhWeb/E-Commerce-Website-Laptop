package vn.edu.nlu.Beans;

import java.util.HashMap;

public class Cart {
    private String id;
    private User user;
    private HashMap<String, Item> items;
    private String status;

    public Cart() {
    }

    public Cart(String id, User user, HashMap<String, Item> items, String status) {
        this.id = id;
        this.user = user;
        this.items = items;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public HashMap<String, Item> getItems() {
        return items;
    }

    public void setItems(HashMap<String, Item> items) {
        this.items = items;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "id='" + id + '\'' +
                ", user=" + user +
                ", items=" + items +
                ", status='" + status + '\'' +
                "}\n";
    }

    public void deleteItem(String id) {
        items.remove(id);
    }

    public long totalPrice() {
        long rs = 0;
        for (Item x : items.values()) {
            rs += x.getPrice() * x.getQuantity();
        }
        return rs;
    }

    public long priceAfterSale(long sale) {
        return totalPrice() * (100 - sale) / 100;
    }
}
