package com.nlu.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductDetails {

    private Integer productDetailsId;
    private Integer size;
    private String color;
    private Integer quality;
    private Integer productId;
    private Integer status;

}
