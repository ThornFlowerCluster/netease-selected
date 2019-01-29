package com.netease.selected.dao;

import com.netease.selected.domain.User;

public interface UserDao {
    User selectUserByEmail(User user);

    int insertUser(User user);

    User checkEmail(String email);
}
