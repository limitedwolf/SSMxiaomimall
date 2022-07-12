package com.mall.xiaomi.entry;

import java.util.Map;

public class CommitGoods {
    private Integer goodsId;
    private Integer goodsNum;

    @Override
    public String toString() {
        return "CommitGoods{" +
                "goodsId=" + goodsId +
                ", goodsNum=" + goodsNum +
                '}';
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public Integer getGoodsNum() {
        return goodsNum;
    }

    public void setGoodsNum(Integer goodsNum) {
        this.goodsNum = goodsNum;
    }
}
