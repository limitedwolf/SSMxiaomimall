package com.mall.xiaomi.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mall.xiaomi.dao.GoodsImagesMapper;
import com.mall.xiaomi.entry.GoodsImages;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * GoodsImageService
 *
 * @author monsterwolf
 * @date 2022/6/10 14:13
 * @description 商品图片处理服务
 */

@Service
public class GoodsImageService {

    @Autowired
    private GoodsImagesMapper goodsImagesMapper;

    /**
     * 分页方法
     * @param page 分页参数
     * @param queryString 查询条件
     * @return 分页结果
     */
    public IPage<GoodsImages> selectGoodsImagesPage(Page<GoodsImages> page, String queryString){
        // 开始分页
        return goodsImagesMapper.selectPageVo(page,queryString);
    }

    /**
     * 对数据库进行插入操作
     * @param goodsImages 商品图片
     */
    public void add(GoodsImages goodsImages){
        goodsImagesMapper.insertSelective(goodsImages);
    }

    /**
     * 对数据库进行修改操作
     * @param goodsImages 商品图片
     */
    public void editItem(GoodsImages goodsImages) {
        goodsImagesMapper.updateByPrimaryKey(goodsImages);
    }

    /**
     * 从数据库删除商品图片
     * @param id 类型的ID,主键
     */
    public void deleteItem(Integer id){
        goodsImagesMapper.deleteByPrimaryKey(id);
    }
}
