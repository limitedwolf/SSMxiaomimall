package com.mall.test;

import com.mall.xiaomi.entry.Goods;
import com.mall.xiaomi.service.GoodsService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;


public class DaoTest {

    @Autowired
    private GoodsService goodsService;
    @Test
    public void testSearch(){
        List<Goods> goodsList = goodsService.searchGoodsWithName("小米");
        for (Goods goods : goodsList) {
            System.out.println(goods);
        }
    }
}
