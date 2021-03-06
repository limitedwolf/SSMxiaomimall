package com.mall.xiaomi.dao;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mall.xiaomi.entry.Consumer;
import com.mall.xiaomi.entry.ConsumerExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ConsumerMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table consumer
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    long countByExample(ConsumerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table consumer
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int deleteByExample(ConsumerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table consumer
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table consumer
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int insert(Consumer row);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table consumer
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int insertSelective(Consumer row);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table consumer
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    List<Consumer> selectByExample(ConsumerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table consumer
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    Consumer selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table consumer
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int updateByExampleSelective(@Param("row") Consumer row, @Param("example") ConsumerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table consumer
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int updateByExample(@Param("row") Consumer row, @Param("example") ConsumerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table consumer
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int updateByPrimaryKeySelective(Consumer row);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table consumer
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    int updateByPrimaryKey(Consumer row);

    IPage<Consumer> selectPageVo(Page<Consumer> page, @Param("queryString")String queryString);
}