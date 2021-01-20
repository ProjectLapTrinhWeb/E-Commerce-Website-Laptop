package vn.edu.nlu.Beans;

import java.io.Serializable;

public class DetailProduct implements Serializable {
    private String CPU;
    private String nameProduct;
    private double amount;
    private String ram;
    private String hardDrive;
    private String card;
    private String screen;
    private String communicationPort;
    private String wifi;
    private String webcam;
    private String HĐH;
    private String battery;
    private double weight;
    private double size;
    private String readMemoryDrive;

    public DetailProduct(String CPU, String nameProduct, String ram, String hardDrive, String card,
                         String screen, String communicationPort, String wifi, String webcam, String HĐH, String battery,
                         String readMemoryDrive, double size, double weight, double amount) {
        this.CPU = CPU;
        this.nameProduct = nameProduct;
        this.ram = ram;
        this.hardDrive = hardDrive;
        this.card = card;
        this.screen = screen;
        this.communicationPort = communicationPort;
        this.wifi = wifi;
        this.webcam = webcam;
        this.HĐH = HĐH;
        this.battery = battery;
        this.readMemoryDrive = readMemoryDrive;
        this.size = size;
        this.weight = weight;
        this.amount = amount;
    }

    public String getCPu() {
        return CPU;
    }

    public void setCPU(String CPU) {
        this.CPU = CPU;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String gethardDrive() {
        return hardDrive;
    }

    public void setHardDrive(String hardDrive) {
        this.hardDrive = hardDrive;
    }

    public String getCard() {
        return card;
    }

    public void setCard(String card) {
        this.card = card;
    }

    public String getScreen() {
        return screen;
    }

    public void setScreen(String screen) {
        this.screen = screen;
    }

    public String getCommunicationPort() {
        return communicationPort;
    }

    public void setCommunicationPort(String communicationPort) {
        this.communicationPort = communicationPort;
    }

    public String getWifi() {
        return wifi;
    }

    public void setWifi(String wifi) {
        this.communicationPort = communicationPort;
    }

    public String getWebcam() {
        return webcam;
    }

    public void setWebcam(String webcam) {
        this.webcam = webcam;
    }

    public String getHĐH() {
        return HĐH;
    }

    public void setHĐH(String HĐH) {
        this.HĐH = HĐH;
    }

    public String getBattery() {
        return battery;
    }

    public void setBattery(String battery) {
        this.battery = battery;
    }

    public String getReadMemoryDrive() {
        return readMemoryDrive;
    }

    public void setReadMemoryDrive(String readMemoryDrive) {
        this.readMemoryDrive = readMemoryDrive;
    }

    public double getSize() {
        return size;
    }

    public void setSize(double size) {
        this.size = size;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

}



