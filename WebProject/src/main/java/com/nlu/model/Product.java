package com.nlu.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product {

    private int productId;
    private String name;
    private int status;
    private String description;
    private String img;
    private int categoryId;
    private int price;
    private int discount;


    
}
