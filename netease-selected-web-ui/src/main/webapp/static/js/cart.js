
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
	
	
	var oUl=document.querySelector('.loved_ul');
	var oLi=document.querySelectorAll('.loved_ul>li');
	oUl.style.width=oLi.length*22+oLi[0].offsetWidth*oLi.length+'px';
})();

(function ($) {
	/*$('.con_m_cou').find('a').eq(0).on('click',function () {
		if(($('.con_m_cou').find('input').eq(0).val())==1){
			$('.con_m_cou').find('input').eq(0).val("1");
		}else{
			$('.con_m_cou').find('input').eq(0).val((($('.con_m_cou').find('input').eq(0).val()-1)))
		}
	})
	$('.con_m_cou').find('a').eq(1).on('click',function () {
		if(($('.con_m_cou').find('input').eq(0).val())>=99){
			$('.con_m_cou').find('input').eq(0).val("99");
		}else{
			$('.con_m_cou').find('input').eq(0).val(parseInt($('.con_m_cou').find('input').eq(0).val())+1);
		}
	})*/

	$.ajax({
		url: 'json/cart.json',//接口
	    dataType: 'json',//数据的类型
	    async:false
	}).done(function(data){//data:接口的返回的数据
		var $html = '';
	    for (var i = 0; i<data.length; i++) {
	        $html += '<li class="loved_li">'+
						'<div><img class="loadimg" sid="'+data[i].sid+'" src="'+data[i].img+'"/></div>'+
						'<div class="loved_word">'+
							'<p>'+data[i].title+'</p><br>'+
							'<span class="money">￥'+data[i].price+'</span><br>'+
							'<a class="join" href="javascript:;">加入购物车</a>'+
						'</div>'+
					'</li>';
	    }
	    $('.loved_ul').html($html);//将数据追加到商品列表
	    
	    if(getCookie('cartsid') && getCookie('cartnum')){
			var s=getCookie('cartsid').split(',');//先转数组，方便后面的遍历创建
			var n=getCookie('cartnum').split(',');//
			for(var i=0;i<s.length;i++){
				createcart(s[i],n[i]);
			}
		}
	});

function cookieToArray(){
	if(getCookie('cartsid')){
		sidarr=getCookie('cartsid').split(',');//将cookie值通过逗号拆分为数组。
	}else{
		sidarr=[];
	}
	
	if(getCookie('cartnum')){//存放数量
		numarr=getCookie('cartnum').split(',');
	}else{
		numarr=[];
	}
}

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
//2.给加入购物车按钮添加对应的事件，判断当前的按钮对应的图片的sid是否存在于cookie里面
//2.委托原理获取商品列表的添加购物车按钮

$('.loved_ul').on('click', '.join', function() {
	var sid = $(this).parents('.loved_li').find('.loadimg').attr('sid');//当前按钮对应图片的sid
	getcookievalue();//获取cookie值，放到对应的数组中
	if ($.inArray(sid, sidarr) != -1) {//存在，数量加1
		
		$('.con_list:visible').each(function() {//遍历可视的商品列表
            if (sid == $(this).find('img').attr('sid')) {//添加购物车按钮的索引和购物车中商品列表的索引一致
                var $num = $(this).find('.con_m_cou>input').val();//获取数量的值
                $num++;//数量累加
                $(this).find('.con_m_cou>input').val($num);//将数量赋值回去
                //计算价格
                var $dj = parseFloat($(this).find('.con_m_pri>em').html());//获取当前的单价
                $(this).find('.con_m_sub span').html(($dj * $num).toFixed(2));//计算商品总价

                //存储数量到cookie里面。通过编号找数量
                numarr[$.inArray(sid, sidarr)] = $num;//将数量存储到对应的cookie存放数量的数组中
                addCookie('cartnum', numarr.toString(), 7);//添加购物车
                totalprice();
            }
        });
	}else{//当前商品列表没有进入购物车，创建商品列表
		
		sidarr.push(sid);//将当前id添加到数组里面。
        addCookie('cartsid', sidarr.toString(), 7);//将整个数组添加到cookie
        numarr.push(1);//走这里数量都是1.
        addCookie('cartnum', numarr.toString(), 7);
        createcart(sid, 1);
        totalprice();
	}
});

//添加创建到购物车的方法。
function createcart(sid, num) {//sid：图片的编号  num:商品的数量
    $.ajax({
        url: 'json/cart.json',
        dataType: 'json',
        async:false
    }).done(function(data) {
    	
        for (var i = 0; i < data.length; i++) {
            if (sid == data[i].sid) {//图片的sid和数据里面的sid匹配
                var $clone = $('.con_list:hidden').clone(true);//对隐藏的模块进行克隆
                //都是赋值
                $clone.find('.pic_size').find('img').attr('src', data[i].img);
                $clone.find('.pic_size').find('img').attr('sid', data[i].sid);
                $clone.find('.con_m_det_word>a:first').html(data[i].title);
                $clone.find('.con_m_pri').find('em').html(data[i].price);
                $clone.find('.con_m_cou>input').val(num);
                //计算价格
                var $dj1 = parseFloat($clone.find('.con_m_pri>em').html());
                $clone.find('.con_m_sub>span').html(($dj1 * num).toFixed(2));
                $clone.css('display', 'block');//克隆的模块是隐藏，显示出来。
                $('#con_m_w').append($clone);//追加
                kong()
                totalprice();
            }
        }
    });
}

//5.页面加载检测购物车中是否有数据，有的话创建商品列表
if (getCookie('cartsid') && getCookie('cartnum')) {
    var s = getCookie('cartsid').split(',');//存放sid数组
    var n = getCookie('cartnum').split(',');//存放数量数组
    for (var i = 0; i < s.length; i++) {
        createcart(s[i], n[i]);//遍历创建商品列表
    }
}

//6.商品列表不存在显示购物车为空

kong();

function kong() {
    if (getCookie('cartsid')) {
        $('.empty_w').hide();
    } else {
        $('.empty_w').show();
    }
}




//7.计算总价
totalprice();

function totalprice() {//计算总价
    var total = 0;
    var countnum = 0;
    $('.con_m:visible').each(function() {//显示出来的
        if ($(this).find('input:checkbox').is(':checked')) {//复选框是选中的
            total += parseFloat($(this).find('.con_m_sub span').html());
            countnum += parseInt($(this).find('.con_m_cou').find('input').val());
        }
    });
    $('.con_sum1').html('￥' + total.toFixed(2));
    $('.con_sum2').html('￥' + total.toFixed(2));
    $('.con_b_l_num>p>span').html(countnum);
    
}

//8.全选
$('.con_t_all>input').on('change', function() {
    $('.con_m:visible').find('input:checkbox').prop('checked', $(this).prop('checked'));
    $('.con_t_all>input').prop('checked', $(this).prop('checked'));
    totalprice();
});
var $inputchecked = $('.con_list:visible').find('input:checkbox');//获取委托元素
$('.con_list').on('change', $inputchecked, function() {
    var $inputs = $('.con_list:visible').find('input:checkbox'); //放内部
    if ($('.con_list:visible').find('input:checked').length == $inputs.length) {
        $('.con_t_all>input').prop('checked', true);
    } else {
        $('.con_t_all>input').prop('checked', false);
    }
    totalprice();
});


//9.删除商品列表
//删除cookie的函数
function delgoodslist(sid, sidarr) {//sid：当前的sid，sidarr:cookie的sid的值
    var index = -1;
    for (var i = 0; i < sidarr.length; i++) {
        if (sid == sidarr[i]) {
            index = i;
        }
    }
    sidarr.splice(index, 1);//删除数组对应的值
    numarr.splice(index, 1);//删除数组对应的值
    addCookie('cartsid', sidarr.toString(), 7);//添加cookie
    addCookie('cartnum', numarr.toString(), 7);
}

//删除单个商品的函数(委托)
$('.con_m').on('click', '.del', function(ev) {
    cookieToArray(); //转数组
    $(this).first().parents('.con_m').remove();
    delgoodslist($(this).first().parents('.con_m').find('img').attr('sid'), sidarr);
    totalprice();
});


//删除全部商品的函数
$('.con_b_l_num_del').on('click', function() {
    $('.con_list:visible').each(function() {
        if ($(this).find('input:checkbox').is(':checked')) {
            $(this).remove();
            delgoodslist($(this).find('img').attr('sid'), sidarr);
        }
    });
    totalprice();
});

//10.修改数量的操作
//改变商品数量++
$('.con_add').on('click', function() {
    var $count = $(this).parents('.con_list').find('.con_m_cou input').val();
    $count++;
    if ($count >= 99) {
        $count = 99;
    }
    $(this).parents('.con_list').find('.con_m_cou input').val($count);
    $(this).parents('.con_list').find('.con_m_sub').find('span').html(singlegoodsprice($(this)));//改变后的价格
    totalprice();
    setcookie($(this));

});


//改变商品数量--
$('.con_down').on('click', function() {
    var $count = $(this).parents('.con_list').find('.con_m_cou input').val();
    $count--;
    if ($count <= 1) {
        $count = 1;
    }
    $(this).parents('.con_list').find('.con_m_cou input').val($count);
    $(this).parents('.con_list').find('.con_m_sub').find('span').html(singlegoodsprice($(this)));//改变后的价格
    totalprice();
    setcookie($(this));
});


//直接输入改变数量
$('.con_m_cou input').on('input', function() {
    var $reg = /^\d+$/g; //只能输入数字
    var $value = parseInt($(this).val());
    if ($reg.test($value)) {
        if ($value >= 99) {//限定范围
            $(this).val(99);
        } else if ($value <= 0) {
            $(this).val(1);
        } else {
            $(this).val($value);
        }
    } else {
        $(this).val(1);
    }
    $(this).parents('.con_list').find('.con_m_sub').find('span').html(singlegoodsprice($(this)));//改变后的价格
    totalprice();
    setcookie($(this));
});



//11.计算单个商品的价格
function singlegoodsprice(row) { //row:当前元素
    var $dj = parseFloat(row.parents('.con_list').find('.con_m_pri').find('em').html());
    var $cnum = parseInt(row.parents('.con_list').find('.con_m_cou input').val());
    return ($dj * $cnum).toFixed(2);
}


//12.将改变后的数量的值存放到cookie
function setcookie(obj) { //obj:当前操作的对象
    cookieToArray();
    var $index = obj.parents('.con_list').find('img').attr('sid');
    numarr[sidarr.indexOf($index)]=obj.parents('.con_list').find('.con_m_cou input').val();
    addCookie('cartnum', numarr.toString(), 7);
}
})(jQuery)
