package com.mall.xiaomi.controller;

import com.mall.xiaomi.entry.Goods;
import com.mall.xiaomi.service.GoodsService;
import com.mall.xiaomi.utils.ResponseMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/goods")
public class GoodsController {
    @Autowired
    private GoodsService goodsService;

    /**
     * 根据商品id查询商品
     * @param gid 商品id
     * @return 商品信息
     */
    @GetMapping("/detail/{gid}.do")
    @ResponseBody
    public ResponseMessage findGoodsWithId(@PathVariable Integer gid){
        Goods goods = goodsService.findGoodsWithId(gid);
        return  ResponseMessage.success().addObject("goods",goods);
    }
}
