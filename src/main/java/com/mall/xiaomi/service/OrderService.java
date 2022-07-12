package com.mall.xiaomi.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mall.xiaomi.dao.*;
import com.mall.xiaomi.entry.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class OrderService {

    @Autowired
    private GoodsOrderMapper goodsOrderMapper;

    @Autowired
    private GoodsMapper goodsMapper;

    @Autowired
    private GoodsImagesMapper goodsImagesMapper;
    @Autowired
    private GoodsShippingAddressMapper goodsShippingAddressMapper;

    @Autowired
    private GoodsOrderItemMapper goodsOrderItemMapper;

    @Autowired
    private GoodsCartMapper goodsCartMapper;

    /**
     * 结算创建订单
     *
     * @param consumer 用户
     * @return
     */
    public String createOrder(Consumer consumer) {
        Date date = new Date();
        GoodsShippingAddressExample gsae = new GoodsShippingAddressExample();
        gsae.createCriteria().andConsumerIdEqualTo(consumer.getId());
        List<GoodsShippingAddress> addresses = goodsShippingAddressMapper.selectByExample(gsae);
        if (addresses.size() > 0) {
            GoodsOrder go = new GoodsOrder(String.valueOf(date.getTime()), date, consumer.getId(), "待付款", addresses.get(0).getId());
            goodsOrderMapper.insertSelective(go);
            System.out.println("服务创建订单成功");
            return go.getId();
        } else {
            System.out.println("用户没有收货地址");
        }
        return "0";
    }

    /**
     * 根据订单ID插入商品内容
     * @param consumer 用户
     * @param list     商品ID 和商品数量
     */

    public void createOrderItem(Consumer consumer, List<CommitGoods> list, String orderid) {
        GoodsOrderExample goe = new GoodsOrderExample();
        goe.createCriteria().andConsumerIdEqualTo(consumer.getId()).andIdEqualTo(String.valueOf(orderid));
        List<GoodsOrder> orders = goodsOrderMapper.selectByExample(goe);
        if (orders.size() > 0) {
            System.out.println("查询订单成功");
            for (CommitGoods commitGoods : list) {
                GoodsImagesExample gie = new GoodsImagesExample();
                gie.createCriteria().andGoodsIdEqualTo(commitGoods.getGoodsId());
                List<GoodsImages> goodsImages = goodsImagesMapper.selectByExample(gie);
                System.out.println("此时查询到的图片数据库:" + goodsImages.get(0).getId() + goodsImages.get(0).getPath());
                Goods goods = goodsMapper.selectByPrimaryKey(commitGoods.getGoodsId());
                GoodsCartExample gce = new GoodsCartExample();
                gce.createCriteria().andConsumerIdEqualTo(consumer.getId()).andGoodsIdEqualTo(goods.getId());
                List<GoodsCart> cartList = goodsCartMapper.selectByExample(gce);
                GoodsOrderItem goi = new GoodsOrderItem(commitGoods.getGoodsId(), goodsImages.get(0).getPath(), goods.getPrice(), commitGoods.getGoodsNum(), cartList.get(0).getSubtotal(), String.valueOf(orders.get(0).getId()));
                goodsOrderItemMapper.insertSelective(goi);
            }
            System.out.println("用户创建订单商品成功");
        } else {
            System.out.println("用户没有订单");
        }


    }


    /**
     * 查询用户下的订单信息
     *
     * @param consumer 用户
     * @return 返回用户的所有订单列表
     */
    public List<ConsumerOrder> getOrderList(Consumer consumer) {
        List<ConsumerOrder> consumerOrders = new ArrayList<>();
        GoodsOrderExample goe = new GoodsOrderExample();
        goe.createCriteria().andConsumerIdEqualTo(consumer.getId());
        List<GoodsOrder> orders = goodsOrderMapper.selectByExample(goe);
        if (orders.size() > 0) {
            for (GoodsOrder order : orders) {
                GoodsOrderItemExample goie = new GoodsOrderItemExample();
                goie.createCriteria().andGoodsOrderIdEqualTo(String.valueOf(order.getId()));
                List<GoodsOrderItem> goodsOrderItems = goodsOrderItemMapper.selectByExample(goie);
                consumerOrders.add(new ConsumerOrder(order, goodsOrderItems));
            }
            System.out.println("查询订单成功");
            return consumerOrders;
        } else {
            System.out.println("用户没有订单");
        }
        return null;
    }


    /**
     * 用户结算完成后，删除用户购物车相应结算商品
     * @param consumer 用户信息
     * @param goodsId 商品ID
     * @return 删除结果
     */
    public boolean deleteShopCart(Consumer consumer,Integer goodsId) {
        GoodsCartExample gce = new GoodsCartExample();
        boolean flag = false;
        gce.createCriteria().andConsumerIdEqualTo(consumer.getId()).andGoodsIdEqualTo(goodsId);
        int i = goodsCartMapper.deleteByExample(gce);
        if (i > 0) {
            System.out.println("删除购物车结算商品成功");
            flag = true;
        } else {
            System.out.println("删除购物车结算商品失败");
            flag = false;
        }

        return flag;
    }

    /**
     * 查询用户订单
     * @param orderPage 分页信息
     * @param queryString 查询条件
     * @return 订单列表
     */
    public IPage<GoodsOrder> selectOrderPage(Page<GoodsOrder> orderPage, String queryString) {
        // 分页查询
        return  goodsOrderMapper.selectOrderPage(orderPage, queryString);
    }


    /**
     * 查询用户订单详情
     * @param orderId 订单ID
     * @return 订单详情
     */
    public List<GoodsOrderItem> selectOrderItemList(String orderId) {
        // 查询订单详情
        return  goodsOrderMapper.selectOrderItemList(orderId);
    }
}
