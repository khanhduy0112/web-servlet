package com.nlu.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
    private int id;
    private String userKey;
    private String username;
    private String password;
    private String email;
    private String phone;
    private String city;
    private String district;
    private String addressDetails;
    private String role;
}
