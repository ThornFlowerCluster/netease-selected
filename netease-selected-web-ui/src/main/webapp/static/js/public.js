function addCookie(key,value,day){
	var date=new Date();//创建日期对象
	date.setDate(date.getDate()+day);//过期时间：获取当前的日期+天数，设置给date
	document.cookie=key+'='+encodeURI(value)+';expires='+date;//添加cookie，设置过期时间
}
function getCookie(key){
	var str=decodeURI(document.cookie);
	var arr=str.split('; ');
	for(var i=0;i<arr.length;i++){
		var arr1=arr[i].split('=');
		if(arr1[0]==key){
			return arr1[1];
		}
	}
}
function delCookie(key,value){
	addCookie(key,value,-1);//添加的函数,将时间设置为过去时间
}
(function () {
	var toTop=document.querySelector('.fixed>ul >li:nth-of-type(4) a');
	var distance=0;
	var timer=null;
	var speed=0;
	toTop.onclick=function () {
		timer=setInterval(function () {
			speed=distance/10;
			distance=document.documentElement.scrollTop||document.body.scrollTop;
			if(distance<=0){
				clearInterval(timer);
			}
			document.documentElement.scrollTop=document.body.scrollTop=distance-speed;
		},20);
	}
})();


(function () {
	var sA=document.querySelector('.nav_t_w');
	window.onscroll=function () {
		var onscrollTop=document.documentElement.scrollTop || document.body.scrollTop
		if(onscrollTop>=200){
			sA.style.cssText="display: block; position: fixed; z-index:3; top: 0; box-shadow:0px 2px 8px 0px #ccc;";
		}else{
			sA.style.cssText="display: none; position: fixed; z-index:3; top: 0; box-shadow:0px 2px 8px 0px #ccc;";
		}
	}
	return;
})();

//loging_start
;(function () {
	window.onresize=function () {
		
	}
	var oLog=document.querySelector('.hd_t_r ul li a');
	var logWrap=document.getElementById('loging_w');
	var clientWidth=document.body.clientWidth;
	var clientHeight=document.body.clientHeight;
	var oClose=document.querySelector('.log_close');
	var oMasked=document.querySelector('.masked');
	var oTop=(clientHeight-logWrap.offsetHeight)/2+'px';
	var oLeft=(clientWidth-logWrap.offsetWidth)/2+'px';
	
	oLog.onclick=function () {
		
		logWrap.style.cssText=`visibility:visible;  position:fixed; top:${oTop};left:${oLeft};`
		oMasked.style.cssText="width: 100%; height: 100%; background-color: rgba(0,0,0,0.8); position: absolute; top: 0px; z-index: 4;"
	}
	oClose.onclick=function () {
		logWrap.style.cssText="visibility:hidden;"
		oMasked.style.cssText="";
	}
})();
//loging_end

//kefu start
(function ($) {
    $('.khfw').on('mouseenter',function () {
    	$('.hd_t_t_t').stop().fadeIn();
    })
    $('.hd_t_t_t').on('mouseleave',function () {
    	$('.hd_t_t_t').stop().fadeOut();
    })
    
    $('.app').on('mouseenter',function () {
    	$('.hd_t_t_r').stop().fadeIn();
    })
    $('.hd_t_t_r').on('mouseleave',function () {
    	$('.hd_t_t_r').stop().fadeOut();
    })
    //nav start
    $('.nav>li:nth-of-type(2) a').on('mouseenter',function () {
    	$('.nav_db_w').stop().fadeIn('fast');
    })
    $('.nav_db_w').on('mouseleave',function () {
    	$('.nav_db_w').stop().fadeOut('fast');
    })
    //nav end
}(jQuery));
$(function(){
	if(getCookie('UserName')){
		$('.dl').hide();
		$('.zc').hide();
		$('.admin').show().html('<a href="#" class="out">退出</a><span>'+getCookie("UserName")+'</span>您好，  ');
	}
	$('.out').on('click',function(){
		delCookie('UserName','',-1);
		$('.admin').hide();
		$('.dl').show();
		$('.zc').show();
	});
});
//kefu end

