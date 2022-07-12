<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>商品详情页</title>
    <link rel="stylesheet" href="css/General%20style.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/detail.css">
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
                <a href="#">小米商城</a>
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
    <div class="site-header">
        <div class="container w clearfix">
            <!-- logo -->
            <div class="head-logo fl">
                <a href="index.jsp" class="logo text">
                    小米官网
                </a>
            </div>
            <!-- nav -->
            <div class="header-nav fl">
                <ul class="nav-list">
                    <li class="nav-item">
                        <a href="#" class="link">
                            <span class="text">小米手机</span>
                        </a>
                        <!-- nav - js -->

                    </li>
                    <li class="nav-item">
                        <a href="#" class="link">
                            <span class="text">Redmi 红米</span>
                        </a>
                        <!-- nav - js -->

                    </li>
                    <li class="nav-item">
                        <a href="#" class="link">
                            <span class="text">电视</span>
                        </a>
                        <!-- nav - js -->

                    </li>
                    <li class="nav-item">
                        <a href="#" class="link">
                            <span class="text">笔记本</span>
                        </a>
                        <!-- nav - js -->

                    </li>
                    <li class="nav-item">
                        <a href="#" class="link">
                            <span class="text">家电</span>
                        </a>
                        <!-- nav - js -->

                    </li>
                    <li class="nav-item">
                        <a href="#" class="link">
                            <span class="text">路由器</span>
                        </a>
                        <!-- nav - js -->

                    </li>
                    <li class="nav-item">
                        <a href="#" class="link">
                            <span class="text">智能硬件</span>
                        </a>
                        <!-- nav - js -->

                    </li>
                    <li>
                        <a href="#" class="link">
                            <span class="text">服务</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="link">
                            <span class="text">社区</span>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- 搜索框 -->
            <div class="header-search fr">
                <form action="" method="GET" class="search-form">
                    <input type="text" class="search-text" placeholder="小米11" id="searchinput">
                    <input type="submit" class="search-btn iconfont" value="&#xe652;" id="searchbtn">
                </form>
            </div>
        </div>
    </div>
</div>

<!-- 商品详情部分 -->
<div id="container">
    <!-- 商品导航 1230x60-->
    <div id="goods-nav">
        <div>
            <a href="#" id = "goodsname"></a>
        </div>
        
        <div>
            <a href="#">概述</a> | <a href="#">参数</a> | <a href="#">F码通道</a> | <a href="#">用户评价</a>
        </div>
    </div>
    <!-- 1230 x X -->
    <div id="detail">
        <input type="hidden" name="goodsId" id="goodsId">
        <!-- 图片轮播 560x560 -->
        <div id="dtleft">
            <img src="images/detail.jpg" alt="">
        </div>
        <!-- 商品介绍 -->
        <div id="dtright">
            <h2 id="goods-name">Redmi Note 8</h2>
            <div class="desc" id="goods-desc">
                4800万全场景四摄 / 前置1300万美颜相机 / 骁龙665处理器 / 4000mAh超长续航 / 标配18W快充 / 超线性扬声器 / 90%高屏占比 / 康宁大猩猩保护玻璃 / 6.3英寸水滴全面屏
            </div>
            <div class="goodstype">小米自营</div>
            <div class="price" id="goods-price">
                <span>1299元</span>
                <del>1399元</del>
            </div>
            <div style="clear:both;"></div>
            <div class="order">
                <div>
                    <span id="ordername">Redmi Note 8 6GB+128GB 梦幻蓝</span>
                    <span id="orderprice">1399元</span>
                    <div style="clear:both;"></div>
                </div>
                <div id="goods-subtotal">
                    总计 ：
                </div>
                <div style="clear:both;"></div>
            </div>
            <div class="btns">
                <input type="submit" id="addCart" value="加入购物车">
            </div>
            <br/>
        </div>
        <div style="clear:both;"></div>
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
                }
            }
        })
    })




    $(function() {
       // 获取到查询商品的编号
       let $gid = window.location.search.split("=")[1];
       // 发送请求获取商品数据
        $.ajax({
            url: "/goods/detail/" + $gid + ".do",
            method: "get",
            success: function(response) {
                console.log(response);
                let $goods = response.objectMap.goods;
                $("#goodsname").text($goods.name);
                // 更新商品编号
                $("#goodsId").val($goods.id);
                // 更新商品名称
                $("#goods-name").text($goods.name);
                // 更新商品描述
                $("#goods-desc").text($goods.remark);
                // 更新商品价格
                $("#goods-price span").text($goods.price + "元");
                $("#goods-price del").text($goods.price + "元");
                $("#goods-subtotal").text("总计：" + $goods.price + "元");
                // 更新商品图片
                $("#dtleft > img").attr("src", $goods.goodsImages[0].path);


                // 更新选择版本内容
                $("#xuanzebanben").html($goods.remark.substring(0,10));
                $("#xuanzejiage").html($goods.price + "元");
                $("#ordername").html($goods.name +" " +$goods.goodsImages[0].alt);
                $("#orderprice").html($goods.price + "元");
            },
            error: function () {
                console.log("请求迷失了");
            }
        });

        $("#addCart").click(function() {
            // 获取商品编号
            let $gid = $("#goodsId").val();
            // 加入购物车
            if(flag==true){
                console.log("用户已登录,可以加入购物车");
                $.ajax({
                    url: "/shopcart/add/" + $gid + ".do",
                    method: "GET",
                    success: function(response) {
                        console.log("加入购物车返回:"+response);
                        if(response.errorCode === "100" ) {
                            alert("商品成功加入购物车!")
                        } else {
                            alert("商品加入购物车失败，请稍后再试..")
                        }
                    },
                    error: function() {
                        console.log("请求走丢了...");
                        alert("服务器繁忙.请稍后再试...")
                    }
                });
            }
            else{
                console.log("用户未登录,不能加入购物车");
                window.location.replace("/login.jsp");
            }

        });
    });
</script>
</body>
</html>