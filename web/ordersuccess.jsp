<%--
  Created by IntelliJ IDEA.
  User: monster
  Date: 2022/6/6
  Time: 23:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单提交成功</title>
    <link rel="stylesheet" href="css/iconfont.css">
    <link rel="stylesheet" href="css/ordersuccess.css">
</head>
<body>
<div>
    <div class="site-header site-mini-header">
        <div class="container">
            <div class="header-logo">
                <a class="logo ir" href="${pageContext.request.contextPath}/index.jsp">
                    <img src="images/milogo.png" alt="" style="width: 64px;height: 64px">
                </a>
            </div>
            <div id="J_miniHeaderTitle" class="header-title has-more">
                <h2>支付订单</h2>
            </div>
            <div class="site-topbar">
                <div id="J_siteUserInfo" class="topbar-info">
                    <span class="user">
                       <a class="user-name" href="${pageContext.request.contextPath}/myprofile.jsp" >
                        <span class="name" id="monstername">限量版孤狼</span>
                           </a>
                    </span>
                    <span class ="sep">|</span>
                    <a class="link link-order" href="${pageContext.request.contextPath}/myorder.jsp">
                        我的订单
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="page-main">
    <div class="container confirm-box">
        <div class="confirm-context">
            <div class="confirm-order">
                <div class="section section-order">
                    <div class="order-info clearfix">
                        <div class="fl">
                          <h2 class="title">订单提交成功！</h2>
                            <p class="order-time">
                                <span>您的订单号：
                                <span class="pay-time-tip">0 小时 14 分</span>
                                    <span> 商品会尽快为您配送哦~</span>
                                </span>
                            </p>
                            <p class="post-info" >
                                即将跳转到订单中心页面
                            </p>
                        </div>

                    </div>
                    <i class="iconfont icon-right">√</i>
                </div>
            </div>
        </div>
        </div>
</div>

</body>
<script src="js/jquery-3.4.1.min.js">
</script>
<script>
    // 定时器,倒计时结束后跳转到我的订单页面
$(function(){
        var time = 400;
        var timer = setInterval(function(){
            time--;
            if(time<0){
                clearInterval(timer);
                window.location.href="${pageContext.request.contextPath}/myorder.jsp";
            }
        });
});
// 获取订单号
    $(function () {
        let $orderid = window.location.search.split('=')[1];
        console.log($orderid);
        $(".pay-time-tip").text($orderid);
    }
    );


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


</script>
</html>
