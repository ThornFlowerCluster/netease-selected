<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sy
  Date: 2019-01-28
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>网易严选 - 以严谨的态度，为中国消费者甄选天下优品</title>
    <meta name="keywords" content="网易严选,严选,网易优选,网易甄选,网易优品,网易精选,甄选家,严选态度" />
    <meta name="description" content="网易严选秉承网易一贯的严谨态度，深入世界各地，严格把关所有商品的产地、工艺、原材料，甄选居家、厨房、饮食等各类商品，力求给你最优质的商品。" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/index.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/public.css"/>

</head>
<body>

<div id="wrap">
    <!--header_start-->
    <div id="header">
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
                        <c:if test="${empty user}">
                            <li><a href="/login" class="dl">请登录</a></li>
                            <li><a href="/register" class="zc">注册</a></li>
                        </c:if>
                        <c:if test="${!empty user}">
                            <li><a href="/myself" class="dl">${user.username}</a></li>
                            <li><a href="/logout" class="zc">注销</a></li>
                        </c:if>
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
                                    <img src="${pageContext.request.contextPath}/static/images/xz.png"/>
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
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/cpjt.png" /><p>床品件套</p></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/byrz.png"/><p>被枕</p></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/jj.png"/><p>家具</p></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/byrz.png"/><p>收纳</p></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/byrz.png"/><p>布艺软装</p></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/js.png"/><p>家饰</p></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/cw.png"/><p>宠物</p></a></li>
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
    <div class="banner_w">
        <div class="banner">
            <ul class="pic_list">
                <li style="opacity: 1; transition: 'all 1s'"><a href="#" style="background: url(${pageContext.request.contextPath}/static/images/banner.jpg) no-repeat center center;"></a></li>
                <li style="opacity: 0; transition: 'all 1s'"><a href="#" style="background: url(${pageContext.request.contextPath}/static/images/banner1.jpg) no-repeat center center;"></a></li>
                <li><a href="#" style="background: url(${pageContext.request.contextPath}/static/images/banner2.jpg) no-repeat center center;"></a></li>
                <li><a href="#" style="background: url(${pageContext.request.contextPath}/static/images/banner.jpg) no-repeat center center;"></a></li>
                <li><a href="#" style="background: url(${pageContext.request.contextPath}/static/images/banner1.jpg) no-repeat center center;"></a></li>
                <li><a href="#" style="background: url(${pageContext.request.contextPath}/static/images/banner2.jpg) no-repeat center center;"></a></li>
                <li><a href="#" style="background: url(${pageContext.request.contextPath}/static/images/banner2.jpg) no-repeat center center;"></a></li>
        </div>
        <a class="lt" href="javascript:;">&lt;</a>
        <a class="gt" href="javascript:;">&gt;</a>
        <div class="ban_btn">
            <ul>
                <li class="active"><a href="javascript:;"></a></li>
                <li><a href="javascript:;"></a></li>
                <li><a href="javascript:;"></a></li>
                <li><a href="javascript:;"></a></li>
                <li><a href="javascript:;"></a></li>
                <li><a href="javascript:;"></a></li>
                <li><a href="javascript:;"></a></li>
            </ul>
        </div>
    </div>
