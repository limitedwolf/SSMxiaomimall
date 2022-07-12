<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="images/favicon/favicon.ico" type="image/x-icon">
    <title>小米商城 - 结算页</title>
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/General style.css">
    <link rel="stylesheet" href="css/iconfont.css">
    <link rel="stylesheet" href="css/checkout.css">
</head>
<body>
<!--顶部导航栏-->
<div class="site-header site-mini-header">
<div class="container"><div class="header-logo"><a href="${pageContext.request.contextPath}/index.jsp" title="小米官网" class="logo ir">小米官网</a></div> <div id="J_miniHeaderTitle" class="header-title has-more"><h2>
    确认订单
</h2> <p></p></div> <div class="site-topbar "><div id="J_siteUserInfo" class="topbar-info"><span class="user">
            <a data-spm="navigation.mycenter_navigation_bar.1" rel="nofollow" class="user-name" href="${pageContext.request.contextPath}/myprofile.jsp" target="_blank">
                <span class="name" id="monstername">限量版孤狼</span>
                <i class="iconfont-arrow-down-mini"></i>
            </a>
            </span>
    <span class="sep">|</span>
    <a data-spm="navigation.to_order_navigation_bar.1" rel="nofollow" class="link link-order" href="${pageContext.request.contextPath}/myorder.jsp" target="_blank">我的订单</a></div></div></div>

</div>


<!--主体部分-->
<div class="mi-checkout page-main">
    <div class="container">
        <div class="checkout-wrap">
            <div class="checkout-main">
                <div class="checkout-detail">
                    <div class="detail-section address-detail">
                        <div class="address-header">
                            <span class="header-title" >收货地址</span>
                        </div>
                        <div class="address-list show-less-list">
                            <div class="address-item">
                                <div class="address-info">
                                    <div class="name" id="name">狼狼
                                        <span style="color: rgb(176, 176, 176);"></span>
                                    </div>


                                <div class="tel" id="phone">133****1234</div>
                                <div class="address-con">
                                    <span id="province">湖北</span>
                                    <span id="city">武汉市</span>
                                    <span id="country">江汉区</span>
                                    <span id="street">江汉大道</span>
                                    <span class="info" id="remark">集美路集美大学</span>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="detail-section">
                        <div class="detail-header">商品清单</div>
                        <div class="goods-list">
<%--                            <div class="good-item">--%>
<%--                                <div class="item-desc good-img">--%>
<%--                                    <img src="images/goods10.png" alt="">--%>
<%--                                </div>--%>
<%--                                <div class="item-desc good-name">--%>
<%--                                    <span>Redmi K50 8GB+128GB 墨羽</span>--%>
<%--                                </div>--%>
<%--                                <div class="item-desc price-box">--%>
<%--                                    <div class="item-desc good-price">--%>
<%--                                        2199元 x 1--%>
<%--                                    </div>--%>
<%--                                    <div class="item-desc good-total">--%>
<%--                                        2199元--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                        </div>
                    </div>
                    <div class="detail-section">
                        <div class="section-options section-shipment">
                            <div class="options-desc options-header">
                                <div class="title">配送方式</div>
                            </div>
                            <div class="options-desc options-body">
                                <div class="options-list">
                                    <div class="options-item selected">
                                        包邮
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="detail-section count-detail">
                        <div class="section-bill">
                            <div class="bill-item">
                                <div class="bill-name">商品件数：</div>
                                <div class="bill-money" id="allcount">1件</div>
                            </div>
                            <div class="bill-item">
                                <div class="bill-name">商品总价：</div>
                                <div class="bill-money" id="allpirce">2199元</div>
                            </div>
                            <div class="bill-item total-price">
                                <div class="bill-name" >应付总额：</div>
                                <div class="bill-money" >
                                    <em id="allpriceInt">2199</em>元
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="detail-section footer-detail clearfix">
                        <div class="handle-action">
                            <div class="operating-button">
                                <a class="btn btn-primary" href="#" id="primary" style="color: white;">提交订单</a>
                                <a class="btn btn-return" href="${pageContext.request.contextPath}/shopcart.jsp">返回购物车</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>


    </div>
</div>




<div style="clear:both;"></div>

