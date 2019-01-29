/*(function () {
	var oInput=document.querySelectorAll('input');
	var oP=document.querySelectorAll('.echo>p');
	var oEcho=document.querySelectorAll('.echo');
	var oBtn=document.querySelector('.b1_w>button');
	var oCode=document.querySelector('.code');
	var str='';
	var bstop=null;

	oInput[0].onblur=function () {
		var reg=/^([\w\-]+)@([\w\-]+).([\w\-]+)$/;
		if(oInput[0].value == ""){
			oEcho[0].style.cssText='display: block;';
			oP[0].style.background="rgba(216, 36, 61,0.7)";
			oP[0].style.color="#fff";
			oP[0].innerHTML='不能为空';
		}else{
			if(reg.test(oInput[0].value)){
				oEcho[0].style.cssText='display: block;';
				oP[0].style.background="rgba(0, 165, 57,0.7)";
				oP[0].style.color="#fff";
				oP[0].innerHTML='验证成功';
			}
			else{
				oEcho[0].style.cssText='display: block;';
				oP[0].style.background="rgba(216, 36, 61,0.7)";
				oP[0].style.color="#fff";
				oP[0].innerHTML='格式错误，请再输入一次';
			}
		}
		
	}
	
	oInput[1].onblur=function () {
		var reg=/^[\w\-\.]{6,12}$/;
		if(oInput[1].value == ""){
			oEcho[1].style.cssText='display: block;';
			oP[1].style.background="rgba(216, 36, 61,0.7)";
			oP[1].style.color="#fff";
			oP[1].innerHTML='不能为空';
		}else{
			if(reg.test(oInput[1].value)){
				oEcho[0].style.cssText='display: block;';
				oP[1].style.background="rgba(0, 165, 57,0.7)";
				oP[1].style.color="#fff";
				oP[1].innerHTML='验证成功';
			}
			else{
				oEcho[1].style.cssText='display: block;';
				oP[1].style.background="rgba(216, 36, 61,0.7)";
				oP[1].style.color="#fff";
				oP[1].innerHTML='格式错误，请再输入一次';
			}
		}
	}
	
	oInput[2].onblur=function () {
		if(oInput[2].value == ""){
			oEcho[2].style.cssText='display: block;';
			oP[2].style.background="rgba(216, 36, 61,0.7)";
			oP[2].style.color="#fff";
			oP[2].innerHTML='不能为空';
		}else{
			if(oInput[1].value==oInput[2].value){
				oEcho[2].style.cssText='display: block;';
				oP[2].style.background="rgba(0, 165, 57,0.7)";
				oP[2].style.color="#fff";
				oP[2].innerHTML='验证成功';
			}
			else{
				oEcho[2].style.cssText='display: block;';
				oP[2].style.background="rgba(216, 36, 61,0.7)";
				oP[2].style.color="#fff";
				oP[2].innerHTML='密码不一致，请再输入一次';
			}
		}
	}
	
	oInput[3].onblur=function () {
		if(oInput[3].value == ""){
			oEcho[3].style.cssText='display: block;';
			oP[3].style.background="rgba(216, 36, 61,0.7)";
			oP[3].style.color="#fff";
			oP[3].innerHTML='不能为空';
		}else{
			if(oInput[3].value==oCode.innerHTML){
				oEcho[3].style.cssText='display: block;';
				oP[3].style.background="rgba(0, 165, 57,0.7)";
				oP[3].style.color="#fff";
				oP[3].innerHTML='验证成功';
			}
			else{
				oEcho[3].style.cssText='display: block;';
				oP[3].style.background="rgba(216, 36, 61,0.7)";
				oP[3].style.color="#fff";
				oP[3].innerHTML='验证码错误，请再输入一次';
			}
		}
	}
	
	oInput[4].onblur=function () {
		var reg=/\d{11}/;
		if(oInput[4].value == ""){
			oEcho[4].style.cssText='display: block;';
			oP[4].style.background="rgba(216, 36, 61,0.7)";
			oP[4].style.color="#fff";
			oP[4].innerHTML='不能为空';
		}else{
			if(reg.test(oInput[4].value)){
				oEcho[4].style.cssText='display: block;';
				oP[4].style.background="rgba(0, 165, 57,0.7)";
				oP[4].style.color="#fff";
				oP[4].innerHTML='验证成功';
			}
			else{
				oEcho[4].style.cssText='display: block;';
				oP[4].style.background="rgba(216, 36, 61,0.7)";
				oP[4].style.color="#fff";
				oP[4].innerHTML='格式错误，请再输入一次';
			}
		}
	}
	oCode.onclick=function () {
		str='';
		code();
	}
	
	function code () {
		oCode.innerHTML='';
		for(var i=0;i<=5;i++){
			str+=Math.floor(Math.random()*10);
		}
		return oCode.innerHTML=str;
		
	}
	
	oBtn.onclick=function () {
		if(oP[0].innerHTML=="验证成功" && oP[1].innerHTML=="验证成功"&& oP[2].innerHTML=="验证成功" && oP[3].innerHTML=="验证成功" && oP[4].innerHTML=="验证成功" ){
			alert("注册成功,返回首页！");
			window.location.href="index.html";
		}else{
			alert("请输入完整信息");
		}
	}
})();*/

