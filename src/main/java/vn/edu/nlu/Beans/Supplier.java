package vn.edu.nlu.Beans;

public class Supplier {
    private String id;
    private String name;
    private String status;
    private String img;

    public Supplier() {
    }

    public Supplier(String id, String name) {
        this.id = id;
        this.name = name;
    }

//    public Supplier(String id, String name, String status) {
//        this.id = id;
//        this.name = name;
//        this.status = status;
//    }

    public Supplier(String id, String name, String status, String img) {
        this.id = id;
        this.name = name;
        this.status = status;
        this.img = img;
    }
    public Supplier( String name, String status, String img) {
        this.name = name;
        this.status = status;
        this.img = img;
    }
    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
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

    @Override
    public String toString() {
        return "Supplier{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", status='" + status + '\'' +
                ", img='" + img + '\'' +
                "}\n";
    }
}
