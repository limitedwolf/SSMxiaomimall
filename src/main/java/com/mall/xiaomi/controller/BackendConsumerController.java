package com.mall.xiaomi.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mall.xiaomi.entry.Consumer;
import com.mall.xiaomi.service.ConsumerService;
import com.mall.xiaomi.utils.PageResult;
import com.mall.xiaomi.utils.QueryPageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * BackendConsumer
 *
 * @author monsterwolf
 * @date 2022/6/11 11:01
 * @description 后台用户管理控制器
 */
@RestController
@RequestMapping("/backendconsumer")
public class BackendConsumerController {

    @Autowired
    public ConsumerService consumerService;

    /**
     * 用户分页查询
     * @param queryPageBean 分页查询条件
     * @return 分页结果
     */
    @RequestMapping("/findPage.do")
    public PageResult findPage(@RequestBody QueryPageBean queryPageBean){
        // 当前页，和每页大小
        Page<Consumer>  consumerPage = new Page<>(queryPageBean.getCurrentPage(), queryPageBean.getPageSize());
        // 如果有搜索条件,则搜索
        IPage<Consumer> consumerIPage = consumerService.selectConsumerPage(consumerPage, queryPageBean.getQueryString());
        // 当前页记录
        List<Consumer> records = consumerIPage.getRecords();
        // 总页数
        Long totoal = consumerIPage.getTotal();
        // 返回当前记录和总页数给前台
        return new PageResult(totoal,records);
    }
}
