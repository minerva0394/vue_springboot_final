package com.example.springboot.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.springboot.entity.Role;
import com.example.springboot.entity.RoleMenu;
import com.example.springboot.mapper.RoleMapper;
import com.example.springboot.mapper.RoleMenuMapper;
import com.example.springboot.service.IRoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zengzl
 * @since 2022-03-23
 */
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements IRoleService {

    @Resource
    private RoleMenuMapper roleMenuMapper;
    // 同步事务注解，保证一起成功后再修改数据库
    @Transactional
    @Override
    public void setRoleMenu(Integer roleId, List<Integer> menuIds) {
//        QueryWrapper<RoleMenu> queryWrapper = new QueryWrapper<>();
//        queryWrapper.eq("role_id",roleId);
//        roleMenuMapper.delete(queryWrapper);

        // 先删除当前角色id所有的绑定关系
        roleMenuMapper.deleteByRoleId(roleId);

        // 再添加前端传值的绑定的菜单id
        for (Integer menuId:menuIds) {
            RoleMenu roleMenu = new RoleMenu();
            roleMenu.setRoleId(roleId);
            roleMenu.setMenuId(menuId);
            roleMenuMapper.insert(roleMenu);

        }

    }

    @Override
    public List<Integer> getRoleMenu(Integer roleId) {
        return roleMenuMapper.selectByRoleId(roleId);
    }
}
