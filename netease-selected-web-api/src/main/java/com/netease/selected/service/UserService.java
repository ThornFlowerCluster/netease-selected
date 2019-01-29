package com.netease.selected.service;

import com.netease.selected.domain.User;
import com.netease.selected.dto.BaseResult;


public interface UserService {
    BaseResult selectUserByEmail(User user);

    BaseResult insertUser(User user);

    BaseResult checkEmail(String email);

}
