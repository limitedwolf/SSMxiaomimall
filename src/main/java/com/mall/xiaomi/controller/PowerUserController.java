package com.mall.xiaomi.controller;

import com.mall.xiaomi.entry.PowerUser;
import com.mall.xiaomi.service.PowerUserService;
import com.mall.xiaomi.utils.ResponseMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * PowerUserController
 *
 * @author monsterwolf
 * @date 2022/6/11 22:21
 * @description 后台用户控制器
 */
@RestController
@RequestMapping("/backendlogin")
public class PowerUserController {

    @Autowired
    private PowerUserService powerUserService;

    /**
     * 后台用户登录
     * @param username 用户名
     * @param password 密码
     * @param session session
     * @return 登录结果
     */
    @RequestMapping("/login.do")
    public ResponseMessage login(String username, String password, HttpSession session) {
        // 查询数据库中是否存在该用户
        List<PowerUser> powerUsers = powerUserService.selectByUserNameandPassword(username, password);
        if (powerUsers.size() > 0) {
            // 存在该用户,设置session
            session.setAttribute("powerUser", powerUsers.get(0));
            return ResponseMessage.success();
        } else {
            return ResponseMessage.error();
        }
    }

    /**
     * 后台用户登出
     * @param session session
     * @param response response跳转
     * @throws IOException IO异常
     */
    @RequestMapping("/logout.do")
    public void logout(HttpSession session, HttpServletResponse response) throws IOException {
        // 清除session
        session.removeAttribute("powerUser");
        System.out.println("清除了后台用户session");
        // 跳转到商城首页
        response.sendRedirect("/index.jsp");
    }

    /**
     * 修改密码
     * @param powerUser 后台用户
     * @return 修改结果
     */
    @RequestMapping("/update.do")
    public ResponseMessage update(@RequestBody PowerUser powerUser) {
        int result = powerUserService.updatePassword(powerUser.getUsername(), powerUser.getPassword());
        // 查询修改结果
        if (result > 0) {
            return ResponseMessage.success();
        } else {
            return ResponseMessage.error();
        }
    }

    /**
     * 查询后台用户登录状态，如果未登录则跳转到登录页面。
     * @param session session
     * @return 登录状态
     */
    @RequestMapping("/checkLogin.do")
    public ResponseMessage findLogin(HttpSession session){
        // 获取session中的后台用户
        PowerUser powerUser = (PowerUser) session.getAttribute("powerUser");
        if(powerUser != null){
            return ResponseMessage.success().addObject("powerUser", powerUser);
        }else{
            return ResponseMessage.error();
        }
    }


}

