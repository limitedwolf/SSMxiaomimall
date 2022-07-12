package com.mall.xiaomi.dao;

import com.mall.xiaomi.entry.PowerUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * PowerUserMapper
 *
 * @author monsterwolf
 * @date 2022/6/11 22:18
 * @description
 */
public interface PowerUserMapper {

    List<PowerUser> selectByUserNameandPassword(@Param("username") String username, @Param("password") String password);

    int updatePassword(@Param("userName") String userName, @Param("password") String password);
}
