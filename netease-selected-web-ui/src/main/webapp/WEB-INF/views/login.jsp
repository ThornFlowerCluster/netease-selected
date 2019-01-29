<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sy
  Date: 2019-01-28
  Time: 22:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>网易严选 - 以严谨的态度，为中国消费者甄选天下优品</title>
    <meta name="keywords" content="网易严选,严选,网易优选,网易甄选,网易优品,网易精选,甄选家,严选态度" />
    <meta name="description" content="网易严选秉承网易一贯的严谨态度，深入世界各地，严格把关所有商品的产地、工艺、原材料，甄选居家、厨房、饮食等各类商品，力求给你最优质的商品。" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/landing.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/public.css"/>

</head>
<body>

<div id="wrap">
    <!--header_start-->
    <div id="header" style="box-shadow: 0px 0px 3px 0px rgba(0, 0, 0, 0.3);">
        <div class="hd_t_w">
            <div class="hd_t">
                <div class="hd_t_l h12">
                    <span class="left"><a href="#" class="h12">好的生活，没那么贵</a></span>
                    <ul>
                        <li><a href="#" class="j12">【福利】领1000元APP新人礼></a></li>
                    </ul>
                </div>
                <div class="hd_t_r">
                    <ul class="right">
                        <li class="admin"></li>
                        <li><a href="/login" class="dl">请登录</a></li>
                        <li><a href="/register" class="zc">注册</a></li>
                        <li><a href="#">我的订单</a></li>
                        <li><a href="#">会员</a></li>
                        <li><a href="#">甄选家</a></li>
                        <li><a href="#">企业采购</a></li>
                        <li>
                            <a href="#" class="khfw">客户服务</a>
                            <ul class="hd_t_t_t">
                                <li><a href="#">在线客服</a></li>
                                <li><a href="#">帮助中心</a></li>
                                <li><a href="#">商务合作</a></li>
                                <li><a href="#">开放平台</a></li>

                            </ul>
                        </li>
                        <li>
                            <a href="#"class="app">APP</a>
                            <ul class="hd_t_t_r">
                                <li>
                                    <img src="images/xz.png"/>
                                    <p>下载领1000元新人礼包</p>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="hd_m">
            <div class="logo"><a href="#"></a></div>
            <div class="hd_m_r">
                <input type="text" name="itext" id="itext" placeholder="丁磊力荐滋补保健燕窝福利价248元起" />
                <button name="search" id="search"></button>
                <div class="carlogo_w">
                    <button id="carlogo"></button>
                    <i>0</i>
                </div>
            </div>
        </div>

        <ul class="nav">
            <li><a href="#">首页</a></li>
            <li><a href="#">居家</a></li>
            <li><a href="#">配件</a></li>
            <li><a href="#">服装</a></li>
            <li><a href="#">电器</a></li>
            <li><a href="#">洗护</a></li>
            <li><a href="#">饮食</a></li>
            <li><a href="#">餐厨</a></li>
            <li><a href="#">婴童</a></li>
            <li><a href="#">文体</a></li>
            <li><a href="#">特色区</a></li>
            <li><a href="#">为你严选</a></li>
            <li><a href="#">众筹</a></li>

        </ul>

        <div class="nav_db_w">
            <div class="nav_db_t">
                <ul class="nav_db">
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/cpjt.png" /><p>床品件套</p></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/byrz.png"/><p>被枕</p></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/jj.png"/><p>家具</p></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/byrz.png"/><p>收纳</p></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/byrz.png"/><p>布艺软装</p></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/js.png"/><p>家饰</p></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/cw.png"/><p>宠物</p></a></li>
                </ul>
            </div>

        </div>

        <div class="nav_t_w">
            <div class="nav1_t">
                <a href="#"></a>
                <ul class="nav1">
                    <li><a href="#">首页</a></li>
                    <li><a href="#">居家</a></li>
                    <li><a href="#">配件</a></li>
                    <li><a href="#">服装</a></li>
                    <li><a href="#">电器</a></li>
                    <li><a href="#">洗护</a></li>
                    <li><a href="#">饮食</a></li>
                    <li><a href="#">餐厨</a></li>
                    <li><a href="#">婴童</a></li>
                    <li><a href="#">文体</a></li>
                    <li><a href="#">特色区</a></li>
                </ul>
                <div class="carlogo_w">
                    <button id="carlogo"></button>
                    <i>0</i>
                </div>
                <a href="#" id="user"></a>
                <button name="search" id="search"></button>
            </div>
        </div>
    </div>
    <!--header_end-->
    <!--main_start-->
    <div id="main_w">
        <div class="main">
            <form id="loging_w" method="post" action="/login">
                <div class="log_close"></div>
                <div class="loging">
                    <h2>网易账号登录</h2>
                    <div class="id_w">
                        <i></i>
                        <input type="text" name="email" id="log_user" placeholder="邮箱账号" />
                    </div>
                    <div class="pass_w">
                        <i></i>
                        <input type="password" name="password" id="log_password" placeholder="输入密码" />
                    </div>
                    <input type="submit" value="登录" id="btn"/>
                    <div class="error">
                        <span><c:if test="${!empty baseResult}"> ${baseResult.message}</c:if></span>
                    </div>
                    <div class="more_w">
                        <a href="/forget" class="left">忘记密码？</a>
                        <a href="/register" class="right">去注册</a>
                    </div>
                    <div class="word_w">
                        <div></div>
                        <span>其他登录方式</span>
                    </div>
                    <div class="icon_w">
                        <a href="#">
                            <i></i>
                            微信
                        </a>
                        <a href="#">
                            <i></i>
                            QQ
                        </a>
                        <a href="#">
                            <i></i>
                            微博
                        </a>
                        <a href="#">
                            <i></i>
                            网易企业邮
                        </a>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!--main_end-->
    <!--footer_start-->
    <div id="footer">
        <div class="footer_t_w">
            <div class="footer_t">
                <div class="foot_t_l">
                    <h4>客户服务</h4>
                    <a href="#" class="rel">
                        <i class="icon1 abs"></i>
                        <p>在线客服</p>
                    </a>
                    <a href="#" class="rel">
                        <i class="icon2 abs"></i>
                        <p>在线反馈</p>
                    </a>
                </div>
                <div class="foot_t_c">
                    <h4>何为严选</h4>
                    <p>网易原创生活类电商品牌，秉承网易一贯的严谨态度，我们深入世界各地，从源头全程严格把控商品生产环节，力求帮消费者甄选到优质的商品</p>
                    <em>关注我们 :</em>
                    <a href="javascript:;"></a>
                    <a href="javascript:;"></a>
                    <a href="javascript:;"></a>
                </div>
                <div class="foot_t_r">
                    <h4>扫码下载严选APP</h4>
                    <img src="${pageContext.request.contextPath}/static/images/xz.png"/>
                    <p>下载领1000元新人礼包</p>
                </div>
            </div>
        </div>
        <div class="footer_b_w">
            <div class="footer_b">
                <ul class="footer_b_t">
                    <li>
                        <span>30天无忧退换货</span>
                    </li>
                    <li>
                        <span>满88元免邮费</span>
                    </li>
                    <li>
                        <span>网易品质保证</span>
                    </li>
                </ul>
                <ul class="footer_b_b_t">
                    <li><a href="#">关于我们</a></li>
                    <li><a href="#">售后服务</a></li>
                    <li><a href="#">配送与验收</a></li>
                    <li><a href="#">商务合作</a></li>
                    <li><a href="#">企业采购</a></li>
                    <li><a href="#">开放平台</a></li>
                    <li><a href="#">搜索推荐</a></li>
                    <li><a href="#">友情链接</a></li>
                </ul>
                <p>网易公司版权所有 © 1997-2018   食品经营许可证：JY13301080111719 出版物经营许可证：新出发滨字第0132号</p>
            </div>
        </div>
    </div>
    <!--footer_end-->
</div>
<!--wrap_end-->
<div class="fixed">
    <ul>
        <li>
            <a href="#">
                <i></i>
                新人有礼
            </a>
        </li>
        <li>

            <a href="#">
                <i></i>
                下载APP
            </a>
        </li>
        <li>

            <a href="#">
                <i></i>
                在线客服
            </a>
        </li>
        <li>

            <a href="javascript:;">
                <i></i>
                回顶部
            </a>
        </li>

    </ul>
</div>
<!--footer_end-->
</div>
<!--wrap_end-->
<script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/static/gulpfile.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
