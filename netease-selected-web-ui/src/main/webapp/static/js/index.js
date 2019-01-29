/*;(function () {
var oUl=document.querySelector('.banner_w ul');
var oLi=document.querySelectorAll('.banner_w ul li');
	var sum=0;
	for(var i=0;i<oLi.length;i++){
		sum+=oLi[i].offsetWidth;
	}
	oUl.style.width=sum+oLi.length*3;
})();*/

/*;(function () {
	var arr=[];
	$.getJSON('php/yanxuandata.php',function(data){
		arr=data;
			$('.newp_b ul').append($('<li><img src="'+value.url+'"/><div class="newp_div"><a href="#">'+value.title+'</a><span class="money">￥'+value.price+'</span></div></li>'));	
	});
})();*/
//new_product start
;(function () {
$.ajax({
  url: "php/new_product.php",
  cache: true,
  success: function(data){
  	var arr = JSON.parse(data);
  	var str = '';
  	$.each(arr,function(i,v){//console.log(arr[i].title);
  		str+='<li><img src="'+arr[i].url+'"/><div class="newp_div"><a href="#">'+arr[i].title+'</a><span class="money">￥'+arr[i].price+'</span></div></li>';
  	})
  	$('.newp_b ul').html(str);
  }
});	
})();
//new_product end
//hot_product start
(function () {
$.ajax({
  url: "php/hot_product.php",
  cache: true,
  success: function(data){
  	var arr = JSON.parse(data);
  	var str = '';
  	$.each(arr,function(i,v){//console.log(arr[i].title);
  		str+='<li><div class="r_pic"><img src="'+arr[i].url+'"/></div><div class="reco_rb"><a href="#">'+arr[i].title+'</a><span class="money">￥'+arr[i].price+'</span></div></li>';
  	});
  	$('.reco_b_r ul').html(str);
  }
});		
})()
//hot_product end
//limit_product start
;(function () {
$.ajax({
  url: "php/limit_product.php",
  cache: true,
  success: function(data){
  	var arr = JSON.parse(data);
  	var str = '';
  	$.each(arr,function(i,v){//console.log(arr[i].title);
  		str+='<li><div class="time_b_r_l"><img src="'+arr[i].url+'"/></div><div class="time_b_r_r"><a href="#">'+arr[i].title+'</a><p>'+arr[i].text+'</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;还剩'+arr[i].num+'件</p><i>限时价&nbsp;&nbsp;<span>¥'+arr[i].now_price+'</span></i><em>原价¥'+arr[i].pre_price+'</em><button>立即抢购</button></div><div></div></li>';
  	})
  	$('.time_b_r ul').html(str);
  }
});	
})();
//limit_product end
//banner_start
;(function () {
window.onresize=function auto() {
	var clientW=document.documentElement.clientWidth;
	var oBtn=document.querySelector('.ban_btn ul');
	oBtn.style.left=clientW/2 - oBtn.offsetWidth/2 + 'px'
}();
window.onresize=function auto() {
	var clientW=document.documentElement.clientWidth;
	var oBtn=document.querySelector('.ban_btn ul');
	oBtn.style.left=clientW/2 - oBtn.offsetWidth/2 + 'px'
	}
})();


function Lunbo(){
	//构造函数的属性
this.big=document.querySelector('.banner_w');
this.picLi=document.querySelectorAll('.pic_list li');
this.aBtn=document.querySelectorAll('.ban_btn ul li');
this.left=document.querySelector('.lt');
this.right=document.querySelector('.gt');
this.num=0;//当前点击的按钮的索引
this.timer=null;

//构造函数的方法
this.init=function(){
	//this:实例对象
	var that=this;
	for(var i=0;i<this.aBtn.length;i++){
		this.aBtn[i].index=i;//自定义索引
		this.aBtn[i].onclick=function(){
			that.num=this.index;//当前点击的按钮的索引
			that.btnclick();
		};
	}
	
	
	this.big.onmouseover=function(){
		that.show();
		clearInterval(that.timer);
	};
	
	this.big.onmouseout=function(){
		that.hide();
		that.timer=setInterval(function(){
			that.cright();
		},2000);
	};
	
	this.right.onclick=function(){
		that.cright();
	};
	
	this.left.onclick=function(){
		that.cleft();
	};
	
	this.timer=setInterval(function(){
		that.cright();
	},2000);
	
};


this.btnclick=function(){
	//this:实例对象
	for(var i=0;i<this.aBtn.length;i++){
		this.aBtn[i].className='';
		this.picLi[i].style.cssText="opacity: 0; transition: 'all 1s';";
	}
	this.aBtn[this.num].className='active';
	this.picLi[this.num].style.cssText="opacity: 1; transition: all 1s;";
};

this.show=function(){
	this.left.style.display='block';
	this.right.style.display='block';
};

this.hide=function(){
	this.left.style.display='none';
	this.right.style.display='none';
	};
	
	this.cright=function(){
		this.num++;
		if(this.num>this.aBtn.length-1){
			this.num=0;
		}
		
		this.btnclick();
	};
	this.cleft=function(){
		this.num--;
		if(this.num<0){
			this.num=this.aBtn.length-1;
		}
		this.btnclick();
	}
}