(function ($) {

    $('input').eq(0).on('blur', function () {
        var reg = /^([\w\-]+)@([\w\-]+).([\w\-]+)$/;
        var email = $('input').eq(0).val();
        if (email == '') {
            $('.echo').eq(0).css({"display": "block"});
            $('.echo>p').eq(0).css({"background": "rgba(216, 36, 61,0.7)", "color": "#fff"}).html("不能为空");
        } else {
            if (reg.test(email)) {
                $.ajax({
                    type: 'post',
                    url: 'http://localhost:8081/api/v1/users/checkEmail',
                    data: {
                        "email": email
                    },
                    success: function (data) {
                        if (data.status == 500) {
                            $('.echo').eq(0).css({display: "block"});
                            $('.echo>p').eq(0).css({background: "rgba(0,165,57,0.7)", color: "#fff"}).html("验证成功");
                        } else if (data.status == 200) {
                            $('.echo').eq(0).css({display: "block"});
                            $('.echo>p').eq(0).css({
                                "background": "rgba(216, 36, 61,0.7)",
                                "color": "#fff"
                            }).html("该用户名已存在");
                        }
                    }
                })
            } else {
                $('.echo').eq(0).css({display: "block"});
                $('.echo>p').eq(0).css({background: "rgba(216, 36, 61,0.7)", color: "#fff"}).html("格式错误，请再输入一次");
            }
        }
    });

    $('input').eq(1).on('blur', function () {
        var reg = /^[\w\-\.]{6,12}$/;
        if ($('input').eq(1).val() == '') {
            $('.echo').eq(1).css({"display": "block"});
            $('.echo>p').eq(1).css({"background": "rgba(216, 36, 61,0.7)", "color": "#fff"}).html("不能为空");
        } else {
            if (reg.test($('input').eq(1).val())) {
                $('.echo').eq(1).css({display: "block"});
                $('.echo>p').eq(1).css({background: "rgba(0, 165, 57,0.7)", color: "#fff"}).html("验证成功");
            } else {
                $('.echo').eq(1).css({display: "block"});
                $('.echo>p').eq(1).css({background: "rgba(216, 36, 61,0.7)", color: "#fff"}).html("格式错误，请再输入一次");
            }
        }
    });

    $('input').eq(2).on('blur', function () {
        if ($('input').eq(2).val() == '') {
            $('.echo').eq(2).css({"display": "block"});
            $('.echo>p').eq(2).css({"background": "rgba(216, 36, 61,0.7)", "color": "#fff"}).html("不能为空");
        } else {
            if ($('input').eq(1).val() == $('input').eq(2).val()) {
                $('.echo').eq(2).css({display: "block"});
                $('.echo>p').eq(2).css({background: "rgba(0, 165, 57,0.7)", color: "#fff"}).html("验证成功");
            } else {
                $('.echo').eq(2).css({display: "block"});
                $('.echo>p').eq(2).css({background: "rgba(216, 36, 61,0.7)", color: "#fff"}).html("密码不一致，请再输入一次");
            }
        }
    });

    $('input').eq(3).on('blur', function () {
        if ($('input').eq(3).val() == '') {
            $('.echo').eq(3).css({"display": "block"});
            $('.echo>p').eq(3).css({"background": "rgba(216, 36, 61,0.7)", "color": "#fff"}).html("不能为空");
        } else {
            if ($('input').eq(3).val() == $('.code').html()) {
                $('.echo').eq(3).css({display: "block"});
                $('.echo>p').eq(3).css({background: "rgba(0, 165, 57,0.7)", color: "#fff"}).html("验证成功");
            } else {
                $('.echo').eq(3).css({display: "block"});
                $('.echo>p').eq(3).css({background: "rgba(216, 36, 61,0.7)", color: "#fff"}).html("验证码错误，请再试一次");
            }
        }
    });

    $('input').eq(4).on('blur', function () {
        var reg = /\d{11}/;
        if ($('input').eq(4).val() == '') {
            $('.echo').eq(4).css({"display": "block"});
            $('.echo>p').eq(4).css({"background": "rgba(216, 36, 61,0.7)", "color": "#fff"}).html("不能为空");
        } else {
            if (reg.test($('input').eq(4).val())) {
                $('.echo').eq(4).css({display: "block"});
                $('.echo>p').eq(4).css({background: "rgba(0, 165, 57,0.7)", color: "#fff"}).html("验证成功");
            } else {
                $('.echo').eq(4).css({display: "block"});
                $('.echo>p').eq(4).css({background: "rgba(216, 36, 61,0.7)", color: "#fff"}).html("格式错误，请再输入一次");
            }
        }
    });
    var code_str = '';
    $('.code').on('click', function () {
        $('.code').html('');
        code();
    });

    function code() {
        code_str = ''
        for (var i = 0; i <= 5; i++) {
            code_str += Math.floor(Math.random() * 10);
        }
        return $('.code').html(code_str);
    };

    $('.b1_w>button').on('click', function () {
        var flg = false;
        if ($('.echo>p').eq(0).html() == "验证成功" && $('.echo>p').eq(1).html() == "验证成功" && $('.echo>p').eq(2).html() == "验证成功" && $('.echo>p').eq(3).html() == "验证成功" && $('.echo>p').eq(4).html() == "验证成功") {
            flg = true;
        } else {
            flg = false;
            alert("请输入完整信息");
        }
    });
}(jQuery));

