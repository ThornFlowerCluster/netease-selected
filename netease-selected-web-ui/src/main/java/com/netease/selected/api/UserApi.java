package com.netease.selected.api;


import com.netease.selected.domain.User;
import com.netease.selected.utils.HttpClientUtils;
import com.netease.selected.utils.MapperUtils;
import org.apache.http.message.BasicNameValuePair;

import java.util.ArrayList;
import java.util.List;

public class UserApi {




    public static String insertUser(User user) {
        List<BasicNameValuePair> params = new ArrayList<>();
        params.add(new BasicNameValuePair("email",user.getEmail()));
        params.add(new BasicNameValuePair("password",user.getPassword()));
        params.add(new BasicNameValuePair("phone",user.getPhone()));

        String json = HttpClientUtils.doPost(API.API_USERS_REGISTER, params.toArray(new BasicNameValuePair[params.size()]));
        String[] split = json.split(",");
        String[] strings = split[0].split(":");
        if(strings[1].equals("200")){
            return "index";
        }else{
            return "register";
        }
    }

    public static User selectUserByEmail(User user) {

        List<BasicNameValuePair> params = new ArrayList<>();
        params.add(new BasicNameValuePair("email",user.getEmail()));
        params.add(new BasicNameValuePair("password",user.getPassword()));

        String json = HttpClientUtils.doPost(API.API_USERS_LOGIN, params.toArray(new BasicNameValuePair[params.size()]));

        try {
            return MapperUtils.json2pojoByTree(json, "data", User.class);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
