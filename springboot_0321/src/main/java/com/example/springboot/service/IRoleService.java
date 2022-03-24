package com.example.springboot.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.springboot.entity.Role;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zengzl
 * @since 2022-03-23
 */
public interface IRoleService extends IService<Role> {

    void setRoleMenu(Integer roleId, List<Integer> menuIds);

    List<Integer> getRoleMenu(Integer roleId);
}
