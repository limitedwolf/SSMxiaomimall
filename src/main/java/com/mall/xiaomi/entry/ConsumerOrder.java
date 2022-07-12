package com.mall.xiaomi.entry;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

public class ConsumerOrder {
    private String id;
    private Date order_date;
    private Integer consumer_id;
    private String status;
    private Integer goods_shipping_address;


    public List<GoodsOrderItem> goodsList;



    public ConsumerOrder() {
    }

    @Override
    public String toString() {
        return "ConsumerOrder{" +
                "id='" + id + '\'' +
                ", order_date=" + order_date +
                ", consumer_id=" + consumer_id +
                ", status='" + status + '\'' +
                ", goods_shipping_address=" + goods_shipping_address +
                ", goodsList=" + goodsList +
                '}';
    }

    public ConsumerOrder(GoodsOrder order, Collection<GoodsOrderItem> goodsOrderItems) {
        this.id = order.getId();
        this.order_date=order.getOrderDate();
        this.consumer_id=order.getConsumerId();
        this.status=order.getStatus();
        this.goods_shipping_address=order.getGoodsShippingAddressId();
        this.goodsList= new ArrayList<>(goodsOrderItems);
    }



    public List<GoodsOrderItem> getGoodsList() {
        return goodsList;
    }

    public void setGoodsList(List<GoodsOrderItem> goodsList) {
        this.goodsList = goodsList;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getOrder_date() {
        return order_date;
    }

    public void setOrder_date(Date order_date) {
        this.order_date = order_date;
    }

    public Integer getConsumer_id() {
        return consumer_id;
    }

    public void setConsumer_id(Integer consumer_id) {
        this.consumer_id = consumer_id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getGoods_shipping_address() {
        return goods_shipping_address;
    }

    public void setGoods_shipping_address(Integer goods_shipping_address) {
        this.goods_shipping_address = goods_shipping_address;
    }


}
