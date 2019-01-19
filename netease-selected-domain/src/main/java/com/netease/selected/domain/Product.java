package com.netease.selected.domain;

import lombok.Data;

@Data
public class Product {
    private Long pid;
    private String pname;
    private Double marketPrice;
    private Double shopPrice;
    private String pimage;
    private String pdesc;
    private String isHot;
    private Long cid;
}
