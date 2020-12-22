package com.nlu.model;

public class Product {

    private Integer productId;
    private String name;
    private Integer price;
    private Integer status;
    private String description;
    private String img;
    private Integer categoryId;

    public Product() {
    }

    public Product(String name, Integer price, Integer status, String description, String img, Integer categoryId) {
        this.name = name;
        this.price = price;
        this.status = status;
        this.description = description;
        this.img = img;
        this.categoryId = categoryId;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
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

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }
}
