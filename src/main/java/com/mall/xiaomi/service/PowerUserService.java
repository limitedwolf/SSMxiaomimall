package com.mall.xiaomi.service;

import com.mall.xiaomi.dao.PowerUserMapper;
import com.mall.xiaomi.entry.PowerUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * PowerUserService
 *
 * @author monsterwolf
 * @date 2022/6/11 22:21
 * @description 后台用户业务层
 */
@Service
public class PowerUserService {

    @Autowired
    private PowerUserMapper powerUserMapper;


    /**
     * 查询是否存在用户
     * @param username 用户名
     * @param password 密码
     * @return 用户列表
     */
    public List<PowerUser> selectByUserNameandPassword(String username, String password) {
        return powerUserMapper.selectByUserNameandPassword(username, password);
    }

    /**
     * 修改用户密码
     * @param username 用户名
     * @param password 密码
     * @return 修改结果
     */
    public int updatePassword(String username,String password) {
        return powerUserMapper.updatePassword(username,password);
    }
}
