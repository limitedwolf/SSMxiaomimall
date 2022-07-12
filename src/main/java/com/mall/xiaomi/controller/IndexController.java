package com.mall.xiaomi.controller;

import com.mall.xiaomi.entry.Goods;
import com.mall.xiaomi.entry.GoodsType;
import com.mall.xiaomi.service.GoodsService;
import com.mall.xiaomi.service.GoodsTypeService;
import com.mall.xiaomi.utils.ResponseMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 首页内容处理Controller
 */
@RestController
public class IndexController {
    @Autowired
    private GoodsTypeService goodsTypeService;
    @Autowired
    private GoodsService goodsService;

    /**
     * 获取首页内容
     * @return 首页内容
     */
    @GetMapping("/initindex.do")
    public ResponseMessage initIndex(){
        // 查询一级商品类型的数据
        List<GoodsType> topLevel = goodsTypeService.findTopLevel();
        Map<Integer,List<Goods>> goodsMap = new HashMap<>();
        for(GoodsType goodsType:topLevel){
            // 遍历查询一级类型下的二级类型
            // 一级类型下的二级类型
            List<GoodsType> secondLevel = goodsTypeService.findSecondLevel(goodsType);
            for(GoodsType secondGoodsType:secondLevel){
                // 查询类型下的商品
                List<Goods> goodsList = goodsService.findGoodsWithType(secondGoodsType);
                // 查询到的数据进行存储
                goodsMap.put(secondGoodsType.getId(),goodsList);
            }
        }
        // 返回给首页，一级商品类型和二级商品数据
        return ResponseMessage.success().addObject("goodsTypeList",topLevel).addObject("goodsMap",goodsMap);
    }


}
