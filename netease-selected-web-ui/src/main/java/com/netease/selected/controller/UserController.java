package com.netease.selected.controller;

import com.netease.selected.api.UserApi;
import com.netease.selected.constant.ConstantUtils;
import com.netease.selected.domain.User;
import com.netease.selected.dto.BaseResult;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(User user, HttpServletRequest request, Model model) {
        if (user.getEmail() != null && user.getEmail() != "" && user.getPassword() != null && user.getPassword() != "") {
            User userByEmail = UserApi.selectUserByEmail(user);
            if (userByEmail != null) {
                request.getSession().setAttribute(ConstantUtils.SESSION_USER_KEY, userByEmail);
                return "redirect:/index";
            } else {
                model.addAttribute("baseResult", BaseResult.fail("邮箱或者密码错误"));
                return "login";
            }
        } else {
            model.addAttribute("baseResult", BaseResult.fail("请输入邮箱"));
            return "login";
        }

    }

    @RequestMapping(value = "register", method = RequestMethod.POST)
    public String register(User user) {

        return UserApi.insertUser(user);
    }

    @RequestMapping(value = "logout",method = RequestMethod.GET)
    public String logout(HttpServletRequest request){
        request.getSession().invalidate();
        Cookie[] cookies = request.getCookies();

        for (Cookie cookie: cookies) {
            cookie.setMaxAge(0);
        }

        return "index";
    }

}
