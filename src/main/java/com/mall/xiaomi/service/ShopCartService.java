package com.mall.xiaomi.service;

import com.mall.xiaomi.dao.GoodsCartMapper;
import com.mall.xiaomi.entry.Consumer;
import com.mall.xiaomi.entry.Goods;
import com.mall.xiaomi.entry.GoodsCart;
import com.mall.xiaomi.entry.GoodsCartExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
@Service
public class ShopCartService {

    @Autowired
    private GoodsCartMapper goodsCartMapper;

    /**s
     * 指定商品加入购物车
     * @param goods 加入购物车的商品
     * @return 加入结果,是否成功
     */
    public boolean addGoodsToShopCart(Consumer consumer,Goods goods){
        List<GoodsCart> cartList = this.checkGoods(consumer,goods);
        for (GoodsCart goodsCart : cartList) {
            System.out.println("add购物车service的商品ID:"+goodsCart.getGoodsId());
        }
        if(cartList.size()>0){
            // 商品数量增加
            int count = cartList.get(0).getBuyCount();
            System.out.println("count:"+count);
            cartList.get(0).setBuyCount(count+1);
            goodsCartMapper.updateByPrimaryKey(cartList.get(0));
            // 金额增加
            double price = cartList.get(0).getSubtotal() / count * cartList.get(0).getBuyCount();
            cartList.get(0).setSubtotal(price);
            goodsCartMapper.updateByPrimaryKey(cartList.get(0));
        }
        else{
            // 商品新增
            GoodsCart gc = new GoodsCart(goods.getId(),1,new Date(),goods.getPrice(),consumer.getId());
            goodsCartMapper.insertSelective(gc);
        }
        return true;


    }



    /**
     * 从购物车删除商品
     * @param goods 购物车删除的商品
     * @return 删除结果, 是否删除成功
     */
    public boolean removeGoodsFromShopCart(Consumer consumer,Goods goods){
        List<GoodsCart> cartList = this.checkGoods(consumer,goods);
        if(cartList.size()>0){
            // 存在,删除
            goodsCartMapper.deleteByPrimaryKey((cartList.get(0)).getId());
            return true;
        }
        System.out.println("商品不存在!");
        return false;
    }

    /**
     * 查找用户购物车商品
     * @param consumer 用户信息
     * @return 返回购物车商品内容
     */
    public List<GoodsCart> findAllGoodsFromShopCart(Consumer consumer){
        GoodsCartExample gce = new GoodsCartExample();
        gce.createCriteria().andConsumerIdEqualTo(consumer.getId());
        return goodsCartMapper.selectByExample(gce);
    }

    /**
     * 判断商品是否在购物车中
     * @param consumer 所属用户
     * @param goods 商品对象
     * @return 商品数据
     */
    private  List<GoodsCart> checkGoods(Consumer consumer,Goods goods){
        // 查询指定商品在当前用户的购物车是否存在
        GoodsCartExample gce = new GoodsCartExample();
        gce.createCriteria().andConsumerIdEqualTo(consumer.getId()).andGoodsIdEqualTo(goods.getId());

        // 查询
        List<GoodsCart> cartList = goodsCartMapper.selectByExample(gce);
        return  cartList;
    }


    /**
     * 更新购物车商品数量
     * @param consumer 所属用户
     * @param goods 商品对象
     * @param count 更新后的数量
     */
    public void goodsCountUpdate(Consumer consumer, Goods goods, int count){
        List<GoodsCart> cartList = this.checkGoods(consumer,goods);
        int buyCount = cartList.get(0).getBuyCount();
        if(count>0){
            // 商品数量增加
            cartList.get(0).setBuyCount(count);
            goodsCartMapper.updateByPrimaryKey(cartList.get(0));
            // 金额增加
            double price = cartList.get(0).getSubtotal() / buyCount * cartList.get(0).getBuyCount();
            cartList.get(0).setSubtotal(price);
            goodsCartMapper.updateByPrimaryKey(cartList.get(0));
        }
        else{
            // 商品数量减少
            cartList.get(0).setBuyCount(count);
            goodsCartMapper.updateByPrimaryKey(cartList.get(0));
            // 金额减少
            double price = cartList.get(0).getSubtotal() / buyCount * cartList.get(0).getBuyCount();
            cartList.get(0).setSubtotal(price);
            goodsCartMapper.updateByPrimaryKey(cartList.get(0));
        }
    }
}
