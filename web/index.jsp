<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>小米商城 - 小米11、Redmi Note 9、小米MIX Alpha，小米电视官方网站</title>
    <link rel="shortcut icon" href="images/favicon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/General style.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/iconfont.css">
    <link rel="stylesheet" href="css/slideshow.css">
    <link rel="stylesheet" href="css/home-hero.css">
    <link rel="stylesheet" href="css/home-main.css">
    <link rel="stylesheet" href="css/footer.css">
    <style>
        body {
            font-family: '微软雅黑', serif;
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
                <div class="site-shop fr">
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
                    <a href="#" class="logo text">
                        小米官网
                    </a>
                </div>
                <!-- nav -->
                <div class="header-nav fl">
                    <ul class="nav-list">
                        <li class="nav-category">
                            <a href="#" id="header-title" class="header-title">全部商品分类</a>
                            <div class="site-category">
                                <ul class="cat-ul">


                                </ul>

                            </div>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="link">
                                <span class="text">小米手机</span>
                            </a>
                            <!-- nav - js -->
                            <div class="header-nav-menu">
                                <div class="container w">
                                    <ul id="miphonenavlist">

                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="link">
                                <span class="text">Redmi 红米</span>
                            </a>
                            <!-- nav - js -->
                            <div class="header-nav-menu">
                                <div class="container w">
                                    <ul id="redmiphonenavlist">

                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="link">
                                <span class="text">电视</span>
                            </a>
                            <!-- nav - js -->
                            <div class="header-nav-menu">
                                <div class="container w">
                                    <ul id="tvnavlist">

                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="link">
                                <span class="text">笔记本</span>
                            </a>
                            <!-- nav - js -->
                            <div class="header-nav-menu">
                                <div class="container w">
                                    <ul id="notebooknavlist">

                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="link">
                                <span class="text">家电</span>
                            </a>
                            <!-- nav - js -->
                            <div class="header-nav-menu">
                                <div class="container w">
                                    <ul>
                                        <li class="menu-nav">
                                            <em></em>
                                            <a href="#">
                                                <div class="figure figure-none">
                                                    <img src="images/5-01.webp" alt="小米11" width="160" height="110">
                                                </div>
                                                <div class="title">小米11</div>
                                                <p>3999元起</p>
                                            </a>
                                        </li>
                                        <li class="menu-nav">
                                            <em></em>
                                            <a href="#">
                                                <div class="figure">
                                                    <img src="images/5-01.webp" alt="小米10至尊纪念版" width="160" height="110">
                                                </div>
                                                <div class="title">小米10至尊纪念版</div>
                                                <p>5299元起</p>
                                            </a>
                                        </li>
                                        <li class="menu-nav">
                                            <em></em>
                                            <a href="#">
                                                <div class="figure">
                                                    <img src="images/5-01.webp" alt="小米10" width="160" height="110">
                                                </div>
                                                <div class="title">小米10</div>
                                                <p>3399元起</p>
                                            </a>
                                        </li>
                                        <li class="menu-nav">
                                            <em></em>
                                            <a href="#">
                                                <div class="figure">
                                                    <img src="images/5-01.webp" alt="小米10 青春版 5G" width="160" height="110">
                                                </div>
                                                <div class="title">小米10 青春版 5G</div>
                                                <p>1999元起</p>
                                            </a>
                                        </li>
                                        <li class="menu-nav">
                                            <em></em>
                                            <a href="#">
                                                <div class="figure">
                                                    <img src="images/5-01.webp" alt="小米MIX Alpha" width="160" height="110">
                                                </div>
                                                <div class="title">小米MIX Alpha</div>
                                                <p>19999元起</p>
                                            </a>
                                        </li>
                                        <li class="menu-nav">
                                            <a href="#">
                                                <div class="figure">
                                                    <img src="images/5-01.webp" alt="小米MIX Alpha" width="160" height="110">
                                                </div>
                                                <div class="title">小米MIX Alpha</div>
                                                <p>19999元起</p>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="link">
                                <span class="text">路由器</span>
                            </a>
                            <!-- nav - js -->
                            <div class="header-nav-menu">
                                <div class="container w">
                                    <ul>
                                        <li class="menu-nav">
                                            <em></em>
                                            <a href="#">
                                                <div class="figure figure-none">
                                                    <img src="images/6-01.webp" alt="小米11" width="160" height="110">
                                                </div>
                                                <div class="title">小米11</div>
                                                <p>3999元起</p>
                                            </a>
                                        </li>
                                        <li class="menu-nav">
                                            <em></em>
                                            <a href="#">
                                                <div class="figure">
                                                    <img src="images/6-01.webp" alt="小米10至尊纪念版" width="160" height="110">
                                                </div>
                                                <div class="title">小米10至尊纪念版</div>
                                                <p>5299元起</p>
                                            </a>
                                        </li>
                                        <li class="menu-nav">
                                            <em></em>
                                            <a href="#">
                                                <div class="figure">
                                                    <img src="images/6-01.webp" alt="小米10" width="160" height="110">
                                                </div>
                                                <div class="title">小米10</div>
                                                <p>3399元起</p>
                                            </a>
                                        </li>
                                        <li class="menu-nav">
                                            <em></em>
                                            <a href="#">
                                                <div class="figure">
                                                    <img src="images/6-01.webp" alt="小米10 青春版 5G" width="160" height="110">
                                                </div>
                                                <div class="title">小米10 青春版 5G</div>
                                                <p>1999元起</p>
                                            </a>
                                        </li>
                                        <li class="menu-nav">
                                            <em></em>
                                            <a href="#">
                                                <div class="figure">
                                                    <img src="images/6-01.webp" alt="小米MIX Alpha" width="160" height="110">
                                                </div>
                                                <div class="title">小米MIX Alpha</div>
                                                <p>19999元起</p>
                                            </a>
                                        </li>
                                        <li class="menu-nav">
                                            <a href="#">
                                                <div class="figure">
                                                    <img src="images/6-01.webp" alt="小米MIX Alpha" width="160" height="110">
                                                </div>
                                                <div class="title">小米MIX Alpha</div>
                                                <p>19999元起</p>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="link">
                                <span class="text">智能硬件</span>
                            </a>
                            <!-- nav - js -->
                            <div class="header-nav-menu">
                                <div class="container w">
                                    <ul>
                                        <li class="menu-nav">
                                            <em></em>
                                            <a href="#">
                                                <div class="figure figure-none">
                                                    <img src="images/7-01.webp" alt="小米11" width="160" height="110">
                                                </div>
                                                <div class="title">小米11</div>
                                                <p>3999元起</p>
                                            </a>
                                        </li>
                                        <li class="menu-nav">
                                            <em></em>
                                            <a href="#">
                                                <div class="figure">
                                                    <img src="images/7-01.webp" alt="小米10至尊纪念版" width="160" height="110">
                                                </div>
                                                <div class="title">小米10至尊纪念版</div>
                                                <p>5299元起</p>
                                            </a>
                                        </li>
                                        <li class="menu-nav">
                                            <em></em>
                                            <a href="#">
                                                <div class="figure">
                                                    <img src="images/7-01.webp" alt="小米10" width="160" height="110">
                                                </div>
                                                <div class="title">小米10</div>
                                                <p>3399元起</p>
                                            </a>
                                        </li>
                                        <li class="menu-nav">
                                            <em></em>
                                            <a href="#">
                                                <div class="figure">
                                                    <img src="images/7-01.webp" alt="小米10 青春版 5G" width="160" height="110">
                                                </div>
                                                <div class="title">小米10 青春版 5G</div>
                                                <p>1999元起</p>
                                            </a>
                                        </li>
                                        <li class="menu-nav">
                                            <a href="#">
                                                <div class="figure">
                                                    <img src="images/7-01.webp" alt="小米MIX Alpha" width="160" height="110">
                                                </div>
                                                <div class="title">小米MIX Alpha</div>
                                                <p>19999元起</p>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
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
    <!-- home 首页导航-->
    <div class="home-hero w">
        <!-- 轮播图 -->
        <div class="slideshow">
            <ul class="sli-ul">
                <li>
                    <a href="${pageContext.request.contextPath}/detail.jsp?gid=13">
                        <img src="images/1.jpg" alt="">
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/detail.jsp?gid=9">
                        <img src="images/2.webp" alt="">
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/detail.jsp?gid=24">
                        <img src="images/3.webp" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="images/4.webp" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="images/5.webp" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="images/1.jpg" alt="">
                    </a>
                </li>
            </ul>
            <div class="sli-box">
                <a href="javaScript:;"></a>
                <a href="javaScript:;"></a>
                <a href="javaScript:;"></a>
                <a href="javaScript:;"></a>
                <a href="javaScript:;"></a>
            </div>
            <div class="left"></div>
            <div class="right"></div>
        </div>
        <!-- sub 下-->
        <div class="home-sub clearfix">
            <div class="sub-l fl">
                <ul class="l-list clearfix">
                    <li>
                        <a href="#">
                            <img src="images/h-01.png" alt=""> 小米秒杀
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="images/h-02.png" alt=""> 企业团购
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="images/h-03.png" alt=""> F码通道
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="images/h-04.png" alt=""> 米粉卡
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="images/h-05.png" alt=""> 以旧换新
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="images/h-06.png" alt=""> 话费充值
                        </a>
                    </li>
                </ul>
            </div>
            <div class="sub-r fl">
                <ul class="r-list clearfix">
                    <li class="first">
                        <a href="${pageContext.request.contextPath}/detail.jsp?gid=14">
                            <img src="images/r-01.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/detail.jsp?gid=13">
                            <img src="images/r-02.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="images/r-03.jpg" alt="">
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- home-main首页主体 -->
    <div class="home-main">
        <div class="container w">


            <!-- 小米手机 -->
            <div class="home-mobile-box">
                <!-- 上 -->
                <div class="box-hd">
                    <h2 class="title">小米手机</h2>
                    <div class="more">
                        <a href="#" class="more-link">
                            查看全部<i class="iconfont iconfont-arrow-right-big">&#xe638;</i>
                        </a>
                    </div>
                </div>
                <!-- 下 -->
                <div class="box-bd">
                    <div class="row clearfix">
                        <div class="mobile-left fl">
                            <ul class="mobile-left-list">
                                <li class="brick-item brick-item-l">
                                    <a href="${pageContext.request.contextPath}/detail.jsp?gid=1">
                                        <img src="images/sj-001.webp" alt="">
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="mobile-right fl" >
                            <ul class="brick-list clearfix" id="phoneright">
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Redmi手机 -->
            <div class="home-mobile-box">
                <!-- 上 -->
                <div class="box-hd">
                    <h2 class="title">Redmi手机</h2>
                    <div class="more">
                        <a href="#" class="more-link">
                            查看全部<i class="iconfont iconfont-arrow-right-big">&#xe638;</i>
                        </a>
                    </div>
                </div>
                <!-- 下 -->
                <div class="box-bd">
                    <div class="row clearfix">
                        <div class="mobile-left fl">
                            <ul class="mobile-left-list">
                                <li class="brick-item brick-item-l">
                                    <a href="${pageContext.request.contextPath}/detail.jsp?gid=10">
                                        <img src="images/k50ad.webp" alt="">
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="mobile-right fl" >
                            <ul class="brick-list clearfix" id="redmiphoneright">
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 家电 -->
            <div class="home-appliances-box">
                <!-- 上 -->
                <div class="box-hd clearfix">
                    <h2 class="title fl">家电</h2>
                </div>
                <!-- 下 -->
                <div class="box-bd">
                    <div class="row clearfix">
                        <div class="appliances-left fl">
                            <ul class="brick-promo-list clearfix">
                                <li class="brick-item  brick-item-m">
                                    <a href="#"><img src="images/app-01.webp" alt=""></a>
                                </li>
                                <li class="brick-item  brick-item-m">
                                    <a href="#"><img src="images/app-02.webp" alt=""></a>
                                </li>
                            </ul>
                        </div>
                        <div class="appliances-right fl">
                            <div>
                                <ul class="brick-list clearfix" id="appliancesright">


                                </ul>
                            </div>
                            <div>
                                <ul class="brick-list clearfix hide">
                                    <!-- 1 -->
                                    <li class="brick-item brick-item-m brick-item-m-2">
                                        <a href="#">
                                            <div class="figure figure-img">
                                                <img src="images/app-10.webp" alt="">
                                            </div>
                                            <h3 class="title">全面屏电视E43K</h3>
                                            <p class="desc">全面屏设计，海量内容</p>
                                            <p class="price">
                                                <span class="num">1599</span>元
                                                <span>起</span>
                                            </p>
                                        </a>
                                    </li>
                                    <!-- 2 -->
                                    <li class="brick-item brick-item-m brick-item-m-2">
                                        <a href="#">
                                            <div class="figure figure-img">
                                                <img src="images/app-11.webp" alt="">
                                            </div>
                                            <h3 class="title">小米全面屏电视65英寸 E65X</h3>
                                            <p class="desc">全面屏设计</p>
                                            <p class="price">
                                                <span class="num">1599</span>元
                                                <span>起</span>
                                            </p>
                                        </a>
                                    </li>
                                    <!-- 3 -->
                                    <li class="brick-item brick-item-m brick-item-m-2">
                                        <a href="#">
                                            <div class="figure figure-img">
                                                <img src="images/app-3.webp" alt="">
                                            </div>
                                            <h3 class="title">小米全面屏电视65英寸 E65X</h3>
                                            <p class="desc">全面屏设计</p>
                                            <p class="price">
                                                <span class="num">1599</span>元
                                                <span>起</span>
                                            </p>
                                        </a>
                                    </li>
                                    <!-- 4 -->
                                    <li class="brick-item brick-item-m brick-item-m-2">
                                        <a href="#">
                                            <div class="figure figure-img">
                                                <img src="images/app-4.jpg" alt="">
                                            </div>
                                            <h3 class="title">小米全面屏电视65英寸 E65X</h3>
                                            <p class="desc">全面屏设计</p>
                                            <p class="price">
                                                <span class="num">1599</span>元
                                                <span>起</span>
                                            </p>
                                        </a>
                                    </li>
                                    <!-- 5 -->
                                    <li class="brick-item brick-item-m brick-item-m-2">
                                        <a href="#">
                                            <div class="figure figure-img">
                                                <img src="images/app-5.webp" alt="">
                                            </div>
                                            <h3 class="title">小米全面屏电视65英寸 E65X</h3>
                                            <p class="desc">全面屏设计</p>
                                            <p class="price">
                                                <span class="num">1599</span>元
                                                <span>起</span>
                                            </p>
                                        </a>
                                    </li>
                                    <!-- 6 -->
                                    <li class="brick-item brick-item-m brick-item-m-2">
                                        <a href="#">
                                            <div class="figure figure-img">
                                                <img src="images/app-6.webp" alt="">
                                            </div>
                                            <h3 class="title">小米全面屏电视65英寸 E65X</h3>
                                            <p class="desc">全面屏设计</p>
                                            <p class="price">
                                                <span class="num">1599</span>元
                                                <span>起</span>
                                            </p>
                                        </a>
                                    </li>
                                    <!-- 7 -->
                                    <li class="brick-item brick-item-m brick-item-m-2">
                                        <a href="#">
                                            <div class="figure figure-img">
                                                <img src="images/app-7.webp" alt="">
                                            </div>
                                            <h3 class="title">小米全面屏电视65英寸 E65X</h3>
                                            <p class="desc">全面屏设计</p>
                                            <p class="price">
                                                <span class="num">1599</span>元
                                                <span>起</span>
                                            </p>
                                        </a>
                                    </li>
                                    <!-- 8 -->
                                    <li class="brick-item brick-item-s">
                                        <a href="#">
                                            <div class="figure figure-img">
                                                <img src="images/app-8.webp" alt="米家互联网烟灶套装（天然气）" width="80" height="80">
                                            </div>
                                            <h3 class="title">米家互联网烟灶套装（天然气）</h3>
                                            <p class="price"><span class="num">2099</span>元</p>
                                        </a>
                                    </li>
                                    <!-- 9 -->
                                    <li class="brick-item brick-item-s">
                                        <a href="">
                                            <div class="figure figure-more">
                                                <i class="iconfont">&#xe83b;</i>
                                            </div>
                                            <div class="more">
                                                浏览更多
                                                <small>电视影音</small>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 小米笔记本 -->
            <div class="home-mobile-box">
                <!-- 上 -->
                <div class="box-hd">
                    <h2 class="title">小米笔记本</h2>
                    <div class="more">
                        <a href="#" class="more-link">
                            查看全部<i class="iconfont iconfont-arrow-right-big">&#xe638;</i>
                        </a>
                    </div>
                </div>
                <!-- 下 -->
                <div class="box-bd">
                    <div class="row clearfix">
                        <div class="mobile-left fl">
                            <ul class="mobile-left-list">
                                <li class="brick-item brick-item-l">
                                    <a href="${pageContext.request.contextPath}/detail.jsp?gid=31">
                                        <img src="images/redminotebookad.webp" alt="">
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="mobile-right fl" >
                            <ul class="brick-list clearfix" id="notebookright">
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Redmi笔记本 -->
            <div class="home-mobile-box">
                <!-- 上 -->
                <div class="box-hd">
                    <h2 class="title">Redmi笔记本</h2>
                    <div class="more">
                        <a href="#" class="more-link">
                            查看全部<i class="iconfont iconfont-arrow-right-big">&#xe638;</i>
                        </a>
                    </div>
                </div>
                <!-- 下 -->
                <div class="box-bd">
                    <div class="row clearfix">
                        <div class="mobile-left fl">
                            <ul class="mobile-left-list">
                                <li class="brick-item brick-item-l">
                                    <a href="${pageContext.request.contextPath}/detail.jsp?gid=31">
                                        <img src="images/redminotebookad.webp" alt="">
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="mobile-right fl" >
                            <ul class="brick-list clearfix" id="redminotebookright">
                            </ul>
                        </div>
                    </div>
                </div>
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
        <a href="myprofile.jsp" class="item">
            <div class="icon">
                <img src="images/tool-2.png" alt="" class="static"><img src="images/tool-02.png" alt="" class="hover">
            </div>
            <span class="text">个人中心</span>
        </a>
        <a href="${pageContext.request.contextPath}/backend/main.html" class="item">
            <div class="icon">
                <img src="images/tool-3.png" alt="k" class="static"><img src="images/tool-03.png" alt="" class="hover">
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
<script src=" js/index.js "></script>
<script src="js/slideshow.js "></script>
<script src="js/move.js "></script>
<script src="js/roll.js "></script>
<script src="js/tab.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
<script>

    // 检查用户登录状态
    $(function(){
        $.ajax({
            url:"/consumer/CheckLogin.do",
            method: "post",
            success:function (logininf){
                console.log(logininf);
                if(logininf.errorCode==="100"){
                   console.log("用户已登录");
                   $("#logininfo").html("欢迎您："+logininf.objectMap.consumer.username +"&ensp;<a href=\"/consumer/logout.do\">退出</a>");
            } else{
                console.log("用户未登录")
                }
            }
        })
    })



    $(function(){

        // 发送请求获取商品数据
        $.ajax({
            url:"/initindex.do",
            method:"get",
            success:function (res){
                console.log(res);// 测试是否返回成功
                let $goodsTypes = res.objectMap.goodsTypeList;

                // 进行遍历
                for(let i = 0;i<$goodsTypes.length;i++){
                    // 创建首页左侧的对应列表
                    let $li = $("<li>").addClass("category-list").attr("id",$goodsTypes[i].id);
                    let $a = $("<a>").attr("href","#").text($goodsTypes[i].name).addClass("cat-title");
                    let $em = "<em class=\"cat-icon iconfont\">&#xe638;</em>";
                    $a.append($em);
                    $li.append($a)
                    $(".cat-ul").append($li);
                }

                // 页面主体加载
                let $miphonelist = res.objectMap.goodsMap["10001"];
                loadGoods($miphonelist,$("#phoneright"));
                let $redmilist = res.objectMap.goodsMap["10002"];
                loadGoods($redmilist,$("#redmiphoneright"));
                let $applianceslist = res.objectMap.goodsMap["20001"];
                loadGoods($applianceslist,$("#appliancesright"));
                let $computerlist = res.objectMap.goodsMap["30002"];
                loadGoods($computerlist,$("#redminotebookright"));
                let $minotebooklist = res.objectMap.goodsMap["30001"];
                loadGoods($minotebooklist,$("#notebookright"));

                // 首页头部导航加载
                loadnavGoods($miphonelist,$("#miphonenavlist"));    // 手机
                let $redmiphonelist = res.objectMap.goodsMap["10002"];
                loadnavGoods($redmiphonelist,$("#redmiphonenavlist"));    // 红米手机
                let $tvlist = res.objectMap.goodsMap["20001"];
                loadnavGoods($tvlist,$("#tvnavlist"));    // 电视
                let $notebooklist = res.objectMap.goodsMap["30002"];
                loadnavGoods($notebooklist,$("#notebooknavlist"));    // 笔记本
            }
        });
        function loadGoods(goodlist,container){
            // 通用写法 加载对应的商品信息
            for(let i = 0;i<goodlist.length;i++){
                let $li = $("<li>").addClass("brick-item brick-item-m brick-item-m-2");
                let $a = $("<a>").attr("href","/detail.jsp?gid="+ goodlist[i].id);
                $li.append($a);
                let $divimage = $("<div>").addClass("figure figure-img");
                let $img = $("<img>").attr("src",goodlist[i].goodsImages[0].path);
                $divimage.append($img);
                let $h3 = $("<h3>").addClass("title").text(goodlist[i].name);
                let $desc = $("<p>").addClass("desc").text(goodlist[i].remark);
                let $price = $("<p>").addClass("price")
                let $span = $("<span>").addClass("num").text(goodlist[i].price+"元");
                $price.append($span);
                $a.append($divimage).append($h3).append($desc).append($price);
                $li.append($a);
                container.append($li);
            }

        }
        function loadnavGoods(goodlist,container) {
            // 通用写法 加载对应nav的商品信息
            for (let i = 0; i < goodlist.length; i++) {
                let $lia = $("<li>").addClass("menu-nav");
                let $ema = $("<em>");
                let $aa = $("<a>").attr("href", "/detail.jsp?gid=" + goodlist[i].id);
                let $diva = $("<div>").addClass("figure figure-non");
                let $imga = $("<img>").attr("src", goodlist[i].goodsImages[0].path).attr("alt", goodlist[i].name).attr("width", "135").attr("height", "135");
                let $namea = $("<div>").addClass("title").text(goodlist[i].name);
                let $pricea = $("<p>").text(goodlist[i].price + "元");
                $diva.append($imga);
                $aa.append($diva).append($namea).append($pricea);
                $lia.append($ema).append($aa);
                container.append($lia);
            }
        }
    });
    $("#searchbtn").click(function (){
        // 获取搜索关键词
        let $word = $("#searchinput").val();
        console.log($word);
        if($("#searchinput").val() === ""){
            window.location="/goodslist.jsp?wd=小米11";
        }else{
            console.log($word);
            window.event.returnValue=false; // 注销掉默认的表单的action行为.
            window.location="/goodslist.jsp?wd=" +$word;
        }

    })

    $(".cat-ul").on("click","li",function () {
        // 获取商品类型编号
        let $goodsTypeId = $(this).prop("id");
        window.location = "/goodslist2.jsp?level=1&goodsTypeId=" + $goodsTypeId;
    })


</script>
</html>