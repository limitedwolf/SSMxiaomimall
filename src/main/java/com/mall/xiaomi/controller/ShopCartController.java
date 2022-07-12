package com.mall.xiaomi.controller;

import com.mall.xiaomi.entry.Consumer;
import com.mall.xiaomi.entry.Goods;
import com.mall.xiaomi.entry.GoodsCart;
import com.mall.xiaomi.service.GoodsService;
import com.mall.xiaomi.service.ShopCartService;
import com.mall.xiaomi.utils.ResponseMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 购物车控制器
 */
@Controller
@RequestMapping("/shopcart")
public class ShopCartController {

    @Autowired
    private ShopCartService shopCartService;

    @Autowired
    private GoodsService goodsService;

    /**
     * 添加商品到购物车
     * @param goodsId 商品id
     * @param session session
     * @return 返回添加结果
     */
    @GetMapping("/add/{goodsId}.do")
    @ResponseBody
    public ResponseMessage addGoodsToCart(@PathVariable Integer goodsId, HttpSession session){
        // 获取当前登录用户
        Consumer consumer = (Consumer) session.getAttribute("loginConsumer");
        if(consumer == null){
            return  ResponseMessage.error();
        }
        // 加入购物车
        Goods goods = goodsService.findGoodsWithId(goodsId);
        shopCartService.addGoodsToShopCart(consumer,goods);
        System.out.println("加入购物车成功");
        return ResponseMessage.success();
    }

    /**
     * 删除购物车中的商品
     * @param goodsId 商品id
     * @param session 用户session
     * @return 响应信息
     */
    @GetMapping("/remove/{goodsId}.do")
    @ResponseBody
    public ResponseMessage removeGoodsFromCart(@PathVariable Integer goodsId, HttpSession session){
        // 获取当前登录用户
        Consumer consumer = (Consumer) session.getAttribute("loginConsumer");
        if(consumer == null){
            return  ResponseMessage.error();
        }
        System.out.println("用户删除商品");
        Goods goods = goodsService.findGoodsWithId(goodsId);
        shopCartService.removeGoodsFromShopCart(consumer,goods);
        return ResponseMessage.success();
    }

    /**
     * 查询当前用户的购物车
     * @param session 当前登录用户
     * @return 返回购物车数据
     */
    @GetMapping("/chk.do")
    @ResponseBody
    public ResponseMessage findAllWithConsumer(HttpSession session){
        // 获取当前登录用户
        Consumer consumer = (Consumer) session.getAttribute("loginConsumer");
        if(consumer == null){
            return  ResponseMessage.error();
        }
        List<GoodsCart> cartList = shopCartService.findAllGoodsFromShopCart(consumer);
        return  ResponseMessage.success().addObject("cartList",cartList);
    }

    /**
     * 修改购物车中商品的数量
     * @param goodsId 商品id
     * @param session 当前登录用户
     * @param count 数量
     * @return 响应信息
     */
    @GetMapping("/update/{goodsId}/{count}.do")
    @ResponseBody
    public ResponseMessage UpdateGoodsCount(@PathVariable Integer goodsId, HttpSession session,@PathVariable int count){
        // 获取当前登录用户
        Consumer consumer = (Consumer) session.getAttribute("loginConsumer");
        if(consumer == null){
            return  ResponseMessage.error();
        }
        Goods goods = goodsService.findGoodsWithId(goodsId);
        shopCartService.goodsCountUpdate(consumer,goods,count);
        return ResponseMessage.success();
    }
}
