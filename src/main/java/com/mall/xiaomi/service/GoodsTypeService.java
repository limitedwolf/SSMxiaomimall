package com.mall.xiaomi.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mall.xiaomi.dao.GoodsTypeMapper;
import com.mall.xiaomi.entry.GoodsType;
import com.mall.xiaomi.entry.GoodsTypeExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *  GoodsType 商品类型处理服务
 */
@Service
public class GoodsTypeService {
    /**
     * 商品类型数据访问接口
     */
    @Autowired
    private  GoodsTypeMapper goodsTypeMapper;


    /**
     *  一级菜单展示内容（侧边栏）
     * @return 一级菜单展示内容
     */
    public List<GoodsType> findTopLevel(){
        GoodsTypeExample  gte= new GoodsTypeExample();
        gte.createCriteria().andPidIsNull(); // 父级类型为空 则为一级类型
        return  goodsTypeMapper.selectByExample(gte);
    }

    /**
     * 查询一级下的二级内容
     * @return 返回一级类型下的二级商品
     */
    public List<GoodsType> findSecondLevel(GoodsType toplevel){
        GoodsTypeExample  gte = new GoodsTypeExample();
        // 判断是否是一级类型下的商品
        gte.createCriteria().andPidEqualTo(toplevel.getId());
        return  goodsTypeMapper.selectByExample(gte);
    }

    /**
     * 根据主键查询类型
     * @param goodsTypeId 主键ID
     * @return 商品类型
     */
    public GoodsType findById(Integer goodsTypeId) {
        return  goodsTypeMapper.selectByPrimaryKey(goodsTypeId);
    }


    /**
     * 分页查询商品类别列表
     * @param page 页数参数
     * @param queryString 查询条件
     * @return 分页结果
     */
    public IPage<GoodsType> selectGoodsTypePage(Page<GoodsType> page,String queryString){
        // 开始分页
        return goodsTypeMapper.selectPageVo(page,queryString);
    }

    /**
     * 对数据库进行插入操作
     * @param goodsType 商品类型
     */
    public void add(GoodsType goodsType){
        goodsTypeMapper.insertSelective(goodsType);
    }

    /**
     * 对数据库进行修改操作
     * @param goodsType 商品类型
     */
    public void editItem(GoodsType goodsType) {
        goodsTypeMapper.updateByPrimaryKey(goodsType);
    }

    /**
     * 从数据库删除商品类型
     * @param id 类型的ID,主键
     */
    public void deleteItem(Integer id){
        goodsTypeMapper.deleteByPrimaryKey(id);
    }
}
