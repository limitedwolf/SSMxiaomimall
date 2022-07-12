<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>小米商城 - 搜索结果页</title>
        <link rel="shortcut icon" href="images/favicon/favicon.ico" type="image/x-icon">
        <link rel="stylesheet" href="css/General style.css">
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="css/iconfont.css">
        <link rel="stylesheet" href="css/slideshow.css">
        <link rel="stylesheet" href="css/home-hero.css">
        <link rel="stylesheet" href="css/home-main.css">
        <link rel="stylesheet" href="css/footer.css">
        <link rel="stylesheet" href="css/searchgoodslist.css">
        <style>
            body {
                font-family: '微软雅黑', serif;
            }
            .priceinput {
                font-size: 18px;
                margin-top: 40px;
                color: #b0b0b0;
            }
            #lowestpirce{
                right: 51px;
                z-index: 1;
                width: 100px;
                height: 24px;
                padding: 0 10px;
                font-size: 14px;
                line-height: 48px;
            }
            #highestprice{
                right: 51px;
                z-index: 1;
                width: 100px;
                height: 24px;
                padding: 0 10px;
                font-size: 14px;
                line-height: 48px;
            }
            #searchprice{
                right: 0;
                z-index: 2;
                width: 20px;
                height: 20px;
                font-size: 20px;
                line-height: 24px;
                color: #616161;
                cursor: pointer;
            }
        </style>
    </head>

    <body>
        <!-- 头部 -->
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
                    <div class="site-shop fr" >
                        <a href="/shopcart.jsp" class="cart">
                            <em class="iconfont">&#xe61c;</em>购物车
                            <span class="J-sp">  </span>
                        </a>
                    </div>
                    <div class="topbar-info fr" id="logininfo">
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
        <div class="listcontainer">
        <div class="glist">
            <div class = "priceinput" >价格区间:
            <input id="lowestpirce" type="text"/> - <input id="highestprice" type="text"/>
                <input id="searchprice" value="&#xe652;" class="iconfont"/>
            </div>
            <div class="glistbox" id="search_goods_box">
                <!-- 搜索到的商品展示区域 -->
            </div>




        </div>
        </div>
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
        <!-- 工具条 -->
        <div class="home-tool-bar">
            <a href="#" class="item">
                <div class="icon">
                    <img src="images/tool-1.png" alt="" class="static"><img src="images/tool-01.png" alt="" class="hover">
                </div>
                <span class="text">手机APP</span>
                <div class="pop-content">
                    <img src="images/APP.png" alt="">
                    <span class="desc">
                    扫码领取新人百元礼包
                </span>
                </div>
            </a>
            <a href="#" class="item">
                <div class="icon">
                    <img src="images/tool-2.png" alt="" class="static"><img src="images/tool-02.png" alt="" class="hover">
                </div>
                <span class="text">个人中心</span>
            </a>
            <a href="#" class="item">
                <div class="icon">
                    <img src="images/tool-3.png" alt="" class="static"><img src="images/tool-03.png" alt="" class="hover">
                </div>
                <span class="text">售后服务</span>
            </a>
            <a href="#" class="item">
                <div class="icon"><img src="images/tool-4.png" alt="" class="static"><img src="images/tool-04.png" alt="" class="hover"></div>
                <span class="text">人工客服</span>
            </a>
            <a href="/shopcart.jsp" class="item">
                <div class="icon"><img src="images/tool-5.png" alt="" class="static"><img src="images/tool-05.png" alt="" class="hover"></div>
                <span class="text">购物车</span>
            </a>
            <a href="#" class="item backtop" id="J_atop">
                <div class="icon">
                    <img src="images/totop.png" alt="" class="static"><img src="images/totop_hover.png" alt="" class="hover">
                </div>
                <span class="text">回顶部</span>
            </a>
        </div>

    </body>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script>
        $(function(){
            $.ajax({
                url:"/consumer/CheckLogin.do",
                method: "post",
                success:function (logininf){
                    console.log(logininf);
                    if(logininf.errorCode==100){
                        console.log("用户已登录");
                        $("#logininfo").html("欢迎您："+logininf.objectMap.consumer.username +"&ensp;<a href=\"/consumer/logout.do\">退出</a>");
                    } else{
                        console.log("用户未登录")
                    }
                }
            })
        })


        $(function() {

            console.log((window.location.search.split("=").length));
            // 获取搜索关键词
            if(window.location.search.split("=").length<=2){
                console.log("走到只搜索关键词的方法");
                var $search = window.location.search.split("=")[1]; // ?wd=小米
                console.log($search);
                // Ajax请求，搜索商品
                $.ajax({
                    url: "/s/search/" + $search + ".do",
                    method: "GET",
                    success: function(response) {
                        console.log(response);
                        // 展示搜索到的商品
                        let $goodslist = response.objectMap.goodList;
                        loadGoods($goodslist, $("#search_goods_box"))
                    },
                    error: function() {
                        console.log("搜索请求失败");
                    }
                });
            }else{
                console.log("价格比较方法")
                console.log(window.location.href.split("?")[1]);
                let $tempurl =window.location.href.split("?")[1];
                var $search = $tempurl.split("&")[0].split("=")[1]; // ?wd=小米
                let $lowp = $tempurl.split("&")[1].split("=")[1]; // 最低价
                let $highp = $tempurl.split("&")[2].split("=")[1]; // 最高价
                console.log($search);
                console.log($lowp);
                console.log($highp);
                // Ajax请求，搜索商品
                $.ajax({
                    url: "/s/search/" + $search + "/" + $lowp + "/" + $highp + ".do",
                    method: "GET",
                    success: function(response) {
                        console.log(response);
                        // 展示搜索到的商品
                        let $goodslist = response.objectMap.goodList;
                        loadGoods($goodslist, $("#search_goods_box"))
                    },
                    error: function() {
                        console.log("搜索请求失败");
                    }
                });
            }
            function loadGoods(goodslist, container) {
                // 遍历商品列表，将商品添加到页面汇总
                for(let i = 0; i < goodslist.length; i++) {
                    let $boxitem = $("<div>").addClass("goodsboxitem");
                    let $a = $("<a>").attr("href", "/detail.jsp?gid=" + goodslist[i].id);
                    let $content = $("<div>").addClass("content");
                    let $thumb = $("<div>").addClass("thumb");
                    let $img = $("<img>").attr("src", goodslist[i].goodsImages[0].path);
                    $thumb.append($img);
                    let $thumbx = $("<div>").addClass("thumbnailx");
                    let $title = $("<div>").addClass("title").text(goodslist[i].name);
                    let $desc = $("<div>").addClass("desc").text(goodslist[i].remark);

                    let $price = $("<div>").addClass("price");
                    let $span = $("<span>").text(goodslist[i].price + "元");
                    $price.append($span)

                    $content.append($thumb).append($title).append($desc).append($price).append($thumbx);
                    $a.append($content);
                    $boxitem.append($a);

                    container.append($boxitem);
                }
            }
            $("#searchbtn").click(function (){
                // 获取搜索关键词
                let $word = $("#searchinput").val();
                console.log($word);
                window.event.returnValue=false; // 注销掉默认的表单的action行为.
                window.location="/goodslist.jsp?wd=" +$word;
            })


            $("#searchprice").click(function (){
                if($("#lowestpirce").val()==="" && $("#highestprice").val()==="" ){
                    window.location.reload();
                }else if($("#lowestpirce").val()==="" && $("#highestprice").val()!=="") {
                    let $high = $("#highestprice").val();
                    window.location = "/goodslist.jsp?wd=" +$search+"&low=0"+"&high="+$high;
                }else if($("#lowestpirce").val()!=="" && $("#highestprice").val()===""){
                    let $low = $("#lowestpirce").val();
                    window.location = "/goodslist.jsp?wd=" +$search+"&low="+$low+"&high=9999999999";
                }
                else{
                    let $low = $("#lowestpirce").val();
                    let $high = $("#highestprice").val();
                    window.location="/goodslist.jsp?wd=" +$search+"&low="+$low+"&high="+$high;
                }

            })
        });
    </script>
    </html>
