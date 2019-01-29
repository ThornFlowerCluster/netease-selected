<%--
  Created by IntelliJ IDEA.
  User: sy
  Date: 2019-01-28
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="shortcut icon" href="/favicon.ico"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="网易帐号中心"/>
    <meta name="description" content="网易帐号中心"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/register.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/reset.css"/>
    <title>网易帐号中心</title>
</head>
<body>
<div id="wrap">
    <div id="header">
        <div class="head_w">
            <a href="#" class="head_w_l"></a>
            <p class="head_w_r">已有帐号？去<a href="/login">登录</a></p>
        </div>
    </div>
    <form action="/register" method="post" id="main">
        <div class="main_w">
            <div class="reg">
                <button>普通帐号注册</button>
                <button><i>new</i>靓号注册</button>
            </div>
            <div class="reg_id_w">
                <label for="reg_id" class="reg_id_l log_l">账号：</label>
                <input class="log_r" name="email" id="reg_id" placeholder="网易邮箱/其他邮箱" />
                <span class="echo">
							<p></p>
						</span>
            </div>

            <div class="reg_pass_w">
                <label for="reg_password" class="reg_pass_l log_l" >密码：</label>
                <input class="log_r" type="password" name="password" id="reg_password" placeholder="6-16位密码，区分大小写" />
                <span class="echo">
							<p></p>
						</span>
            </div>

            <div class="reg_repass_w">
                <label for="reg_repass" class="reg_repass_l log_l">确认密码：</label>
                <input  class="log_r" type="password" name="repassword" id="reg_repass" placeholder="再次输入密码" />
                <span class="echo">
							<p></p>
						</span>
            </div>


            <div class="reg_ver_w">
                <label for="reg_ver" class="reg_ver_l log_l">
                    验证码：
                    <div class="code">验证码</div>
                </label>
                <input class="log_r" type="text" name="verification" id="reg_ver" placeholder=">>>请依次点击完成验证>>>" />
                <span class="echo">
							<p></p>
						</span>
            </div>

            <div class="reg_phone_w">
                <label for="reg_phone" class="reg_phone_l log_l">手机号：</label>
                <input  class="log_r" type="text" name="phone" id="reg_phone" placeholder="11位手机号" />
                <span class="echo">
							<p></p>
						</span>
            </div>

            <div class="p1_w">
                <div class="p1_l"></div>
                <a href="javascript:;">切换到国际手机</a>
            </div>

            <div class="p2_w">
                <div class="p2_l"></div>
                <p>忘记密码时，可通过手机快速找回密码</p>
            </div>

            <div class="reg_note_w">
                <label for="reg_note" class="reg_note_l log_l">短信验证码：</label>
                <input class="log_r"  type="text" name="notes" id="reg_note" placeholder="输入短信验证码" />
                <span class="echo">
							<p></p>
						</span>
            </div>

            <div class="b1_w">
                <div class="b1_l"></div>
                <button name="submit" type="submit" value="注册">注册</button>
            </div>

            <div class="p3_l">
                <div class="b1_l"></div>
                <div class="b1_r">
                    <input type="checkbox" name="" id="" checked="true" />
                    <p>用户勾选即代表同意《网易邮箱服务条款》和《网易隐私政策》</p>
                </div>
            </div>

            <a href="#" class="reg_banner">
                <img src="${pageContext.request.contextPath}/static/images/reg_ban.png"/>
            </a>
        </div>
    </form>
    <div id="footer">
        <div class="foot_w">
            <ul>
                <li><a href="#">About NetEase</a></li>
                <li><a href="#">公司简介</a></li>
                <li><a href="#">联系方式</a></li>
                <li><a href="#">OAuth2.0认证</a></li>
                <li><a href="#">招聘信息</a></li>
                <li><a href="#">客户服务</a></li>
                <li><a href="#">相关法律</a></li>
                <li><a href="#">网络营销</a></li>
            </ul>
            <p class="wen">网易公司版权所有 ©1997-2017</p>
        </div>
    </div>
</div>

</body>
<script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/static/js/register.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    (function () {
        var oUl=document.querySelector('.foot_w ul');
        var oLi=document.querySelectorAll('.foot_w ul li');
        var sum=0;
        for(var i=0;i<oLi.length;i++){
            sum+=oLi[i].offsetWidth;
        }
        oUl.style.width=sum+1+'px';
    })();

</script>
</html>
