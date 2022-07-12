package com.mall.xiaomi.utils;



import java.io.Serializable;
import java.util.List;


public class PageResult implements Serializable {

    private Long totalPagesize;

    private List<?> listResult;

    @Override
    public String toString() {
        return "PageResult{" +
                "totalPagesize=" + totalPagesize +
                ", listResult=" + listResult +
                '}';
    }

    public Long getTotalPagesize() {
        return totalPagesize;
    }

    public void setTotalPagesize(Long totalPagesize) {
        this.totalPagesize = totalPagesize;
    }

    public List<?> getListResult() {
        return listResult;
    }

    public void setListResult(List<?> listResult) {
        this.listResult = listResult;
    }

    public PageResult(Long totalPagesize, List<?> listResult) {
        this.totalPagesize = totalPagesize;
        this.listResult = listResult;
    }

    public PageResult() {
    }
}
