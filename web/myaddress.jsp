<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>我的收货地址</title>
    <link rel="stylesheet" href="css/General%20style.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/myorder.css">

    <link rel="shortcut icon" href="images/favicon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/iconfont.css">
    <link rel="stylesheet" href="js/elementui/index.css">

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
                <a href="${pageContext.request.contextPath}/shopcart.jsp" class="cart">
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
                     <h1 CLASS="title">我的地址</h1>
                    </div>
                    <div class="box-bd" id="app" style="margin-top: 50px;">
                        <el-form ref="form" :model="form" label-width="80px">
                            <el-form-item label="地址id" v-show="userid">
                                <el-input v-model="form.id"></el-input>
                            </el-form-item>
                            <el-form-item label="用户id" v-show="userid">
                                <el-input v-model="form.consumerId"></el-input>
                            </el-form-item>
                            <el-form-item label="收货人">
                                <el-input v-model="form.name"></el-input>
                            </el-form-item>
                            <el-form-item label="联系电话">
                                <el-input v-model="form.phone"></el-input>
                            </el-form-item>
                            <el-form-item label="邮箱地址">
                                <el-input v-model="form.email"></el-input>
                            </el-form-item>
                            <el-form-item label="省份">
                                <el-input v-model="form.province"></el-input>
                            </el-form-item>
                            <el-form-item label="城市">
                                <el-input v-model="form.city"></el-input>
                            </el-form-item>
                            <el-form-item label="区县">
                                <el-input v-model="form.country"></el-input>
                            </el-form-item>
                            <el-form-item label="街道">
                                <el-input v-model="form.street"></el-input>
                            </el-form-item>
                            <el-form-item label="详细地址">
                                <el-input v-model="form.remark"></el-input>
                            </el-form-item>
                            <el-form-item>
                                <el-button type="primary" @click="onSubmit">提交</el-button>
                                <el-button>取消</el-button>
                            </el-form-item>
                        </el-form>
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
<script src="js/vue/vue.js"></script>
<script src="js/elementui/index.js"></script>
<script src="js/vue/axios-0.18.0.js"></script>
<script>

    var flag =false;
    var userconsumerid;
    $(function(){
        $.ajax({
            url:"/consumer/CheckLogin.do",
            method: "post",
            success:function (logininf){
                console.log(logininf);
                if(logininf.errorCode==="100"){
                    console.log("用户已登录");
                    flag=true;
                    userconsumerid= logininf.objectMap.consumer.id;
                    console.log(userconsumerid);
                    $("#logininfo").html("欢迎您："+logininf.objectMap.consumer.username +"&ensp;<a href=\"/consumer/logout.do\">退出</a>");
                } else{
                    console.log("用户未登录")
                    window.location.href="/login.jsp";
                }
            }
        })
    })


    var addressflag = false;
   var vue = new Vue({
       el: '#app',
       data:{
           userid:false,
           form: {
               consumerId:userconsumerid,
               id:'',
               name: '',
               phone: '',
               email: '',
               province: '',
               city: '',
               country: '',
               street: '',
               remark: ''
           }
       },
       created(){
           this.checkaddress();
       },

       methods:{
           checkaddress(){
               console.log("开始查询地址");
           axios.post("/consumer/address.do").then(res=>{
               console.log(res);
               if(res.data.objectMap.goodsShippingAddress === null){
                   this.$message({message:'查询失败,可能没有创建地址！',type:'warning'});
                   addressflag = false;
               }else{
                     console.log("查询成功");
                        addressflag = true;
                   this.form = res.data.objectMap.goodsShippingAddress;
               }
           })},
              onSubmit() {
                  console.log("开始提交");
                  console.log(this.form);
                  this.form.consumerId=userconsumerid;
                  if(addressflag === true){
                      axios.post("/consumer/updateAddress.do",this.form).then(res=>{
                            console.log(res);
                            if(res.data.errorCode ==="200"){
                                this.$message({message:'更新失败！',type:'warning'});
                            }
                            if(res.data.errorCode ==="100"){
                                this.$message({message:'更新成功！',type:'success'});
                            }
                        })
                      }
                  else{
                      this.form.id=null;
                      axios.post("/consumer/insertAddress.do",this.form).then(res=>{
                          console.log(res);
                          if(res.data.errorCode ==="200"){
                              this.$message({message:'新增失败！',type:'warning'});
                          }
                          if(res.data.errorCode ==="100"){
                              this.$message({message:'新增成功！',type:'success'});
                          }
                      })
                  }
              }
       }
   })








</script>
</body>
</html>