<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>首页页面</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<link rel="stylesheet" type="text/css" href="css/reset.css">
		<script type="text/javascript">
			//将起始图片的下标设置为0
			var index=0;
			//改变图片的出现方式
			function ChangeImg(){
				index++;
				var a=document.getElementsByClassName("img-slider");
				if (index>=a.length) index=0;
				for(var i=0;i<a.length;i++){
					a[i].style.display="none";
				}
					a[index].style.display="block";
			}
			//设置定时器，调用函数
			setInterval(ChangeImg,2000);
		</script>
		<style type="text/css">
			.img1{
				/*将图片以块级元素放在首页*/
				display: block;
			}
			.img2{
				/*将img元素隐藏*/
				display: none;
			}
			.img3{
				display: none;
			}
			.img4{
				display: none;
			}
		</style>
	</head>
	<body>
		<!-- 1.导航栏header start -->
		<header>
			<div class="inner"><!-- 导航栏所有内容 -->
				<div class="logo">
					<img src="img/logo.png" alt="21cake官网" 
					height="44px" width="120px">
				</div>
				<ul class="nav">
					<li><a href="">首页</a></li>
					<li><a href="">蛋糕</a></li>
					<li><a href="">面包</a></li>
					<li><a href="">冰淇淋</a></li>
					<li><a href="">咖啡下午茶</a></li>
					<li><a href="">全国送</a></li>
					<li><a href="">企业专区</a></li>
				</ul>
				<ul class="join">
					<li><a href="">App下载</a></li>
					<li><a href="">北京</a><i class="city"></i></li>
					<li><a href="">消息</a></li>
					<li><a href="">登录/注册</a></li>
					<li class="cart"><i></i></li>
				</ul>
			</div>
		</header>
		<!-- 1.导航栏header end -->

		<!-- 2.网页主区域indxt start -->
		<!-- 轮播图部分 -->
		<div class="slider" align="center">
			<img class="img-slider img1" src="img/menu-top-1.jpg" alt="1">
			<img class="img-slider img2" src="img/menu-top-2.jpg" alt="2"> 
			<img class="img-slider img3" src="img/menu-top-3.jpg" alt="3">	
			<img class="img-slider img4" src="img/menu-top-4.jpg" alt="4">
			

		</div>
		<a class="pic1 fl" href="">
		    		<button class="lb"></button>
		    		<button class="rb"></button>
		    	
		    		<div class="circle">
		    		
		    			<span class="awake"></span><span></span><span></span><span></span><span></span>
		    		</div>
	    		</a>
		<!-- 图片部分 -->
		<div class="qyg" align="center">
			<a href="">
				<img class="qyg1" src="img/menu-1.jpg">
				<img class="qyg2" src="img/menu-2.jpg">
				<img class="qyg3" src="img/menu-3.jpg">
				<img class="qyg4" src="img/menu-4.jpg">
				<img class="qyg5" src="img/menu-5.png">
			</a>
		</div>
		<!-- 新品 -->
		<div>
			<a class="xinpin" href="">新品</a>
			<span>/</span>
			<a class="zhuanqu" href="">专区</a>
		</div>
		<div class="top1" align="center">
			<img src="img/menu-top-1.jpg">
		</div>
		<div class="xinpinqu" align="center">
			<img class="xinpinqu1" src="img/xinpin-cake-1.png">
			<img class="xinpinqu2" src="img/xinpin-cake-2.png">
			<img class="xinpinqu3" src="img/xinpin-cake-3.png">
			<img class="xinpinqu4" src="img/xinpin-cake-4.png">
		</div>
		<!-- 生日 -->
		<div>
			<a class="xinpin" href="">生日</a>
			<span>/</span>
			<a class="zhuanqu" href="">专区</a>
		</div>
		<div class="top1" align="center">
			<img src="img/menu-top-2.jpg">
		</div>
		<div class="xinpinqu" align="center">
			<img class="xinpinqu1" src="img/shengri-cake-1.png">
			<img class="xinpinqu2" src="img/shengri-cake-2.png">
			<img class="xinpinqu3" src="img/shengri-cake-3.png">
			<img class="xinpinqu4" src="img/shengri-cake-4.png">
		</div>
		<!-- 儿童 -->
		<div>
			<a class="xinpin" href="">儿童</a>
			<span>/</span>
			<a class="zhuanqu" href="">专区</a>
		</div>
		<div class="top1" align="center">
			<img src="img/menu-top-3.jpg">
		</div>
		<div class="xinpinqu" align="center">
			<img class="xinpinqu1" src="img/child-cake-1.png">
			<img class="xinpinqu2" src="img/child-cake-2.png">
			<img class="xinpinqu3" src="img/child-cake-3.png">
			<img class="xinpinqu4" src="img/child-cake-4.png">
		</div>
		<!-- 聚会 -->
		<div>
			<a class="xinpin" href="">聚会</a>
			<span>/</span>
			<a class="zhuanqu" href="">专区</a>
		</div>
		<div class="top1" align="center">
			<img src="img/menu-top-4.jpg">
		</div>
		<div class="xinpinqu" align="center">
			<img class="xinpinqu1" src="img/party-cake-1.png">
			<img class="xinpinqu2" src="img/party-cake-2.png">
			<img class="xinpinqu3" src="img/party-cake-3.png">
			<img class="xinpinqu4" src="img/party-cake-4.png">
		</div>
		<!-- 2.网页主区域indxt end -->

		<!-- 3.商家信息header start -->
		<footer>
			<img class="footer-logo" src="img/footer-logo.png" alt="21Cake"
			height="36px" width="96px">
			<div class="footer-nav">
				<a href="">联系我们</a>
				<span>|</span>
				<a href="">订购帮助</a>
				<span>|</span>
				<a href="">企业合作</a>
				<span>|</span>
				<a href="">生产经营资质</a>
				<span>|</span>
				<a href="">公告专区</a>
			</div>
			<div class="footer-icon">
				<a class="footer-weixin"href="">
					<img src="img/footericon-02.png" alt="">
				</a>
			</div>
			<div class="footer-text">
				<span>订购专线:xxxx-xxxxxxx(服务时间 8:00-22:00),
				团购热线:xxx xxxx xxxx</span>
				<span>客服电话:xxxx-xxxxxxx</span>
				<span>请提前3小时预定，当日20点以后的订单,于次日8点
				后开始审核</span>
				<span>当日蛋糕配送截至下单时间20:00</span>
				<span>店铺地址:xxxxxxxxxxxxxxxx</span>
			</div>
			<div class="footer-copy">
				<span>Copyright&copy;信德利蛋糕官网商城 2007-2018,
				版权所有 京ICP备14006254号-1</span>
			</div>
			<div class="footer-copy"></div>
		</footer>
		<!-- 3.商家信息header end -->
	</body>
</html>