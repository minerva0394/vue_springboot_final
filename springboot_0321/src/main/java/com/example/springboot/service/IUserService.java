package com.example.springboot.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.springboot.common.Result;
import com.example.springboot.controller.dto.UserDto;
import com.example.springboot.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zengzl
 * @since 2022-03-21
 */
public interface IUserService extends IService<User> {

    Page<User> findPage(Page<User> objectPage, String username, String email, String address);

    UserDto login(UserDto userDto);

    User register(UserDto userDto);
}
