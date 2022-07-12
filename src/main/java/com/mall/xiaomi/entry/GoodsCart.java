package com.mall.xiaomi.entry;

import java.util.Date;
import java.util.List;

public class GoodsCart {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_cart.id
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_cart.goods_id
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    private Integer goodsId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_cart.buy_count
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    private Integer buyCount;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_cart.add_date
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    private Date addDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_cart.subtotal
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    private Double subtotal;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_cart.consumer_id
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    private Integer consumerId;

    private List<GoodsImages> goodsImages;

    public List<GoodsImages> getGoodsImages() {
        return goodsImages;
    }

    public void setGoodsImages(List<GoodsImages> goodsImages) {
        this.goodsImages = goodsImages;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_cart.id
     *
     * @return the value of goods_cart.id
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_cart.id
     *
     * @param id the value for goods_cart.id
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_cart.goods_id
     *
     * @return the value of goods_cart.goods_id
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public Integer getGoodsId() {
        return goodsId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_cart.goods_id
     *
     * @param goodsId the value for goods_cart.goods_id
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_cart.buy_count
     *
     * @return the value of goods_cart.buy_count
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public Integer getBuyCount() {
        return buyCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_cart.buy_count
     *
     * @param buyCount the value for goods_cart.buy_count
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public void setBuyCount(Integer buyCount) {
        this.buyCount = buyCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_cart.add_date
     *
     * @return the value of goods_cart.add_date
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public Date getAddDate() {
        return addDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_cart.add_date
     *
     * @param addDate the value for goods_cart.add_date
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public void setAddDate(Date addDate) {
        this.addDate = addDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_cart.subtotal
     *
     * @return the value of goods_cart.subtotal
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public Double getSubtotal() {
        return subtotal;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_cart.subtotal
     *
     * @param subtotal the value for goods_cart.subtotal
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public void setSubtotal(Double subtotal) {
        this.subtotal = subtotal;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_cart.consumer_id
     *
     * @return the value of goods_cart.consumer_id
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public Integer getConsumerId() {
        return consumerId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_cart.consumer_id
     *
     * @param consumerId the value for goods_cart.consumer_id
     *
     * @mbg.generated Sun May 22 23:33:15 CST 2022
     */
    public void setConsumerId(Integer consumerId) {
        this.consumerId = consumerId;
    }

    public GoodsCart(Integer goodsId, Integer buyCount, Date addDate, Double subtotal, Integer consumerId) {
        this.goodsId = goodsId;
        this.buyCount = buyCount;
        this.addDate = addDate;
        this.subtotal = subtotal;
        this.consumerId = consumerId;
    }
}