package com.nlu.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product {

    private Integer productId;
    private String name;
    private Integer status;
    private String description;
    private String img;
    private Integer categoryId;
    private Integer price;
    private Double salesPercent;



}
