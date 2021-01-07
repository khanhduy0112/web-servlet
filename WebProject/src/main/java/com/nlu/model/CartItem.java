package com.nlu.model;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartItem {

    private Integer productId;
    private String name;
    private String img;
    private Double price;
    private Double salesPercent;
    private Integer productDetailsId;
    private int size;
    private int quality;

}
