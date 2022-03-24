package com.example.springboot.controller.dto;


import lombok.Data;

/**
 * <p>
 * 传输数据,接收前端请求参数
 * </p>
 *
 * @author zengzl
 * @since 2022-03-21
 */
@Data
public class UserDto {
    private String username;
    private String password;
    private String nickname;
    private String avatar;

    private String token;

}