<!-- 底部 -->
<div class="footer-box">
    <div class="site-footer clearfix">
        <div class="w">
            <!-- 服务部分 -->
            <div class="footer-service">
                <ul class="list-service clearfix">
                    <li><a href="#"><em class="iconfont">&#xe629;</em>预约维修服务</a></li>
                    <li><a href="#"><em class="iconfont">&#xe61f;</em>7天无理由退货</a></li>
                    <li><a href="#"><em class="iconfont iconfont-circle-15">&#xe606;</em>15天免费换货</a></li>
                    <li><a href="#"><em class="iconfont">&#xe633;</em>满99元包邮</a></li>
                    <li><a href="#"><em class="iconfont">&#xe632;</em>520余家售后网点</a></li>
                </ul>
            </div>
            <!-- 友情链接 -->
            <div class="footer-links">
                <dl class="col-links">
                    <dt>帮助中心</dt>
                    <dd><a href="#">账户管理</a></dd>
                    <dd><a href="#">购物指南</a></dd>
                    <dd><a href="#">订单操作</a></dd>
                </dl>
                <dl class="col-links">
                    <dt>服务支持</dt>
                    <dd><a href="#">售后政策</a></dd>
                    <dd><a href="#">自助服务</a></dd>
                    <dd><a href="#">相关下载</a></dd>
                </dl>
                <dl class="col-links">
                    <dt>线下门店</dt>
                    <dd><a href="#">小米之家</a></dd>
                    <dd><a href="#">服务网点</a></dd>
                    <dd><a href="#">授权体验店</a></dd>
                </dl>
                <dl class="col-links">
                    <dt>关于小米</dt>
                    <dd><a href="#">了解小米</a></dd>
                    <dd><a href="#">加入小米</a></dd>
                    <dd><a href="#">投资者关系</a></dd>
                    <dd><a href="#">企业社会责任</a></dd>
                    <dd><a href="#">廉洁举报</a></dd>
                </dl>
                <dl class="col-links">
                    <dt>关注我们</dt>
                    <dd><a href="#">新狼微博</a></dd>
                    <dd><a href="#">官方微信</a></dd>
                    <dd><a href="#">联系我们</a></dd>
                    <dd><a href="#">公益基金会</a></dd>
                </dl>
                <dl class="col-links">
                    <dt>特色服务</dt>
                    <dd><a href="#">F 码通道</a></dd>
                    <dd><a href="#">礼物码</a></dd>
                    <dd><a href="#">防伪查证</a></dd>
                </dl>
                <div class="col-contact">
                    <p class="phone">400-100-5678</p>
                    <p>8:00-18:00（仅收市话费）</p>
                    <a href="#" class="btn-small">
                        <em class="iconfont">&#xe604;</em> 人工客服
                    </a>
                    <div class="follow">
                        关注小米
                        <a href="#" class="wb"></a>
                        <a href="#" class="wx" id="J_followWx"></a>
                        <img src="images/wx-img.png" alt="" id="J_followWxImg">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="site-info">
        <div class="w container clearfix">
            <div class="logo ir">小米官网</div>
            <div class="info-text">
                <p class="sites">
                    <a href="#">小米商城</a>
                    <span>|</span>
                    <a href="#">MIUI</a>
                    <span>|</span>
                    <a href="#"> 米家</a>
                    <span>|</span>
                    <a href="#">米聊</a>
                    <span>|</span>
                    <a href="#">多看</a>
                    <span>|</span>
                    <a href="#">游戏</a>
                    <span>|</span>
                    <a href="#">政企服务</a>
                    <span>|</span>
                    <a href="#">小米天猫店</a>
                    <span>|</span>
                    <a href="#">小米集团隐私政策</a>
                    <span>|</span>
                    <a href="#">小米公司儿童信息保护规则</a>
                    <span>|</span>
                    <a href="#">小米商城隐私政策</a>
                    <span>|</span>
                    <a href="#">小米商城用户协议</a>
                    <span>|</span>
                    <a href="#">问题反馈</a>
                    <span>|</span>
                    <a href="#">Select Location</a>
                </p>
                <p class="sites">
                    <a href="#">北京互联网法院法律服务工作站</a>
                    <span>|</span>
                    <a href="#">中国消费者协会</a>
                    <span>|</span>
                    <a href="#">北京市消费者协会</a>
                </p>
                <p>
                    ©
                    <a href="#">mi.com</a> 京ICP证110507号
                    <a href="#">京ICP备10046444号</a>
                    <a href="#">京公网安备11010802020134号</a>
                    <a href="#">京网文[2020]0276-042号</a>
                    <br>
                    <a href="#">（京）网械平台备字（2018）第00005号</a>
                    <a href="#">互联网药品信息服务资格证 (京)-非经营性-2014-0090</a>
                    <a href="#">营业执照</a>
                    <a href="#">医疗器械质量公告</a>
                    <br>
                    <a href="#">增值电信业务许可证</a> 网络食品经营备案 京食药网食备202010048
                    <a href="#">食品经营许可证</a>
                    <br> 违法和不良信息举报电话：171-5104-4404
                    <a href="#">知识产权侵权投诉</a> 本网站所列数据，除特殊说明，所有数据均出自我司实验室测试
                </p>
            </div>
            <div class="info-links">
                <a href="#"><img src="images/truste.png" alt=""></a>
                <a href="#"><img src="images/v-logo-1.png" alt=""></a>
                <a href="#"><img src="images/v-logo-2.png" alt=""></a>
                <a href="#"><img src="images/fx.png" alt=""></a>
                <a href="#" class="safe-auth  J_safeAuth"><img src="images/js-1.png" alt="" class="img1"><img src="images/js-2.png" alt="" class="img2"></a>
            </div>
        </div>
    </div>
