package com.mall.xiaomi.entry;

import java.util.List;

public class Goods {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods.id
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    private Integer id;

    private List<GoodsImages> goodsImages; // 增加商品图片属性

    public List<GoodsImages> getGoodsImages() {
        return goodsImages;
    }

    public void setGoodsImages(List<GoodsImages> goodsImages) {
        this.goodsImages = goodsImages;
    }

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods.name
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    private String name;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods.price
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    private Double price;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods.stock
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    private Integer stock;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods.goods_type_id
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    private Integer goodsTypeId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods.remark
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    private String remark;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.id
     *
     * @return the value of goods.id
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.id
     *
     * @param id the value for goods.id
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.name
     *
     * @return the value of goods.name
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.name
     *
     * @param name the value for goods.name
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.price
     *
     * @return the value of goods.price
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public Double getPrice() {
        return price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.price
     *
     * @param price the value for goods.price
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public void setPrice(Double price) {
        this.price = price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.stock
     *
     * @return the value of goods.stock
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public Integer getStock() {
        return stock;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.stock
     *
     * @param stock the value for goods.stock
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public void setStock(Integer stock) {
        this.stock = stock;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.goods_type_id
     *
     * @return the value of goods.goods_type_id
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public Integer getGoodsTypeId() {
        return goodsTypeId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.goods_type_id
     *
     * @param goodsTypeId the value for goods.goods_type_id
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public void setGoodsTypeId(Integer goodsTypeId) {
        this.goodsTypeId = goodsTypeId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.remark
     *
     * @return the value of goods.remark
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public String getRemark() {
        return remark;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.remark
     *
     * @param remark the value for goods.remark
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}