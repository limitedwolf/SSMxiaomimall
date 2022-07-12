<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>我的订单页</title>
    <link rel="stylesheet" href="css/General%20style.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/myorder.css">

    <link rel="shortcut icon" href="images/favicon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/iconfont.css">
</head>
<body>
<!-- 网页头部导航 -->
<div class="header">
    <div class="site-topbar">
        <div class="container w clearfix">
            <!-- 头部导航 -->
            <div class="topbar-nav fl">
                <a href="${pageContext.request.contextPath}/index.jsp">小米商城</a>
                <span>|</span>
                <a href="#">MIUI</a>
                <span>|</span>
                <a href="#">IoT</a>
                <span>|</span>
                <a href="#">云服务</a>
                <span>|</span>
                <a href="#"> 天星数科</a>
                <span>|</span>
                <a href="#">有品</a>
                <span>|</span>
                <a href="#">小爱开放平台</a>
                <span>|</span>
                <a href="#">企业团购</a>
                <span>|</span>
                <a href="#">资质证照</a>
                <span>|</span>
                <a href="#">协议规则</a>
                <span>|</span>
                <a href="#" id="j-app" class="topbar-download">
                    下载app
                    <div class="appcode">
                        <img src="images/download.png" alt="小米商城" width="90" height="90">
                        小米商城app
                    </div>
                </a>
                <span>|</span>
                <a href="#">智能生活</a>
                <span>|</span>
                <a href="#">Select Location</a>
            </div>
            <div class="site-shop fr">
                <a href="/shopcart.jsp" class="cart">
                    <em class="iconfont">&#xe61c;</em>购物车
                    <span class="J-sp">  </span>
                </a>
            </div>
            <div class="topbar-info fr" id="logininfo" >
                <a href="login.jsp">登录</a>
                <span>|</span>
                <a href="register.jsp">注册</a>
                <span>|</span>
                <span class="site-info-span">
                        <a href="#">消息通知</a>
                    </span>
            </div>
        </div>
    </div>
</div>

<div class = "breadcrumbs">
    <div class="container">
        <a href="index.jsp">首页</a>
        <span class="sep">/</span>
        <span>我的订单</span>
    </div>
</div>
<div class="mi-orderlist">
<div class="container ">
    <div class="row">
<%--        左侧导航--%>
        <div class="span4">
            <div id="J_userMenu" class="user-address-menu">
                <div class="menu-box">
                    <h3 class="title">订单中心</h3>
                    <ul class="list">
                        <li><a href="${pageContext.request.contextPath}/myorder.jsp">我的订单</a> </li>
                    </ul>
                </div>
                <div class="menu-box">
                    <h3 class="title">个人中心</h3>
                    <ul class="list">
                        <li><a href="${pageContext.request.contextPath}/myprofile.jsp">我的账户</a> </li>
                        <li><a href="${pageContext.request.contextPath}/myfileupdate.jsp">修改信息</a> </li>
                        <li><a href="${pageContext.request.contextPath}/myaddress.jsp">修改地址</a> </li>
                    </ul>
                </div>
            </div>
        </div>
<%--    右侧导航--%>
        <div class="span16">
            <div class="mi-uc-box uc-main-box">
                <div class="uc-content-box order-list-box" id="listbox">
                    <div class="box-bd">
                     <h1 CLASS="title">我的订单</h1>
                    </div>
                    <div class="box-bd">
                        <div>
                            <ul class="order-list" id="order-list">
