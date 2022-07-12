package com.mall.xiaomi.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mall.xiaomi.entry.GoodsOrder;
import com.mall.xiaomi.entry.GoodsOrderItem;
import com.mall.xiaomi.service.OrderService;
import com.mall.xiaomi.utils.PageResult;
import com.mall.xiaomi.utils.QueryPageBean;
import com.mall.xiaomi.utils.ResponseMessage;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * BackendOrderController
 *
 * @author monsterwolf
 * @date 2022/6/11 11:14
 * @description 后台订单管理控制器
 */

@RestController
@RequestMapping("/backendorder")
public class BackendOrderController {

    @Autowired
    public OrderService orderService;

    /**
     * 分页方法
     * @param queryPageBean 包含当前页，页大小和查询条件
     * @return 总页数和分页结果
     */
    @RequestMapping("/findPage.do")
    public PageResult findPage(@RequestBody QueryPageBean queryPageBean){
        // 当前页，和每页大小
        Page<GoodsOrder> orderPage = new Page<>(queryPageBean.getCurrentPage(), queryPageBean.getPageSize());
        // 如果有搜索条件,则搜索
        IPage<GoodsOrder> orderIPage = orderService.selectOrderPage(orderPage, queryPageBean.getQueryString());
        // 当前页记录
        List<GoodsOrder> records = orderIPage.getRecords();
        // 总页数
        Long totoal = orderIPage.getTotal();
        // 返回当前记录和总页数给前台
        return new PageResult(totoal,records);
    }

    /**
     * 根据订单id查询订单详情
     * @param id 订单id
     * @return 订单详情
     * @throws ParseException 异常
     */
    @RequestMapping("/findOrderByOrderId.do")
    public ResponseMessage findOrderByOrderId(@RequestBody String id) throws ParseException {
        // 将前端传来的json字符串转换成json对象
        JSONParser parser = new JSONParser();
        JSONObject jsonObject = (JSONObject) parser.parse(id);
        System.out.println("开始查询订单"+jsonObject.get("id"));
        // 根据订单id查询订单详情
        List<GoodsOrderItem> orderItems = orderService.selectOrderItemList((String) jsonObject.get("id"));
        if(orderItems.size()>0) {
            System.out.println("查询订单成功");
            return ResponseMessage.success().addObject("orderItems", orderItems);
        }
        else{
            System.out.println("查询订单失败");
            return ResponseMessage.error();
            }
    }
}
