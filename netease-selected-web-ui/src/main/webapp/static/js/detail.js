(function ($) {
	$('.count').find('a').eq(0).on('click',function () {
		if(($('.count').find('input').eq(0).val())==1){
			$('.count').find('input').eq(0).val("1");
		}else{
			$('.count').find('input').eq(0).val((($('.count').find('input').eq(0).val()-1)))
		}
	})
	$('.count').find('a').eq(1).on('click',function () {
		if(($('.count').find('input').eq(0).val())>=99){
			$('.count').find('input').eq(0).val("99");
		}else{
			$('.count').find('input').eq(0).val(parseInt($('.count').find('input').eq(0).val())+1);
		}
	})
	
	$('.pic_r_s>li').eq(0).find("img").on('mouseenter',function () {
		var src=$('.pic_r_s>li').eq(0).find("img").attr("src");
		$('.pic_small>img').attr("src",src);
		$('.pic_big').attr("src",src);
	})
	$('.pic_r_s>li').eq(1).find("img").on('mouseenter',function () {
		var src=$('.pic_r_s>li').eq(1).find("img").attr("src");
		$('.pic_small>img').attr("src",src);
		$('.pic_big').attr("src",src);
	})
	$('.pic_r_s>li').eq(2).find("img").on('mouseenter',function () {
		var src=$('.pic_r_s>li').eq(2).find("img").attr("src")
		$('.pic_small>img').attr("src",src);
		$('.pic_big').attr("src",src);
	})
	$('.pic_r_s>li').eq(3).find("img").on('mouseenter',function () {
		var src=$('.pic_r_s>li').eq(3).find("img").attr("src")
		$('.pic_small>img').attr("src",src);
		$('.pic_big').attr("src",src);
	})
	$('.pic_r_s>li').eq(4).find("img").on('mouseenter',function () {
		var src=$('.pic_r_s>li').eq(4).find("img").attr("src")
		$('.pic_small>img').attr("src",src);
		$('.pic_big').attr("src",src);
	})
	
	//放大镜
	var sf=$('.sf');
	var bf=$('.bf');
	var bpic=$('.pic_big');
	var spic=$('.pic_small');
	var max=$('.pic');
	var sf_w=Math.floor(bf.innerWidth()*spic.innerWidth()/bpic.innerWidth());
	var sf_h=Math.floor(bf.innerHeight()*spic.innerHeight()/bpic.innerHeight());
	var bili=(bpic.outerWidth()/spic.outerWidth()).toFixed(1);
	
	$('.sf').css({width:sf_w,height:sf_w})
	$('.pic_small').on('mouseenter',function () {
		$('.sf').show();
		$('.bf').show();
		$('.pic_small').on('mousemove',function (ev) {
			var ev=ev||window.event;
			var l=ev.clientX-max.offset().left-sf.innerWidth()/2;
			var t=ev.clientY-50-sf.innerHeight()/2;
			if(l<0){
				l=0;
			}else if(l>=$('.pic_small').innerWidth()-sf.innerWidth()){
				l=$('.pic_small').innerWidth()-sf.innerWidth();
			}
			if(t<0){
				t=0;
			}else if(t>=$('.pic_small').innerHeight()-sf.innerHeight()){
				t=$('.pic_small').innerHeight()-sf.innerHeight();
			}
			var bw=-bili*l;
			var bh=-bili*t;
			$('.sf').css({left:l,top:t});
			$('.pic_big').css({left:bw,top:bh});
		})
	})
	$('.pic_small').on('mouseleave',function () {
		$('.sf').hide();
		$('.bf').hide();
	})
//放大镜 end
//cookie
	var sidarr = [];
	var numarr = [];
	function getcookievalue(){
		if(getCookie('cartsid')){
			sidarr=getCookie('cartsid').split(',');
		}
		
		if(getCookie('cartnum')){
			numarr=getCookie('cartnum').split(',');
		}
	}
	
	$('.car').on('click', function() {
		var sid = $('.pic_small').find("img").attr('sid');//当前按钮对应图片的sid
		getcookievalue();//获取cookie值，放到对应的数组中
		if ($.inArray(sid, sidarr) != -1) {//存在
			var num=parseInt(numarr[$.inArray(sid,sidarr)])+parseInt($('.count').find("input").val());
			numarr[$.inArray(sid,sidarr)]=num;
			addCookie('cartnum', numarr.toString(), 7);
		}else{//不存在
			sidarr.push(sid);//将当前id添加到数组里面。
			addCookie('cartsid', sidarr.toString(), 7);//将整个数组添加到cookie
			numarr.push($('.count').find("input").val());//走这里数量都是1.
			addCookie('cartnum', numarr.toString(), 7);
		}
	});
	
	
	
})(jQuery);
