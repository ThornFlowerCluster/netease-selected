package com.netease.selected.service.impl;

import com.netease.selected.dao.UserDao;
import com.netease.selected.domain.User;
import com.netease.selected.dto.BaseResult;
import com.netease.selected.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;


@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao dao;

    BaseResult result;

    @Override
    public BaseResult selectUserByEmail(User user) {
        User userByEmail = dao.selectUserByEmail(user);

        if (userByEmail != null) {
            if (userByEmail.getPassword().equals(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()))) {

                result = BaseResult.success("登陆成功", userByEmail);

            } else {
                result = BaseResult.fail("用户名或密码错误");
            }
        }
        return result;
    }

    @Override
    public BaseResult insertUser(User user) {
        if (user.getEmail() != null && user.getPhone() != null && user.getEmail() != "" && user.getPhone() != "") {
            String password = DigestUtils.md5DigestAsHex(user.getPassword().getBytes());
            user.setPassword(password);
            int i = dao.insertUser(user);

            if (i > 0) {
                result = BaseResult.success("注册成功");
            } else {
                result = BaseResult.fail("注册失败");
            }
        }else{
            result = BaseResult.fail("邮箱和手机号不能为空");
        }
        return result;
    }

    @Override
    public BaseResult checkEmail(String email) {
       User user = dao.checkEmail(email);
       if(user != null){
           result = BaseResult.success();
       }else{
           result = BaseResult.fail();
       }
        return result;
    }
}
