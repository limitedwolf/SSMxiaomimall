package com.mall.xiaomi.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mall.xiaomi.entry.Goods;
import com.mall.xiaomi.service.GoodsService;
import com.mall.xiaomi.utils.PageResult;
import com.mall.xiaomi.utils.QueryPageBean;
import com.mall.xiaomi.utils.ResponseMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * BackendGoodsContoller
 *
 * @author monsterwolf
 * @date 2022/6/9 19:14
 * @description 后台商品管理控制器
 */


@RestController
@RequestMapping("/backendgoods")
public class BackendGoodsController {

    @Autowired
    public GoodsService goodsService;

    /**
     * 商品分页查询
     * @param queryPageBean 分页查询条件
     * @return 分页结果
     */
    @RequestMapping("/findPage.do")
    public PageResult findPage(@RequestBody QueryPageBean queryPageBean){
        // 当前页，和每页大小1
        Page<Goods> goodsPage = new Page<>(queryPageBean.getCurrentPage(), queryPageBean.getPageSize());
        // 如果有搜索条件,则搜索
        IPage<Goods> goodsIPage = goodsService.selectGoodsPage(goodsPage, queryPageBean.getQueryString());
        // 当前页记录
        List<Goods> records = goodsIPage.getRecords();
        // 总页数
        Long totoal = goodsIPage.getTotal();
        // 返回当前记录和总页数给前台
        return new PageResult(totoal,records);
    }

    /**
     * 增加商品
     * @param goods 商品信息
     * @return 增加结果
     */
    @RequestMapping("/addItem.do")
    public ResponseMessage add(@RequestBody Goods goods){
        try{
            goodsService.add(goods);
        }
        catch (Exception e){
            return ResponseMessage.error();
        }
        return ResponseMessage.success();
    }

    /**
     * 编辑商品信息
     * @param goods 要修改的商品
     * @return 编辑结果
     */
    @RequestMapping("/editItem.do")
    public ResponseMessage editItem(@RequestBody Goods goods){
        try{
            goodsService.editItem(goods);
        }
        catch (Exception e){
            return ResponseMessage.error();
        }
        return  ResponseMessage.success();
    }

    /**
     * 删除要删除的商品
     * @param id 商品ID
     * @return 删除结果
     */
    @RequestMapping("/deleteItem.do")
    public ResponseMessage deleteItem(Integer id){
        try{
            goodsService.deleteItem(id);
        }
        catch (Exception e){
            return ResponseMessage.error();
        }
        return  ResponseMessage.success();
    }



}
