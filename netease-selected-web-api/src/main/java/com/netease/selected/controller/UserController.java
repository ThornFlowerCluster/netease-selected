package com.netease.selected.controller;


import com.netease.selected.domain.User;
import com.netease.selected.dto.BaseResult;
import com.netease.selected.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping(value = "${api.path.v1}/users")
public class UserController {

    @Autowired
    private UserService service;

    @RequestMapping(value = "login",method = RequestMethod.POST)
    public BaseResult login(User user){
        return service.selectUserByEmail(user);
    }

    @RequestMapping(value = "register",method = RequestMethod.POST)
    public BaseResult register(User user){
        return service.insertUser(user);
    }

    @RequestMapping(value = "checkEmail",method = RequestMethod.POST)
    public BaseResult checkEmail(String email){
        return service.checkEmail(email);
    }

}