</div>
<!--main_start-->
<div id="main">
    <div class="facture_w">
        <div class="facture">
            <div class="fac_t">
                <h3>品牌制造商</h3>
                <i class="b14">工厂直达消费者，剔除品牌溢价</i>
                <a href="#">更多制造商 &gt;</a>
            </div>
            <div class="fac_b">
                <div class="fac_b_l">
                    <div class="word">
                        <span>新秀丽制造商</span>
                        <i>49元起</i>
                    </div>
                    <img src="${pageContext.request.contextPath}/static/images/xlx.jpg"/>
                </div>
                <div class="fac_b_l" style="margin-left: 10px;">
                    <div class="word">
                        <span>新秀丽制造商</span>
                        <i>49元起</i>
                    </div>
                    <img src="${pageContext.request.contextPath}/static/images/ggx.png"/>
                </div>
                <div class="fac_b_r" style="margin-left: 9px;">
                    <div class="fac_b_r_t" style="margin-bottom: 10px;">
                        <div class="word2">
                            <span>新秀丽制造商</span>
                            <i>49元起</i>
                        </div>
                        <img src="${pageContext.request.contextPath}/static/images/tx.png"/>
                    </div>
                    <div class="fac_b_r_t">
                        <div class="word2">
                            <span>新秀丽制造商</span>
                            <i>49元起</i>
                        </div>
                        <img src="${pageContext.request.contextPath}/static/images/dk.jpg"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="newp_w">
        <a class="lt" href="javascript:;">&lt;</a>
        <a class="gt" href="javascript:;">&gt;</a>
        <div class="newp">
            <div class="newp_t i_d_w">
                <h3 class="i_d_h3">新品首发</h3>
                <i class="b14 i_d_i">为你寻觅世间好物</i>
                <a href="#" class="i_d_a">更多新品 &gt;</a>
            </div>
            <div class="newp_b">
                <ul>
                    <li>
                        <img src="${pageContext.request.contextPath}/static/images/s1.png"/>
                        <div class="newp_div">
                            <a href="#">男士工装束脚裤111</a>
                            <span class="money">￥269</span>
                        </div>
                    </li>
                    <li>
                        <img src="${pageContext.request.contextPath}/static/images/s1.png"/>
                        <div class="newp_div">
                            <a href="#">男士工装束脚裤222</a>
                            <span class="money">￥269</span>
                        </div>
                    </li>
                    <li>
                        <img src="${pageContext.request.contextPath}/static/images/s1.png"/>
                        <div class="newp_div">
                            <a href="#">男士工装束脚裤333</a>
                            <span class="money">￥269</span>
                        </div>
                    </li>
                    <li>
                        <img src="${pageContext.request.contextPath}/static/images/s1.png"/>
                        <div class="newp_div">
                            <a href="#">男士工装束脚裤444</a>
                            <span class="money">￥269</span>
                        </div>
                    </li>

                </ul>
            </div>
        </div>
    </div>
    <div class="reco_w">
        <div class="reco i_d_all">
            <div class="reco_t">
                <h3 class="i_d_h3">人气推荐</h3>
                <i class="b14 i_d_i">编辑推荐</i>
                <i class="b14 i_d_i">热销总榜</i>
                <a href="#" class="i_d_a">更多推荐 &gt;</a>
            </div>
            <div class="reco_b">
                <div class="reco_b_l">
                    <div class="l_pic">
                        <img src="${pageContext.request.contextPath}/static/images/cc.jpg"/>
                    </div>
                    <div class="reco_lb">
                        <a href="#">日式色织水洗棉条纹四件套</a>
                        <span class="money" style="font-size: 16px;">￥299</span>
                    </div>
                </div>
                <div class="reco_b_r">
                    <ul>
                        <li>
                            <div class="r_pic">
                                <img src="${pageContext.request.contextPath}/static/images/xxlx.png"/>
                            </div>
                            <div class="reco_rb">
                                <a href="#">日式色织水洗棉条纹四件套</a>
                                <span class="money">￥299</span>
                            </div>
                        </li>
                        <li>
                            <div class="r_pic">
                                <img src="${pageContext.request.contextPath}/static/images/xxlx.png"/>
                            </div>
                            <div class="reco_rb">
                                <a href="#">日式色织水洗棉条纹四件套</a>
                                <span class="money">￥299</span>
                            </div>
                        </li>
                        <li>
                            <div class="r_pic">
                                <img src="${pageContext.request.contextPath}/static/images/xxlx.png"/>
                            </div>
                            <div class="reco_rb">
                                <a href="#">日式色织水洗棉条纹四件套</a>
                                <span class="money">￥299</span>
                            </div>
                        </li>
                        <li>
                            <div class="r_pic">
                                <img src="${pageContext.request.contextPath}/static/images/xxlx.png"/>
                            </div>
                            <div class="reco_rb">
                                <a href="#">日式色织水洗棉条纹四件套</a>
                                <span class="money">￥299</span>
                            </div>
                        </li>
                        <li>
                            <div class="r_pic">
                                <img src="${pageContext.request.contextPath}/static/images/xxlx.png"/>
                            </div>
                            <div class="reco_rb">
                                <a href="#">日式色织水洗棉条纹四件套</a>
                                <span class="money">￥299</span>
                            </div>
                        </li>
                        <li>
                            <div class="r_pic">
                                <img src="${pageContext.request.contextPath}/static/images/xxlx.png"/>
                            </div>
                            <div class="reco_rb">
                                <a href="#">日式色织水洗棉条纹四件套</a>
                                <span class="money">￥299</span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="time_w">
        <div class="time i_d_all">
            <div class="time_t">
                <h3 class="i_d_h3">限时购</h3>
                <a href="#" class="i_d_a">更多抢购 &gt;</a>
            </div>
            <div class="time_b">
                <div class="time_b_l">
                    <p>22点场</p>
                    <!--<div class="line"></div>-->
                    <a href="#"><div class="check">查看全部&gt;</div></a>
                </div>
                <div class="time_b_r">
                    <ul>
                        <li>
                            <div class="time_b_r_l">
                                <img src="${pageContext.request.contextPath}/static/images/bzi.png"/>
                            </div>
                            <div class="time_b_r_r">
                                <a href="#">日式和风敞口保温杯</a>
                                <p>真空隔热，保温保冷</p>
                                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;还剩447件</p>
                                <i>限时价&nbsp;&nbsp;<span>¥31.5</span></i><em>&nbsp;&nbsp;&nbsp;&nbsp;原价 ¥45</em>
                                <button>立即抢购</button>
                            </div>
                            <div></div>
                        </li>
                        <li>
                            <div class="time_b_r_l">
                                <img src="${pageContext.request.contextPath}/static/images/bzi.png"/>
                            </div>
                            <div class="time_b_r_r">
                                <a href="#">日式和风敞口保温杯</a>
                                <p>真空隔热，保温保冷</p>
                                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;还剩447件</p>
                                <i>限时价&nbsp;&nbsp;<span>¥31.5</span></i><em>&nbsp;&nbsp;&nbsp;&nbsp;原价 ¥45</em>
                                <button>立即抢购</button>
                            </div>

                        </li>
                        <li>
                            <div class="time_b_r_l">
                                <img src="${pageContext.request.contextPath}/static/images/bzi.png"/>
                            </div>
                            <div class="time_b_r_r">
                                <a href="#">日式和风敞口保温杯</a>
                                <p>真空隔热，保温保冷</p>
                                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;还剩447件</p>
                                <i>限时价&nbsp;&nbsp;<span>¥31.5</span></i><em>&nbsp;&nbsp;&nbsp;&nbsp;原价 ¥45</em>
                                <button>立即抢购</button>
                            </div>
                            <div></div>
                        </li>
                        <li>
                            <div class="time_b_r_l">
                                <img src="${pageContext.request.contextPath}/static/images/bzi.png"/>
                            </div>
                            <div class="time_b_r_r">
                                <a href="#">日式和风敞口保温杯</a>
                                <p>真空隔热，保温保冷</p>
                                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;还剩447件</p>
                                <i>限时价&nbsp;&nbsp;<span>¥31.5</span></i><em>&nbsp;&nbsp;&nbsp;&nbsp;原价 ¥45</em>
                                <button>立即抢购</button>
                            </div>
                            <div></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="welfare_w">
        <div class="welfare i_d_all">
            <div class="welfare_t">
                <h3 class="i_d_h3">福利社</h3>
                <a href="#" class="i_d_a">更多优惠 &gt;</a>
            </div>
            <div class="welfare_b">
                <div><img src="${pageContext.request.contextPath}/static/images/youhui.png"/></div>
                <div><img src="${pageContext.request.contextPath}/static/images/lingquan.png"/></div>
                <div>
                    <img src="${pageContext.request.contextPath}/static/images/tong.png" style="margin-top:70px ;"/>
                </div>
                <div>
                    <img src="${pageContext.request.contextPath}/static/images/ny.png" style="margin-top:70px ;"/>
                </div>
            </div>
        </div>
    </div>
    <div class="living_w">
        <div class="living i_d_all">
            <div class="living_t">
                <h3 class="i_d_h3">居家</h3>
                <a href="#" class="i_d_a right">更多优惠 &gt;</a>
                <ul class="classify">
                    <li><a href="#">床品件套</a><b>/</b></li>
                    <li><a href="#">家具</a><b>/</b></li>
                    <li><a href="#">收纳</a><b>/</b></li>
                    <li><a href="#">布艺软装</a><b>/</b></li>
                    <li><a href="#">家饰</a><b>/</b></li>
                    <li><a href="#">宠物</a><b>/</b></li>
                </ul>

            </div>
            <div class="living_b">

                <div class="liv_b_t">
                    <img src="http://yanxuan.nosdn.127.net/1b7b4407a8c099aa2f7b9e7ddb57e017.jpg?imageView&&thumbnail=1090x310&quality=95"/>
                </div>
                <div class="liv_b_b">
                    <ul>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3 ">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div class="acce_w">
        <div class="acce i_d_all">
            <div class="acce_t">
                <h3 class="i_d_h3">配件</h3>
                <a href="#" class="i_d_a right">更多优惠 &gt;</a>
                <ul class="classify">
                    <li><a href="#">行李箱</a><b>/</b></li>
                    <li><a href="#">男士包袋</a><b>/</b></li>
                    <li><a href="#">女士包袋</a><b>/</b></li>
                    <li><a href="#">钱包及小皮件</a><b>/</b></li>
                    <li><a href="#">男鞋</a><b>/</b></li>
                    <li><a href="#">女鞋</a><b>/</b></li>
                    <li><a href="#">拖鞋</a><b>/</b></li>
                </ul>

            </div>
            <div class="acce_b">

                <div class="acce_b_t">
                    <img src="http://yanxuan.nosdn.127.net/27552b12491e92d4dc86a4f221c4251b.jpg?imageView&&thumbnail=1090x310&quality=95"/>
                </div>
                <div class="acce_b_b">
                    <ul>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3 ">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div class="cloth_w">
        <div class="cloth i_d_all">
            <div class="cloth_t">
                <h3 class="i_d_h3">服装</h3>
                <a href="#" class="i_d_a right">更多优惠 &gt;</a>
                <ul class="classify">
                    <li><a href="#">牛仔</a><b>/</b></li>
                    <li><a href="#">外衣</a><b>/</b></li>
                    <li><a href="#">衬衫</a><b>/</b></li>
                    <li><a href="#">卫衣</a><b>/</b></li>
                    <li><a href="#">毛衫</a><b>/</b></li>
                    <li><a href="#">T恤</a><b>/</b></li>
                    <li><a href="#">裤装</a><b>/</b></li>
                </ul>

            </div>
            <div class="cloth_b">

                <div class="cloth_b_t">
                    <img src="http://yanxuan.nosdn.127.net/8badbc7a9f6db07bc5305a35e67d2fcc.jpg?imageView&&thumbnail=1090x310&quality=95"/>
                </div>
                <div class="cloth_b_b">
                    <ul>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3 ">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div class="elec_w">
        <div class="elec i_d_all">
            <div class="elec_t">
                <h3 class="i_d_h3">电器</h3>
                <a href="#" class="i_d_a right">更多优惠 &gt;</a>
                <ul class="classify">
                    <li><a href="#">生活电器</a><b>/</b></li>
                    <li><a href="#">厨房电器</a><b>/</b></li>
                    <li><a href="#">个护健康</a><b>/</b></li>
                    <li><a href="#">数码</a><b>/</b></li>
                    <li><a href="#">影音娱乐</a><b>/</b></li>
                </ul>

            </div>
            <div class="elec_b">

                <div class="elec_b_t">
                    <img src="http://yanxuan.nosdn.127.net/ba250b6db6400cbaf9010584558720b8.jpg?imageView&&thumbnail=1090x310&quality=95"/>
                </div>
                <div class="elec_b_b">
                    <ul>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3 ">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div class="toil_w">
        <div class="toil i_d_all">
            <div class="toil_t">
                <h3 class="i_d_h3">洗护</h3>
                <a href="#" class="i_d_a right">更多优惠 &gt;</a>
                <ul class="classify">
                    <li><a href="#">家庭清洁</a><b>/</b></li>
                    <li><a href="#">生理用品</a><b>/</b></li>
                    <li><a href="#">毛巾</a><b>/</b></li>
                    <li><a href="#">美妆</a><b>/</b></li>
                    <li><a href="#">面部护理</a><b>/</b></li>
                    <li><a href="#">身体护理</a><b>/</b></li>
                    <li><a href="#">浴室用具</a><b>/</b></li>
                </ul>

            </div>
            <div class="toil_b">

                <div class="toil_b_t">
                    <img src="http://yanxuan.nosdn.127.net/2a1e5dc1d16064849dc5ca8dede95f19.jpg?imageView&&thumbnail=1090x310&quality=95"/>
                </div>
                <div class="toil_b_b">
                    <ul>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3 ">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div class="food_w">
        <div class="food i_d_all">
            <div class="food_t">
                <h3 class="i_d_h3">饮食</h3>
                <a href="#" class="i_d_a right">更多优惠 &gt;</a>
                <ul class="classify">
                    <li><a href="#">糕点</a><b>/</b></li>
                    <li><a href="#">小食</a><b>/</b></li>
                    <li><a href="#">坚果炒货</a><b>/</b></li>
                    <li><a href="#">果干</a><b>/</b></li>
                    <li><a href="#">肉类零食</a><b>/</b></li>
                    <li><a href="#">冲饮</a><b>/</b></li>
                    <li><a href="#">茗茶</a><b>/</b></li>
                </ul>

            </div>
            <div class="food_b">

                <div class="food_b_t">
                    <img src="http://yanxuan.nosdn.127.net/b9dd080033b2c4695e67304232ed8786.jpg?imageView&&thumbnail=1090x310&quality=95"/>
                </div>
                <div class="food_b_b">
                    <ul>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3 ">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div class="kitchen_w">
        <div class="kitchen i_d_all">
            <div class="kitchen_t">
                <h3 class="i_d_h3">餐厨</h3>
                <a href="#" class="i_d_a right">更多优惠 &gt;</a>
                <ul class="classify">
                    <li><a href="#">水具杯壶</a><b>/</b></li>
                    <li><a href="#">餐具</a><b>/</b></li>
                    <li><a href="#">锅具</a><b>/</b></li>
                    <li><a href="#">清洁保鲜</a><b>/</b></li>
                    <li><a href="#">厨房配件</a><b>/</b></li>
                    <li><a href="#">刀剪砧板</a><b>/</b></li>
                    <li><a href="#">茶具咖啡具酒具</a><b>/</b></li>
                </ul>

            </div>
            <div class="kitchen_b">

                <div class="kitchen_b_t">
                    <img src="http://yanxuan.nosdn.127.net/5643b801b8b8770db745aacc2bc73e43.jpg?imageView&&thumbnail=1090x310&quality=95"/>
                </div>
                <div class="kitchen_b_b">
                    <ul>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3 ">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div class="kids_w">
        <div class="kids i_d_all">
            <div class="kids_t">
                <h3 class="i_d_h3">婴童</h3>
                <a href="#" class="i_d_a right">更多优惠 &gt;</a>
                <ul class="classify">
                    <li><a href="#">婴幼儿服饰</a><b>/</b></li>
                    <li><a href="#">孕产</a><b>/</b></li>
                    <li><a href="#">儿童服饰</a><b>/</b></li>
                    <li><a href="#">童鞋童包</a><b>/</b></li>
                    <li><a href="#">婴童洗护</a><b>/</b></li>
                    <li><a href="#">寝居</a><b>/</b></li>
                    <li><a href="#">玩具</a><b>/</b></li>
                </ul>

            </div>
            <div class="kids_b">

                <div class="kids_b_t">
                    <img src="http://yanxuan.nosdn.127.net/b5a564fa2096850d3a6b1ef63cf00791.jpg?imageView&&thumbnail=1090x310&quality=95"/>
                </div>
                <div class="kids_b_b">
                    <ul>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3 ">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div class="literary_w">
        <div class="literary  i_d_all">
            <div class="literary_t">
                <h3 class="i_d_h3">文体</h3>
                <a href="#" class="i_d_a right">更多优惠 &gt;</a>
                <ul class="classify">
                    <li><a href="#">文具</a><b>/</b></li>
                    <li><a href="#">户外</a><b>/</b></li>
                    <li><a href="#">唱片</a><b>/</b></li>
                    <li><a href="#">礼品卡</a><b>/</b></li>
                    <li><a href="#">游戏点卡</a><b>/</b></li>
                    <li><a href="#">暴雪周边</a><b>/</b></li>
                    <li><a href="#">我的世界</a><b>/</b></li>
                </ul>

            </div>
            <div class="literary_b">

                <div class="literary_b_t">
                    <img src="http://yanxuan.nosdn.127.net/e70968d4b81d57b7767f08184090e1c0.jpg?imageView&&thumbnail=1090x310&quality=95"/>
                </div>
                <div class="literary_b_b">
                    <ul>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3 ">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div class="featu_w">
        <div class="featu  i_d_all">
            <div class="featu_t">
                <h3 class="i_d_h3">特色区</h3>
                <a href="#" class="i_d_a right">更多优惠 &gt;</a>
                <ul class="classify">
                    <li><a href="#">日本馆</a><b>/</b></li>
                    <li><a href="#">韩国馆</a><b>/</b></li>
                    <li><a href="#">东南亚馆</a><b>/</b></li>
                    <li><a href="#">澳新官</a><b>/</b></li>
                    <li><a href="#">欧洲馆</a><b>/</b></li>
                    <li><a href="#">智造馆</a><b>/</b></li>
                    <li><a href="#">春风馆</a><b>/</b></li>
                </ul>

            </div>
            <div class="featu_b">

                <div class="featu_b_t">
                    <img src="http://yanxuan.nosdn.127.net/61623a376d81794c1a36f4808ab72e88.jpg?imageView&&thumbnail=1090x310&quality=95"/>
                </div>
                <div class="featu_b_b">
                    <ul>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                        <li>
                            <div class="hezi">
                                <img src="${pageContext.request.contextPath}/static/images/cd.png"/>
                            </div>
                            <div class="word3 ">
                                <a href="#" class="bw14">保暖嫩肤蚕丝羽绒子母被</a>
                                <p class="money">￥1999</p>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div class="zhenxuan_w">
        <div class="zhenxuan">
            <div class="zhenxuan_t">
                <h3>甄选家</h3>
                <i class="b14">我们在寻找，对生活有态度的你</i>
            </div>
            <div class="zhenxuan_b">
                <div class="zhenxuan_b_l left">
                    <div><img src="${pageContext.request.contextPath}/static/images/ypsy.jpg"/></div>
                </div>
                <div class="zhenxuan_b_r left">
                    <div class="zhenxuan_b_r_t"><img src="${pageContext.request.contextPath}/static/images/jyzj.jpg"/></div>
                    <div class="zhenxuan_b_r_b"><img src="${pageContext.request.contextPath}/static/images/yszx.jpg"/></div>
                </div>
            </div>
        </div>
    </div>
    <div class="talk_w">
        <div class="talk">
            <div class="talk_t">
                <a href="javascript:;" class="zjt">&lt;</a>
                <a href="javascript:;" class="yjt">&gt;</a>
                <h3>大家都在说</h3>
                <i class="b14">生活，没有统一标准</i>
            </div>
            <div class="talk_b">

                <ul class="talk_ul">
                    <li class="talk_li">
                        <div class="talk_b_t">
                            <img src="${pageContext.request.contextPath}/static/images/nzhtg.jpg"/>
                        </div>
                        <div class="talk_b_b">
                            <p><span>m*****6</span><span>2018/03/24</span></p>
                            <a href="#" class="t_b_n left">南枣核桃糕</a><em class="right t_b_p">￥26</em>
                            <p class="left t_b_c">评论评论评论评论评论评论评论评论评论</p>
                        </div>
                    </li>
                    <li class="talk_li">
                        <div class="talk_b_t">
                            <img src="${pageContext.request.contextPath}/static/images/nzhtg.jpg"/>
                        </div>
                        <div class="talk_b_b">
                            <p><span>m*****6</span><span>2018/03/24</span></p>
                            <a href="#" class="t_b_n left">南枣核桃糕</a><em class="right t_b_p">￥26</em>
                            <p class="left t_b_c">评论评论评论评论评论评论评论评论评论</p>
                        </div>
                    </li>
                    <li class="talk_li">
                        <div class="talk_b_t">
                            <img src="${pageContext.request.contextPath}/static/images/nzhtg.jpg"/>
                        </div>
                        <div class="talk_b_b">
                            <p><span>m*****6</span><span>2018/03/24</span></p>
                            <a href="#" class="t_b_n left">南枣核桃糕</a><em class="right t_b_p">￥26</em>
                            <p class="left t_b_c">评论评论评论评论评论评论评论评论评论</p>
                        </div>
                    </li>
                    <li class="talk_li">
                        <div class="talk_b_t">
                            <img src="${pageContext.request.contextPath}/static/images/nzhtg.jpg"/>
                        </div>
                        <div class="talk_b_b">
                            <p><span>m*****6</span><span>2018/03/24</span></p>
                            <a href="#" class="t_b_n left">南枣核桃糕</a><em class="right t_b_p">￥26</em>
                            <p class="left t_b_c">评论评论评论评论评论评论评论评论评论</p>
                        </div>
                    </li>
                    <li class="talk_li">
                        <div class="talk_b_t">
                            <img src="${pageContext.request.contextPath}/static/images/nzhtg.jpg"/>
                        </div>
                        <div class="talk_b_b">
                            <p><span>m*****6</span><span>2018/03/24</span></p>
                            <a href="#" class="t_b_n left">南枣核桃糕</a><em class="right t_b_p">￥26</em>
                            <p class="left t_b_c">评论评论评论评论评论评论评论评论评论</p>
                        </div>
                    </li>
                    <li class="talk_li">
                        <div class="talk_b_t">
                            <img src="${pageContext.request.contextPath}/static/images/nzhtg.jpg"/>
                        </div>
                        <div class="talk_b_b">
                            <p><span>m*****6</span><span>2018/03/24</span></p>
                            <a href="#" class="t_b_n left">南枣核桃糕</a><em class="right t_b_p">￥26</em>
                            <p class="left t_b_c">评论评论评论评论评论评论评论评论评论</p>
                        </div>
                    </li>
                    <li class="talk_li">
                        <div class="talk_b_t">
                            <img src="${pageContext.request.contextPath}/static/images/nzhtg.jpg"/>
                        </div>
                        <div class="talk_b_b">
                            <p><span>m*****6</span><span>2018/03/24</span></p>
                            <a href="#" class="t_b_n left">南枣核桃糕</a><em class="right t_b_p">￥26</em>
                            <p class="left t_b_c">评论评论评论评论评论评论评论评论评论</p>
                        </div>
                    </li>
                    <li class="talk_li">
                        <div class="talk_b_t">
                            <img src="${pageContext.request.contextPath}/static/images/nzhtg.jpg"/>
                        </div>
                        <div class="talk_b_b">
                            <p><span>m*****6</span><span>2018/03/24</span></p>
                            <a href="#" class="t_b_n left">南枣核桃糕</a><em class="right t_b_p">￥26</em>
                            <p class="left t_b_c">评论评论评论评论评论评论评论评论评论</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
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
<div class="masked"></div>
<script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/static/gulpfile.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/static/js/index.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/static/js/public.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
