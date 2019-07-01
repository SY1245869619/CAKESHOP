package com.CAKESHOP.dao;

public class Product {
    public int ID = 0;//商品ID
    private String name = "";//商品名
    private int num = 0;//商品剩余库存
    private double prize = 0;//原价
    private String category = "";//商品类别
    private String flavour = "";//商品口味
    private String weight = "";//商品重量
    private String color = "";//商品颜色
    private String detail = "";//商品描述
    //下面是我自己定义的一些变量
    private String imgPath = "";//商品图片路径
    //private double discount = 0;//折扣
    private double currentPrice = 0;//现价（根据折扣计算）


    public int getID() {
        return this.ID;
    }

    public void setID(int input) {
        this.ID = input;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String input) {
        this.name = input;
    }

    public int getNum() {
        return this.num;
    }

    public void setNum(int input) {
        this.num = input;
    }

    public double getPrize() {
        return this.prize;
    }

    public void setPrize(double input) {
        this.prize = input;
    }

    public String getCategory() {
        return this.category;
    }

    public void setCategory(String input) {
        this.category = input;
    }

    public String getFlavour() {
        return this.flavour;
    }

    public void setFlavour(String input) {
        this.flavour = input;
    }

    public String getWeight() {
        return this.weight;
    }

    public void setWeight(String input) {
        this.weight = input;
    }

    public String getColor() {
        return this.color;
    }

    public void setColor(String input) {
        this.color = input;
    }

    public String getDetail() {
        return this.detail;
    }

    public void setDetail(String input) {
        this.detail = input;
    }

    public String getImgPath() {
        return this.imgPath;
    }

    public void setImgPath(String input) {
        this.imgPath = input;
    }


    public double getCurrentPrice() {
        return this.currentPrice;
    }

    public void setCurrentPrice(double input) {
        this.currentPrice = input;
    }

}
