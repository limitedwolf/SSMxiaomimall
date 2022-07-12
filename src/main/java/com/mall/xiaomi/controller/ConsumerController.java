package com.mall.xiaomi.controller;

import com.mall.xiaomi.entry.Consumer;
import com.mall.xiaomi.entry.GoodsShippingAddress;
import com.mall.xiaomi.service.ConsumerService;
import com.mall.xiaomi.utils.ResponseMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/consumer")
public class ConsumerController {
    @Autowired
    private ConsumerService consumerService;


    /**
     * 登录
     * @param username 用户名
     * @param password 密码
     * @param Session 会话
     * @return 登录结果
     */
    @PostMapping(value = "/login/auth.do",produces = {"application/json;charset=UTF-8"}) // 进行UTF-8处理，避免中文乱码
    @ResponseBody // 序列化 -->json
    public ResponseMessage login(@RequestParam String username, @RequestParam String password, HttpSession Session){
        Consumer consumer = new Consumer(username,password);
        // 查询用户是否存在
        consumer= consumerService.findConsumerWithUsernameAndPassword(consumer);
        // 登录成功返回success，反之返回error
        Session.setAttribute("loginConsumer",consumer);
        return  consumer != null ? ResponseMessage.success():ResponseMessage.error();
    }

    /**
     * 注册
     * @param username 用户名
     * @param password 密码
     * @return 注册结果
     */
    @PostMapping(value = "/register.do")
    @ResponseBody
    public ResponseMessage register (@RequestParam String username ,@RequestParam String password){
        // 保存注册用户信息
        Consumer consumer = new Consumer(username,password);
        // 向数据库中插入用户信息
        String result = consumerService.register(consumer);
        if(result.contains("注册成功")){
            return  ResponseMessage.success();
        }else{
            return ResponseMessage.error().addObject("msg",result);
        }
    }

    /**
     * 判断用户是否登录
     * @param session 会话
     * @return 登录状态
     */
    @PostMapping(value = "/CheckLogin.do")
    @ResponseBody
    public ResponseMessage findIsLogin(HttpSession session){
        Consumer consumer = (Consumer) session.getAttribute("loginConsumer");
        if(consumer == null){
            return ResponseMessage.error();
        }else{
            return ResponseMessage.success().addObject("consumer",consumer);
        }
    }

    /**
     * 退出登录
     * @param session 会话
     * @return 退出状态
     */
    @GetMapping("/logout.do")
    public void LogOut(HttpSession session, HttpServletResponse response) throws IOException {
        session.removeAttribute("loginConsumer");
        System.out.println("清除了用户session");
        response.sendRedirect("/index.jsp");
    }


    /**
     * 查询用户的收货地址
     * @param session 用户会话信息
     * @return 收货地址
     */
    @PostMapping("/address.do")
    @ResponseBody
    public ResponseMessage findAddress(HttpSession session){
        Consumer consumer = (Consumer) session.getAttribute("loginConsumer");
        if(consumer == null){
            return ResponseMessage.error();
        }else{
            System.out.println("查询用户的收货地址");
            System.out.println("用户id为：" + consumer.getId());
            GoodsShippingAddress goodsShippingAddress = consumerService.selectGoodsShippingAddress(String.valueOf(consumer.getId()));
            System.out.println(goodsShippingAddress);
            return ResponseMessage.success().addObject("goodsShippingAddress",goodsShippingAddress);
        }
    }


    /**
     * 用户第一次新增收货地址
     * @param session 用户会话信息
     * @param goodsShippingAddress 收货地址
     * @return 新增结果
     */
    @PostMapping("/insertAddress.do")
    @ResponseBody
    public ResponseMessage addAddress(HttpSession session,@RequestBody GoodsShippingAddress goodsShippingAddress){
        Consumer consumer = (Consumer) session.getAttribute("loginConsumer");
        if(consumer == null){
            return ResponseMessage.error();
        }else{
            System.out.println("添加用户的收货地址");
            System.out.println(goodsShippingAddress);
            consumerService.addGoodsShippingAddress(goodsShippingAddress);
            return ResponseMessage.success();
        }
    }

    /**
     * 用户修改收货地址
     * @param session 用户会话信息
     * @param goodsShippingAddress 收货地址
     * @return 修改结果
     */
    @PostMapping("/updateAddress.do")
    @ResponseBody
    public ResponseMessage updateAddress(HttpSession session,@RequestBody  GoodsShippingAddress goodsShippingAddress){
        Consumer consumer = (Consumer) session.getAttribute("loginConsumer");
        if(consumer == null){
            return ResponseMessage.error();
        }else{
            System.out.println("修改用户的收货地址");
            System.out.println(goodsShippingAddress);
            Integer i = consumerService.updateGoodsShippingAddress(goodsShippingAddress);
            if(i>0){
                return ResponseMessage.success();
            }
            return ResponseMessage.error();
        }
    }

    /**
     * 用户修改个人资料信息
     * @param consumer 用户信息
     * @return 修改结果
     */
    @PostMapping("/updateprofile.do")
    @ResponseBody
    public ResponseMessage updateProfile(@RequestBody Consumer consumer){
        System.out.println("修改用户信息");
        Integer i = consumerService.updateProfile(consumer);
        if(i>0){
            return ResponseMessage.success();
        }else {
            return ResponseMessage.error();
        }
    }
}
