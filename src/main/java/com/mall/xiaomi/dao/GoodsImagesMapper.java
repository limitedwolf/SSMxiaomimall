package com.mall.xiaomi.dao;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mall.xiaomi.entry.GoodsImages;
import com.mall.xiaomi.entry.GoodsImagesExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsImagesMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_images
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    long countByExample(GoodsImagesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_images
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int deleteByExample(GoodsImagesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_images
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_images
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int insert(GoodsImages row);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_images
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int insertSelective(GoodsImages row);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_images
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    List<GoodsImages> selectByExample(GoodsImagesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_images
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    GoodsImages selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_images
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int updateByExampleSelective(@Param("row") GoodsImages row, @Param("example") GoodsImagesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_images
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int updateByExample(@Param("row") GoodsImages row, @Param("example") GoodsImagesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_images
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int updateByPrimaryKeySelective(GoodsImages row);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_images
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int updateByPrimaryKey(GoodsImages row);

    IPage<GoodsImages> selectPageVo(Page<GoodsImages> page, @Param("queryString") String queryString);
}