<%--                                <li class="uc-order-item uc-order-item-finish">--%>
<%--                                    <div class="order-detail">--%>
<%--                                        <div CLASS="order-summary">--%>
<%--                                            <div class="order-status">已收货</div>--%>
<%--                                        </div>--%>
<%--                                        <table class="order-detail-table">--%>
<%--                                            <thead>--%>
<%--                                            <tr>--%>
<%--                                                <th class="col-main">--%>
<%--                                                    <p class="caption-info" >--%>
<%--                                                        2020年08月18日 16:06--%>
<%--                                                        <span class="sep">|</span>--%>
<%--                                                        张益达--%>
<%--                                                        <span class="sep" >|</span>--%>
<%--                                                        <a data-v-53809398="" href="#">5200342423480683</a>--%>
<%--                                                        <span class="sep" >|</span>--%>
<%--                                                        在线支付（支付宝快捷支付）--%>
<%--                                                    </p>--%>
<%--                                                </th>--%>
<%--                                                <th class="col-sub" >--%>
<%--                                                    <p class="caption-price">--%>
<%--                                                    实付金额:--%>
<%--                                                    <span class="num" >1000</span>元--%>
<%--                                                    </p>--%>
<%--                                                </th>--%>
<%--                                            </tr>--%>
<%--                                            </thead>--%>
<%--                                            <tbody>--%>
<%--                                            <tr>--%>
<%--                                            <td class="order-items">--%>
<%--                                            <ul class="goods-list">--%>
<%--                                                <li>--%>
<%--                                                <div class="figure figure-thumb">--%>
<%--                                                    <img src="${pageContext.request.contextPath}/images/yashua.jpg" alt="米家电动牙刷" width="80" height="80">--%>
<%--                                                </div>--%>
<%--                                                <p class="name">--%>
<%--                                                    <a href="#">米家电动牙刷</a>--%>
<%--                                                </p>--%>
<%--                                                <p class="price">39.9元 × 1</p>--%>
<%--                                                </li>--%>
<%--                                            </ul>--%>
<%--                                        </table>--%>
<%--                                    </div>--%>
<%--                                </li>--%>
<%--                                <li class="uc-order-item uc-order-item-finish">--%>
<%--                                    <div class="order-detail">--%>
<%--                                        <div CLASS="order-summary">--%>
<%--                                            <div class="order-status">已收货</div>--%>
<%--                                        </div>--%>
<%--                                        <table class="order-detail-table">--%>
<%--                                            <thead>--%>
<%--                                            <tr>--%>
<%--                                                <th class="col-main">--%>
<%--                                                    <p class="caption-info" >--%>
<%--                                                        2020年08月18日 16:06--%>
<%--                                                        <span class="sep">|</span>--%>
<%--                                                        张益达--%>
<%--                                                        <span class="sep" >|</span>--%>
<%--                                                        <a data-v-53809398="" href="#">5200342423480683</a>--%>
<%--                                                        <span class="sep" >|</span>--%>
<%--                                                        在线支付（支付宝快捷支付）--%>
<%--                                                    </p>--%>
<%--                                                </th>--%>
<%--                                                <th class="col-sub" >--%>
<%--                                                    <p class="caption-price">--%>
<%--                                                        实付金额:--%>
<%--                                                        <span class="num" >1000</span>元--%>
<%--                                                    </p>--%>
<%--                                                </th>--%>
<%--                                            </tr>--%>
<%--                                            </thead>--%>
<%--                                            <tbody>--%>
<%--                                            <tr>--%>
<%--                                                <td class="order-items">--%>
<%--                                                    <ul class="goods-list">--%>
<%--                                                        <li>--%>
<%--                                                            <div class="figure figure-thumb">--%>
<%--                                                                <img src="${pageContext.request.contextPath}/images/yashua.jpg" alt="米家电动牙刷" width="80" height="80">--%>
<%--                                                            </div>--%>
<%--                                                            <p class="name">--%>
<%--                                                                <a href="#">米家电动牙刷</a>--%>
<%--                                                            </p>--%>
<%--                                                            <p class="price">39.9元 × 1</p>--%>
<%--                                                        </li>--%>
<%--                                                    </ul>--%>
<%--                                        </table>--%>
<%--                                    </div>--%>
<%--                                </li>--%>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



