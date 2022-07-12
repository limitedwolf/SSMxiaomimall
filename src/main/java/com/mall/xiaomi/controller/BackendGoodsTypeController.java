package com.mall.xiaomi.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mall.xiaomi.entry.GoodsType;
import com.mall.xiaomi.service.GoodsTypeService;
import com.mall.xiaomi.utils.PageResult;
import com.mall.xiaomi.utils.QueryPageBean;
import com.mall.xiaomi.utils.ResponseMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
@RequestMapping("/backendgoodstype")
public class BackendGoodsTypeController {

    @Autowired
    public GoodsTypeService goodsTypeService;


    /**
     * 分页方法
     * @param queryPageBean 包含当前页，页大小和查询条件
     * @return 总页数和分页结果
     */
    @RequestMapping("/findPage.do")
    public PageResult findPage(@RequestBody QueryPageBean queryPageBean){

        // 当前页，和每页大小
        Page<GoodsType> goodsTypePage = new Page<>(queryPageBean.getCurrentPage(), queryPageBean.getPageSize());
        // 如果有搜索条件,则搜索
        IPage<GoodsType> goodsTypeIPage = goodsTypeService.selectGoodsTypePage(goodsTypePage, queryPageBean.getQueryString());
        // 当前页记录
        List<GoodsType> records = goodsTypeIPage.getRecords();
        // 总页数
        Long totoal = goodsTypeIPage.getTotal();
        // 返回当前记录和总页数给前台
        return new PageResult(totoal,records);
    }

    /**
     * 商品类别增加
     * @param goodsType 商品类别
     * @return 增加成功与否的结果
     */
    @RequestMapping("/addItem.do")
    public ResponseMessage add(@RequestBody GoodsType goodsType){
        try{
            goodsTypeService.add(goodsType);
        }
        catch (Exception e){
            return ResponseMessage.error();
        }
        return ResponseMessage.success();
    }

    /**
     * 编辑商品类型
     * @param goodsType 要修改的商品类型
     * @return 编辑结果
     */
    @RequestMapping("/editItem.do")
    public ResponseMessage editItem(@RequestBody GoodsType goodsType){
        try{
            goodsTypeService.editItem(goodsType);
        }
        catch (Exception e){
            return ResponseMessage.error();
        }
        return  ResponseMessage.success();
    }

    /**
     * 删除要删除的商品类型
     * @param id 商品类型ID
     * @return 删除结果
     */
    @RequestMapping("/deleteItem.do")
    public ResponseMessage deleteItem(Integer id){
        try{
            goodsTypeService.deleteItem(id);
        }
        catch (Exception e){
            return ResponseMessage.error();
        }
        return  ResponseMessage.success();
    }


}