</div>
<script src="js/jquery-3.4.1.min.js"></script>
<script>
    var goodslistjson;

    // 判断购物车哪些ID被买下
    $(function (){
        let $gid = window.location.search.split('=')[1];
        let $arraygid = $gid.split(',');
        console.log($arraygid);
        $.ajax({
            url: "/shopcart/chk.do",
            method: "GET",
            success: function(response) {
                // 获取所有的商品
                let $cartList = response.objectMap.cartList;
                let temprice=0;
                let goodsList = [];
                let $tempcount =0;
                for(const i in $cartList){
                    // 遍历购物车商品,取出商品ID
                    let $cartid = $cartList[i].id;

                    // 判断选择了购物车的几号商品,inarray函数如果为-1则没找到,其他则为元素的位置。
                    if($.inArray($cartid.toString(),$arraygid)!==-1){
                        let goods = {};
                        console.log($cartList[i]);
                        temprice = temprice + $cartList[i].subtotal;
                        goods.goodsId = $cartList[i].goodsId;
                        goods.goodsNum = $cartList[i].buyCount;
                        $tempcount = $tempcount+$cartList[i].buyCount;
                        goodsList.push(goods);
                        // 渲染商品清单列表
                        loadGoods($cartList[i]);
                    }
                    // 渲染总价格,总数量
                    loadTotal($tempcount,temprice)
                }
                // 将商品清单转换为JSON,准备创建订单时传值
                goodslistjson  =JSON.stringify(goodsList);
            }
        })

    })

    /**
     * 判断用户登录状态,未登录则跳转到登录页面
     */
    $(function() {
        $.ajax({
            url:"/consumer/CheckLogin.do",
            method: "post",
            success:function (logininf){
                if(logininf.errorCode==="100"){
                    console.log("用户已登录");
                    $("#monstername").text(logininf.objectMap.consumer.username);
                } else{
                    console.log("用户未登录");
                    window.location.replace("/login.jsp");
                }
            }
        })
    });


    // 判断是否添加了地址
    $(function() {
        $.ajax({
            url:"/consumer/address.do",
            method: "post",
            success:function(res){
                console.log(res);
                if(res.objectMap.goodsShippingAddress === null){
                    console.log("查询失败,可能没有创建地址");
                    window.location.replace("/myaddress.jsp");

                }else{
                    console.log("查询成功");
                    let $add = res.objectMap.goodsShippingAddress;
                    $("#name").text($add.name);
                    $("#phone").text($add.phone);
                    $("#province").text($add.province);
                    $("#city").text($add.city);
                    $("#country").text($add.country);
                    $("#street").text($add.street);
                    $("#remark").text($add.remark);
                }
            },
            error:function(res){
                console.log("查询失败,可能没有创建地址");
                window.location.replace("/myaddress.jsp");
            }
        })
    });
    function loadGoods(goodlist){
        // let $good_list = $("<div>").addClass("goods-list");
        let $good_item = $("<div>").addClass("good-item");
        let $good_img = $("<div>").addClass("item-desc good-img");
        let $imgsrc = $("<img>").attr("src",goodlist.goodsImages[0].path);

        $good_img.append($imgsrc);
        let $good_namediv = $("<div>").addClass("item-desc good-name");
        let $good_name = $("<span>").text(goodlist.goodsImages[0].title +"   "+goodlist.goodsImages[0].alt);

        $good_namediv.append($good_name);
        let $price_box = $("<div>").addClass("item-desc price-box");
        let $good_price = $("<div>").addClass("item-desc good-price").text(goodlist.subtotal/goodlist.buyCount + "x"+ goodlist.buyCount);
        let $good_total = $("<div>").addClass("item-desc good-total").text(goodlist.subtotal +"元");

        $price_box.append($good_price);
        $price_box.append($good_total);

        $good_item.append($good_img);
        $good_item.append($good_namediv);
        $good_item.append($price_box);


        $(".goods-list").append($good_item);

    }
    function loadTotal(count,subtotal){
        $("#allcount").text(count+"件");
        $("#allpirce").text(subtotal+"元");
        $("#allpriceInt").text(subtotal);

    }

    $("#primary").click(function (){
            $.ajax({
                url: "/order/create.do",
                method: "POST",
                contentType: "application/json",
                data:goodslistjson,
                success: function(response) {
                    console.log(response);
                    if(response.errorCode==="100"){
                        console.log("创建订单成功");
                        window.location.href="/ordersuccess.jsp?orderId="+response.objectMap.orderCode;
                    }
                    else if(response.errorCode==="200"){
                        alert("请求创建订单失败!");
                    }
                },
                error : function() {
                    console.log("请求创建订单失败!");
                    alert("请求创建订单失败!");
            }

        })

    })


</script>


</body>
</html>