</div>




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
    var flag =false;
    $(function(){
        $.ajax({
            url:"/consumer/CheckLogin.do",
            method: "post",
            success:function (logininf){
                console.log(logininf);
                if(logininf.errorCode==="100"){
                    console.log("用户已登录");
                    flag=true;
                    $("#logininfo").html("欢迎您："+logininf.objectMap.consumer.username +"&ensp;<a href=\"/consumer/logout.do\">退出</a>");
                } else{
                    console.log("用户未登录")
                    window.location.href="/login.jsp";
                }
            }
        })
    })


    $(function (){
        $.ajax({
            url:"/order/getOrder.do",
            method:"GET",
            success:function(res){
                let $orderlist = res.objectMap.orderList;
                console.log($orderlist);
                for(let i=0;i<$orderlist.length;i++){
                    console.log("加载第"+i+"个订单");
                    loadOrders($orderlist[i],);
                }

            }
        })


        function loadOrders(orderlist){

            let $temppricesubtotal = 0;
                let $order_item_finish = $("<li>").addClass("uc-order-item uc-order-item-finish");
                let $order_detail = $("<div>").addClass("order-detail");
                let $order_summary = $("<div>").addClass("order-summary");
                let $order_status = $("<div>").addClass("order-status").text(orderlist.status);
                let $table = $("<table>").addClass("order-detail-table");
                let $thead = $("<thead>");
                let $tr1 = $("<tr>");
                let $th1 = $("<th>").addClass("col-main");
                let $p1 = $("<p>").addClass("caption-info").text("订单号："+orderlist.id+" | 订单日期："+
                    new Date(orderlist.order_date).getFullYear()+"年"+(new Date(orderlist.order_date).getMonth()+1)+"月"+ new Date(orderlist.order_date).getDate()+"日"+" | 订单状态："+orderlist.status);
                let $span1 = $("<span>").addClass("sep");



                let $th2 = $("<th>").addClass("col-sub");
                let $tbody = $("<tbody>");
                let $tr2 = $("<tr>");
                let $td1 = $("<td>").addClass("order-items");
                let $ul = $("<ul>").addClass("goods-list");
                for(let i=0;i<orderlist.goodsList.length;i++){
                    $temppricesubtotal = $temppricesubtotal+ orderlist.goodsList[i].goodsSubtotal;


                    let $li = $("<li>");
                    let $figure = $("<div>").addClass("figure figure-thumb");
                    let $img = $("<img>").attr("src",orderlist.goodsList[i].goodsImg).attr("width","80").attr("height","80");
                    let $goodsname;
                    $.ajax({
                        url: "/goods/detail/" + orderlist.goodsList[i].goodsId + ".do",
                        method: "get",
                        async:false,
                        success: function(response) {
                            $goodsname = response.objectMap.goods.name;
                        }
                    })



                    let $pname = $("<p>").addClass("name").text($goodsname);
                    let $pprice = $("<p>").addClass("price").text(orderlist.goodsList[i].goodsPrice+"元"+"x"+orderlist.goodsList[i].goodsCount);
                    $li.append($figure);
                    $figure.append($img);
                    $li.append($pname);
                    $li.append($pprice);
                    $ul.append($li);


                }
            let $span2 = $("<span>").addClass("num").text($temppricesubtotal);
            let $p2 = $("<p>").addClass("caption-price").text("实付金额:").append($span2).append("元");
                // let $li = $("<li>");
                // let $figure = $("<div>").addClass("figure figure-thumb");
                // let $img = $("<img>").attr("src",orderlist[i].goodsList[0].goodsImg).attr("width","80").attr("height","80");
                //let $pname = $("<p>").addClass("name").text(orderlist.goodsList[j].goodsN);
                 // let $pprice = $("<p>").addClass("price").text(res.objectMap.orderList[0].goodsList[0].goodsPrice+"元"+"x"+res.objectMap.orderList[0].goodsList[0].goodsCount);


                $order_summary.append($order_status);
                $th1.append($p1)
                $th2.append($p2)
                $tr1.append($th1);
                $tr1.append($th2);
                $thead.append($tr1);
                $table.append($thead);

                $td1.append($ul);
                $tr2.append($td1);
                $tbody.append($tr2)
                $table.append($tbody);
                $order_detail.append($order_summary);
                $order_detail.append($table);
                $order_item_finish.append($order_detail);
                $("#order-list").append($order_item_finish);
            }

        })






</script>
</body>
</html>