/*var jd=new Lunbo();//实例化
jd.init();//初始化一个方法。*/

new Lunbo().init();
//banner_end
//banner width start
;(function () {
	window.onresize=function () {
		var oBan=document.querySelector('.banner');
		var clientW=document.body.clientWidth;
	}
})();
//banner width start
//pic_banner start
/*(function () {
$.ajax({
  url: "php/banner.php",
  cache: true,
  success: function(data){
  	var arr = JSON.parse(data);
  	var str = '';
  	$.each(arr,function(i,v){//console.log(arr[i].title);
  		str+='<li style="opacity: 1;"><a href="#" style="background: url('+arr[i].url+') no-repeat center center;"></a></li>';
  	});
  	$('.pic_list').html(str);
  }
});		
})()*/
//pic_banner end

(function () {
	var oUl=document.querySelector('.newp_b ul');
	var oLi=document.querySelectorAll('.newp_b ul li');
	var num=0;
	for(var i=0;i<oLi.length;i++){
		num+=oLi[i].offsetWidth
	}
	oUl.style.width=num+oLi.length*10+'px';
	
})();
//gt_start
(function ($) {
	
	var left_w=$('.newp_b ul').css('left');
	var left=null;
	var bstop=null;
	$('.gt').bind('click',gt=function () {
		left_w=$('.newp_b ul').css('left');
		left=parseInt(left_w)-1100;
		
		$('.newp_b ul').stop(true).animate({
			left: left
		},700,function () {
			right=$('.newp_b ul').css('right');
			if(parseInt(right)>=0){
				$('.gt').unbind('click',gt);
			};
			
		});
	});
	//gt_start
	
	//lt_start
	$('.lt').bind('click',lt=function () {
		left_w=$('.newp_b ul').css('left');
		left=parseInt(left_w)+1100;
		$('.newp_b ul').stop(true).animate({
			left: left
		},700,function () {
			left=$('.newp_b ul').css('left');
			if(parseInt(left)>=-10){
				$('.lt').unbind('click',lt);
			};
		});
	});
	//lt_end

}(jQuery));
//talk start
;(function () {
	var oUl=document.querySelector('.talk_ul');
	var oLi=document.querySelectorAll('.talk_li');
	oUl.style.width=oLi.length*10+oLi[0].offsetWidth*oLi.length+'px';
})();
//lunbokaishi
(function ($) {
	
	var left_w=$('.talk_ul').css('left');
	var left=null;
	var bstop=null;
	var oUl=document.querySelector('.talk_ul');
	var oLi=document.querySelectorAll('.talk_li');
	$('.yjt').bind('click',gt=function () {
		left_w=$('.talk_ul').css('left');
		left=parseInt(left_w)-oLi[0].offsetWidth-10;
		
		$('.talk_ul').stop(true).animate({
			left: left
		},700,function () {
			right=$('.talk_ul').css('right');
			if(parseInt(right)>=-5){
				$('.yjt').unbind('click',gt);
			};
			
		});
	});
	//gt_start
	
	//lt_start
	$('.zjt').bind('click',lt=function () {
		left_w=$('.talk_ul').css('left');
		left=parseInt(left_w)+oLi[0].offsetWidth+10;
		$('.talk_ul').stop(true).animate({
			left: left
		},700,function () {
			left=$('.talk_ul').css('left');
			if(parseInt(left)>=0){
				$('.zjt').unbind('click',lt);
			};
		});
	});
	//lt_end

}(jQuery));
//talik end