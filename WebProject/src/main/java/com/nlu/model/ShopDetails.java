package com.nlu.model;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ShopDetails {

    private int id;
    private String shopName;
    private String phone;
    private String email;
    private String address;
    private String bottomDescription;


}
