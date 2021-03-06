package com.mall.xiaomi.dao;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mall.xiaomi.entry.GoodsOrder;
import com.mall.xiaomi.entry.GoodsOrderExample;
import com.mall.xiaomi.entry.GoodsOrderItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsOrderMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_order
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    long countByExample(GoodsOrderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_order
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int deleteByExample(GoodsOrderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_order
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_order
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int insert(GoodsOrder row);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_order
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int insertSelective(GoodsOrder row);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_order
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    List<GoodsOrder> selectByExample(GoodsOrderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_order
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    GoodsOrder selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_order
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int updateByExampleSelective(@Param("row") GoodsOrder row, @Param("example") GoodsOrderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_order
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int updateByExample(@Param("row") GoodsOrder row, @Param("example") GoodsOrderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_order
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int updateByPrimaryKeySelective(GoodsOrder row);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods_order
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int updateByPrimaryKey(GoodsOrder row);

    IPage<GoodsOrder> selectOrderPage(Page<GoodsOrder> orderPage,@Param("queryString") String queryString);

    List<GoodsOrderItem> selectOrderItemList(@Param("queryString") String orderId);
}