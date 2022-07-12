package com.mall.xiaomi.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mall.xiaomi.dao.ConsumerMapper;
import com.mall.xiaomi.dao.GoodsShippingAddressMapper;
import com.mall.xiaomi.entry.Consumer;
import com.mall.xiaomi.entry.ConsumerExample;
import com.mall.xiaomi.entry.GoodsShippingAddress;
import com.mall.xiaomi.entry.GoodsShippingAddressExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 用户服务
 */
@Service
public class ConsumerService {
    @Autowired
    private ConsumerMapper consumerMapper;

    @Autowired
    private GoodsShippingAddressMapper goodsShippingAddressMapper;

    /**
     * 通过用户名和密码查询是否有该用户
     * @param consumer 用户
     * @return 存在用户返回true，反之false
     */
    public Consumer findConsumerWithUsernameAndPassword(Consumer consumer){

        // 创建条件对象
        ConsumerExample ce = new ConsumerExample();
        ce.createCriteria().andUsernameEqualTo(consumer.getUsername()).andPasswordEqualTo(consumer.getPassword());
        // 查询数据
        List<Consumer> consumerList = consumerMapper.selectByExample(ce);
        // 判断结果
        return consumerList !=null && consumerList.size() == 1 ? consumerList.get(0) :null;

    }


    /**
     * 用户注册服务
     * @param consumer 用户名和密码
     * @return 返回注册结果信息。
     */
    public String register(Consumer consumer){
        // 验证用户账号是否已注册
        ConsumerExample ce = new ConsumerExample();
        ce.createCriteria().andUsernameEqualTo(consumer.getUsername());
        // 根据条件对象查询数据
        List<Consumer> consumerList = consumerMapper.selectByExample(ce);
        if(consumerList !=null && consumerList.size()>0){
            // 查询到用户信息，说明用户名已经存在，要求更换用户名
            return  "注册失败，账户已经被注册过，请更换注册名后再试！";
        }else{
            // 第一次用户注册，向数据库插入用户信息
            consumerMapper.insertSelective(consumer);
            return "注册成功！";
        }

    }

    /**
     * 查询所有用户
     * @param page 分页参数
     * @param queryString 查询条件
     * @return 返回用户分页信息
     */
    public IPage<Consumer> selectConsumerPage(Page<Consumer> page, String queryString) {
        // 开始分页
        return consumerMapper.selectPageVo(page,queryString);
    }


    /**
     * 查询用户的收货地址
     * @param consumerId 用户id
     * @return 返回用户的收货地址
     */
    public GoodsShippingAddress selectGoodsShippingAddress(String consumerId){
        GoodsShippingAddressExample gsae = new GoodsShippingAddressExample();
        gsae.createCriteria().andConsumerIdEqualTo(Integer.valueOf(consumerId));
        List<GoodsShippingAddress> goodsShippingAddresses = goodsShippingAddressMapper.selectByExample(gsae);
        System.out.println("service查到的地址:"+goodsShippingAddresses.get(0));
        return goodsShippingAddresses.get(0);
    }

    /**
     * 增加用户的收货地址
     * @param goodsShippingAddress 收货地址
     */
    public void addGoodsShippingAddress(GoodsShippingAddress goodsShippingAddress) {
        goodsShippingAddressMapper.insertSelective(goodsShippingAddress);
    }

    /**
     * 更新用户的收货地址
     * @param goodsShippingAddress 收货地址
     * @return 返回更新结果
     */

    public Integer updateGoodsShippingAddress(GoodsShippingAddress goodsShippingAddress) {
         return goodsShippingAddressMapper.updateByPrimaryKey(goodsShippingAddress);
    }

    /**
     * 更新用户个人资料
     * @param consumer 用户
     * @return 返回更新结果
     */
    public Integer updateProfile(Consumer consumer) {
        return consumerMapper.updateByPrimaryKey(consumer);
    }
}
