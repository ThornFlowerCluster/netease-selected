package com.netease.selected.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.validation.constraints.NotNull;
import java.util.Date;

@Data
public class User {
    private Long uid;
    private String username;
    @JsonIgnore
    private String password;
    @NotNull
    private String phone;
    @NotNull
    private String email;
    private Date birthday;
    private String sex;
    private String hobby;
    private String info;

}
