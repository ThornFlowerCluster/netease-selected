package com.netease.selected.domain;

import lombok.Data;

import java.util.Date;

@Data
public class User {
    private Long uid;
    private String username;
    private String password;
    private String email;
    private Date birthday;
    private String sex;
    private String hobby;
    private String info;

}
