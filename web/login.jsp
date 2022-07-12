<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>小米商城登录</title>
    <link rel="stylesheet" href="css/login.css">
    <style>
        body {
            font-family: '微软雅黑', serif;
        }
    </style>
</head>
<body>
<div id="container">
    <header>
        <img src="images/milogo.png" alt="" style="height: 64px;width: 64px;margin-top: 15px">
    </header>
    <div id="loginbox">
        <!-- 100% 588 -->
        <div id="mainbox">
            <div id="maintitle">
                <div id="account">帐号登录</div>
                <span></span>
                <div id="saoma">扫码登录</div>
            </div>
            <div id="maininput">
                <input type="text" name="username" id="username" placeholder="邮箱/手机号码/小米ID" autocomplete="off" v-model="username" >
                <span id="error-username">填写邮箱、手机号码或者小米ID登录</span>
                <input type="password" name="password" id="password" placeholder="密码"  autocomplete="off" v-model="password" >
                <span id="error-password">密码不能为空</span>
                <input type="submit" id="login-btn" value="登录" @click.prevent="login">
            </div>
            <div id="mainother">
                <div>手机短信登录/注册</div>
                <div href="/register.jsp">立即注册</div>
            </div>
            <div id="otherlogin">
                <div id="oth_title">
                </div>
                <div id="oth_desc">
                    其他方式登录
                </div>
                <div id="oth_logo">
                    <a href="#"><em></em></a>
                    <a href="#"><em></em></a>
                    <a href="#"><em></em></a>
                    <a href="#"><em></em></a>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <!-- 100% 180 p100 -->
        <a href="#">简体</a>| <a href="#">繁体</a>| <a href="#">English</a>| <a href="#">常见问题</a>| <a href="#">隐私政策</a>
        <br />
        <p>小米公司版权所有-京ICP备10046444-<img src="images/ghs.png" alt="">京公网安备11010802020134号-京ICP证110507号</p>
    </footer>
</div>
</body>
<script src="js/vue/vue.js"></script>
<script src="js/vue/axios-0.18.0.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
<script>
    var vue = new Vue({
        el:"#maininput",
        data:{
            username:'',
            password:''
        },
        methods:{
            login(){
                if(this.username.length !==0 && this.password.length !==0 ){
                    if(this.username.split(' ').join('').length !== 0 && this.password.split(' ').join('').length !== 0 )
                    {
                        this.reallogin();
                    }else{
                        alert("用户名含有空格！请检查后再试！");
                        this.username='';
                        this.password='';
                    }

                }
                else{
                    alert("用户名或密码不能为空！");
                }

            },
            reallogin(){

                console.log("真的要登录了");

                $.ajax({
                    url:"/consumer/login/auth.do",
                    method:"post",
                    data:{
                        "username":this.username,
                        "password":this.password
                    },
                }).then(res=>{

                    console.log(res.errorMsg);

                    if(res.errorCode==="100"){
                        // 登录成功
                        console.log("登录成功！");
                        window.location="/index.jsp";
                    }else{
                        $("#error-username").text("用户名或者密码有误，请重新登录").css({"color":"red"})
                        this.username='';
                        this.password='';
                    }
                })
            },
        }
    })
</script>
</html>