package com.mall.xiaomi.service;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mall.xiaomi.dao.GoodsMapper;
import com.mall.xiaomi.entry.Goods;
import com.mall.xiaomi.entry.GoodsExample;
import com.mall.xiaomi.entry.GoodsType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 商品服务
 */
@Service
public class GoodsService {
    // 自动注入
    @Autowired
    private GoodsMapper goodsMapper;

    @Autowired
    private GoodsTypeService goodsTypeService;

    /**
     * 根据一级商品类型查询商品
     * @param goodsType 商品二级类型
     * @return 商品类型下的商品
     */
    public List<Goods> findGoodsWithType(GoodsType goodsType){
        GoodsExample ge = new GoodsExample();
        // 获取相同类型下的商品
        ge.createCriteria().andGoodsTypeIdEqualTo(goodsType.getId());
        return goodsMapper.selectByExample(ge);
    }

    /**
     * 根据二级类型查询商品
     * @param goodsType 一级类型
     * @return 返回商品结果
     */
    public List<Goods> findGoodsWithTopType(GoodsType goodsType) {
        // 根据一级类型查询所有二级类型
        List<GoodsType> gt = goodsTypeService.findSecondLevel(goodsType);
        // 查询二级类型下的商品
        List<Goods> goodsList = new ArrayList<>();
        for(GoodsType goodsType1 :gt){
            List<Goods> goodses = this.findGoodsWithType(goodsType1);
            goodsList.addAll(goodses);
        }
        return  goodsList;
    }


    /**
     * 根据名称模糊搜索商品
     * @param name 商品名称
     * @return 返回结果
     */
    public List<Goods> searchGoodsWithName(String name) {
        // 构建条件
        GoodsExample ge  = new GoodsExample();
        ge.createCriteria().andNameLike("%"+name+"%");
        return goodsMapper.selectByExample(ge);
    }


    /**
     * 根据Id 查询商品
     * @param id 商品编号
     * @return 查询商品
     */
    public Goods findGoodsWithId(Integer id){
        return  goodsMapper.selectByPrimaryKey(id);
    }


    /**
     * 分页查询商品
     * @param goodsPage 页数参数
     * @param queryString 查询参数
     * @return 返回结果
     */
    public IPage<Goods> selectGoodsPage(Page<Goods> goodsPage, String queryString) {
        // 开始分页
        return goodsMapper.selectPageVo(goodsPage,queryString);
    }

    /**
     * 增加商品
     * @param goods  商品信息
     */
    public void add(Goods goods){
        goodsMapper.insertSelective(goods);
    }

    /**
     * 修改商品
     * @param goods 商品信息
     */
    public void editItem(Goods goods){
        goodsMapper.updateByPrimaryKey(goods);
    }


    /**
     * 删除商品
     * @param id 商品编号
     */
    public void deleteItem(Integer id){
        goodsMapper.deleteByPrimaryKey(id);
    }

    /**
     * 根据价格区间查询商品
     * @param name 商品名称
     * @param low 价格下限
     * @param high 价格上限
     * @return 返回结果
     */
    public List<Goods> searchGoodsWithNameAndPrice(String name, Double low, Double high) {
        GoodsExample ge = new GoodsExample();
        ge.createCriteria().andNameLike("%"+name+"%").andPriceBetween(low,high);
        return goodsMapper.selectByExample(ge);
    }
}
