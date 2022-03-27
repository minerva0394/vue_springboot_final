package com.example.springboot.mapper;

import com.example.springboot.entity.Role;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author zengzl
 * @since 2022-03-23
 */
public interface RoleMapper extends BaseMapper<Role> {

    @Select("SELECT id from sys_role where flag = #{flag}")
    Integer selectByFlag(@Param("flag") String flag);
}
