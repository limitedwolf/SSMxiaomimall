<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="images/favicon/favicon.ico" type="image/x-icon">
    <title>小米商城 - 购物车</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/shopcart.css">
    <link rel="stylesheet" href="js/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/General style.css">
    <link rel="stylesheet" href="css/iconfont.css">
</head>
<body>
<div id="outer">
    <header>
        <a href="index.jsp"><div id="logo">
            <img src="images/milogo.png" alt="" style="height: 64px;width: 64px;">
            <div>我的购物车</div>
        </div>
        </a>
        <div id="cart-info">
            温馨提示：产品是否购买成功，以最终下单为准哦，请尽快结算
        </div>

        <div id="personinfo">
            <div id="personname">用户monster测试中
            </div>
            <div>
                <a href="${pageContext.request.contextPath}/myorder.jsp">我的订单</a>
            </div>
        </div>
    </header>
</div>

<div id="cartcontainer">
    <div class="shopcart">
        <div class="list-head">
            <div class="col-check" id="allCheckButton">
                <input type="checkbox" name="all" id="all">
                <strong>全选</strong>
            </div>
            <div class="col-img">&nbsp;</div>
            <div class="col-name">商品名称</div>
            <div class="col-price">单价</div>
            <div class="col-num">数量</div>
            <div class="col-total">小计</div>
            <div class="col-action">操作</div>
        </div>
        <div class="list-body" id="shopcart-box">
            <!--

            购物车商品展示区域
            -->

        </div>
    </div>

    <div class="list-order">
        <div class="shop" id="shop">
            <a href="${pageContext.request.contextPath}/index.jsp">继续购物 </a>
            <span id="shangpingshuliang">共 <strong>2</strong> 件商品，已选择 <strong>0</strong> 件</span>
        </div>
        <div class="order-res">
            <span id="totalprice">合计：<strong>0</strong>元</span>
            <input type="button" value="去结算" id="submit-btn">
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

    var tempprice;
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
                    checkCart();
                    $("#personname").text(logininf.objectMap.consumer.username);
                } else{
                    console.log("用户未登录");
                    window.location.replace("/login.jsp");
                }
            }
        })
    });

    function getGoodsPriceEach(goodsid){
        // 发送请求获取商品单价
        $.ajax({
            async:false, // 同步请求,等待价格获取完后再执行后面的操作
            url: "/goods/detail/" + goodsid + ".do",
            method: "get",
            success: function(response) {
                let price = response.objectMap.goods.price;
                tempprice = price;
            }
        });
    }
    const map1 = new Map();




    function EachGoodsItemAndPrice(){
        let checkcount=0;
        let totalPrice = 0;
        $(".goodsCheckBox").each(function(){
            if($(this).is(":checked")){
                let checkedprice = $(this).parent(".col-check").parent(".list-item").find(".col-total").text();
                totalPrice = totalPrice+(parseFloat(checkedprice));
                checkcount = checkcount+1;
            }
            let goodsid = $(this).parent(".col-check").parent(".list-item").attr("id");
            getGoodsPriceEach(goodsid);
            map1.set(goodsid,tempprice);
            if(checkcount>0){
                $("#submit-btn").removeAttr("disabled");
                $("#submit-btn").addClass("submit-btn");
            }
            else{
                $("#submit-btn").attr("disabled","disabled");
                $("#submit-btn").removeClass("submit-btn");

            }
    })


        let totalcount = $(".list-item").length;
        let totalcountstrong = $("<strong>").text(totalcount);
        let selectcount = $("<strong>").text(checkcount);
        $("#shangpingshuliang").html("共").append(totalcountstrong).append("件商品,已选择");
        $("#shangpingshuliang").append(selectcount).append("件");

        let totalspanprice = $("<strong>").text(totalPrice);
        $("#totalprice").html("合计:").append(totalspanprice).append("元");

    }





    /**
     * 全选按钮
     */
    $(function (){
        $("#all").click(function () {
            console.log("单击了全选");
            if($(this).prop("checked")===true){
                $(".goodsCheckBox").each(function () {
                    $(this).prop("checked",true);
                });
            }else{
                $(".goodsCheckBox").each(function () {
                    $(this).prop("checked",false);
                });

            }
        })
    })

    /**
     * 检查购物车
     */
    function checkCart(){
        $.ajax({
            url: "/shopcart/chk.do",
            method: "GET",
            success: function(response) {
                // 获取所有的商品
                let $cartList = response.objectMap.cartList;

                // 刷新下面选择数量
                EachGoodsItemAndPrice();
                // 开始加载数据
                for(let i = 0; i < $cartList.length; i++) {
                    console.log("....." + $cartList[i]);
                    let $list_item = $("<div>").addClass("list-item").attr("id", $cartList[i].id);
                    let $col_check = $("<div>").addClass("col-check");
                    let $checkbox = $("<input>").attr("type", "checkbox").addClass("goodsCheckBox");
                    $col_check.append($checkbox);

                    let $col_img = $("<div>").addClass("col-img");
                    let $img = $("<img>").attr("src", $cartList[i].goodsImages[0].path);
                    $col_img.append($img);

                    let $col_name = $("<div>").addClass("col-name").text($cartList[i].goodsImages[0].title);
                    getGoodsPriceEach($cartList[i].goodsId);

                    let $col_price = $("<div>").addClass("col-price").text(tempprice); // 获取商品单价
                    let $col_num = $("<div>").addClass("col-num");
                    let forCounttemp1 = $cartList[i].buyCount;
                    let $add = $("<a>").attr("href", "#").append($("<em>").addClass("glyphicon glyphicon-minus").attr("onclick","updateGoodsCountButtonClick("+$cartList[i].goodsId+","+(--forCounttemp1) +")"));
                    let forCounttemp2 = $cartList[i].buyCount;
                    let $col_input = $("<input>").attr("type", "text").val($cartList[i].buyCount);
                    let $sub = $("<a>").attr("href", "#").append($("<em>").addClass("glyphicon glyphicon-plus").attr("onclick","updateGoodsCountButtonClick("+$cartList[i].goodsId+","+ (++forCounttemp2) +")"));
                    $col_num.append($add).append($col_input).append($sub);

                    let $col_total = $("<div>").addClass("col-total").text($cartList[i].subtotal);
                    let $operation = $("<div>").addClass("col-action").append($("<span>").addClass("glyphicon glyphicon-remove")).attr("onclick", "removeButtonClick("+$cartList[i].goodsId+")");
                    $col_total.append($operation);

                    let $clear = $("<div>").css("clear", "both");

                    $list_item.append($col_check).append($col_img).append($col_name).append($col_price).append($col_num)
                        .append($col_total).append($operation).append($clear);

                    $("#shopcart-box").append($list_item);

                    }
                $(".col-check").change(function (){
                    EachGoodsItemAndPrice();
                });

            },
            error: function() {
                console.log("请求失败!");
            }
        });
    }

    /**
     * 删除按钮点击事件
     * @param GoodsId 商品id
     */
    function removeButtonClick(GoodsId){
        $.ajax({
            url: "/shopcart/remove/"+GoodsId+".do",
            method: "GET",
            success:function (resp){
                console.log(resp);
                if(resp.errorCode==="100"){
                    console.log("删除成功");
                    location.reload();// 删除后刷新页面
                }
            }
        })
    }

    /**
     * 更新商品数量
     * @param GoodsId 商品id
     * @param count 更新后的数量
     */
    function updateGoodsCountButtonClick(GoodsId,count){
        $.ajax({
            url: "/shopcart/update/"+GoodsId+"/"+count+".do",
            method: "GET",
            success:function (resp){
                console.log(resp);
                if(resp.errorCode==="100"){
                    console.log("更新成功");
                    location.reload();// 更新后刷新页面
                }
            }
        })
    }

    var goodsIds = [];

    /**
     * 结算按钮点击事件
     */
    $("#submit-btn").click(function () {
        goodsIds=[];
        // 获取选中的商品id
        $(".goodsCheckBox").each(function () {
            if($(this).prop("checked")===true){
                goodsIds.push($(this).parent().parent().attr("id"));
            }
        });
        console.log(goodsIds);
        // 发送请求获取商品信息
        window.location.href="/checkout.jsp?goodsIds="+goodsIds;
    });


</script>
</body>
</html>