package com.mall.xiaomi.controller;


import com.mall.xiaomi.entry.CommitGoods;
import com.mall.xiaomi.entry.Consumer;
import com.mall.xiaomi.entry.ConsumerOrder;
import com.mall.xiaomi.service.OrderService;
import com.mall.xiaomi.utils.ResponseMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Objects;

import static com.mall.xiaomi.utils.ResponseMessage.error;

@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    OrderService orderService;

    /**
     * 结算创建订单
     * @param session 用户
     * @param commitGoodsList 商品ID 和商品数量
     * @return 订单提交结果
     */
    @RequestMapping(value = "/create.do",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public ResponseMessage createOrder(HttpSession session, @RequestBody List<CommitGoods> commitGoodsList){
        // 获取当前登录用户
        Consumer consumer = (Consumer) session.getAttribute("loginConsumer");
        if(consumer == null){
            return  error();
        }
        // 创建订单
        String orderCode = orderService.createOrder(consumer);
        System.out.println("创建订单成功,订单号为"+orderCode);
        orderService.createOrderItem(consumer,commitGoodsList,orderCode);
        if(!Objects.equals(orderCode, "0")){
            System.out.println("控制层创建订单成功");
            // 清空购物车提交订单的商品
            for (CommitGoods commitGoods : commitGoodsList) {
                orderService.deleteShopCart(consumer,commitGoods.getGoodsId());
            }
            return ResponseMessage.success().addObject("orderCode",orderCode);
        }else{
            System.out.println("控制层创建订单失败");
            return ResponseMessage.error();
        }
    }

    /**
     * 查询用户订单
     * @param session 用户
     * @return 订单列表
     */
    @GetMapping("/getOrder.do")
    @ResponseBody
    public ResponseMessage checkConsumerOrder(HttpSession session){
        // 获取当前登录用户
        Consumer consumer = (Consumer) session.getAttribute("loginConsumer");
        if(consumer == null){
            return  error();
        }
        List<ConsumerOrder> orderList = orderService.getOrderList(consumer);
        System.out.println(orderList);
        return ResponseMessage.success().addObject("orderList",orderList);
    }

}
