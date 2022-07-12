package com.mall.xiaomi.controller;

import com.mall.xiaomi.entry.Goods;
import com.mall.xiaomi.entry.GoodsType;
import com.mall.xiaomi.service.GoodsService;
import com.mall.xiaomi.service.GoodsTypeService;
import com.mall.xiaomi.utils.ResponseMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 搜索处理Controller
 */
@Controller
@RequestMapping("/s")
public class SerachContoller {
    @Autowired
    private GoodsService goodsService;
    @Autowired
    private GoodsTypeService goodsTypeService;

    /**
     * 商品按照名字进行模糊搜索
     * @param name 商品名称
     * @return 返回商品搜索结果
     */
    @GetMapping("/search/{name}.do")
    @ResponseBody
    public ResponseMessage serachGoodsWithName(@PathVariable  String name){
        List<Goods> goodsList = goodsService.searchGoodsWithName(name);
        return  goodsList.size()>0 ? ResponseMessage.success().addObject("goodList",goodsList) : ResponseMessage.error();
    }

    /**
     * 带有价格区间的关键词搜索
     * @param name 商品名称
     * @param low 价格区间下限
     * @param high 价格区间上限
     * @return 返回商品搜索结果
     */
    @GetMapping("/search/{name}/{low}/{high}.do")
    @ResponseBody
    public ResponseMessage searchGoodsWithNameAndPrice(@PathVariable String name,@PathVariable Double low,@PathVariable Double high){
        List<Goods> goodsList = goodsService.searchGoodsWithNameAndPrice(name,low,high);
        return  goodsList.size()>0 ? ResponseMessage.success().addObject("goodList",goodsList) : ResponseMessage.error();
    }

    /**
     * 根据类型查找商品
     * @param level 商品类型级别 1级类型二级类型
     * @param goodsTypeId 类型编号
     * @return 返回相应数据
     */
    @GetMapping("/search/{level}/{goodsTypeId}.do")
    @ResponseBody
    public ResponseMessage searchGoodsWithType(@PathVariable Integer level,@PathVariable Integer goodsTypeId){
        // 根据编号查询类型
        GoodsType goodsType = goodsTypeService.findById(goodsTypeId);
        List<Goods> goodsList = null;
        if(level == 1 ){
            goodsList = goodsService.findGoodsWithTopType(goodsType);
        } else if(level == 2){
            goodsList = goodsService.findGoodsWithType(goodsType);
        }
        return  goodsList != null && goodsList.size()>0 ? ResponseMessage.success().addObject("goodsList",goodsList) : ResponseMessage.error();
    }
}
