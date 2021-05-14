<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>登陆页面</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<link rel="stylesheet" type="text/css" href="css/reset.css">
		<script type="text/javascript">
			function cleanLoginmsg(){
			var spanEle=document.getElementById("loginspan");
			spanEle.innerHTML="";
		}
	</script>
	
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

		<!-- 2.登录区域header start -->
		<div class="login-background" style="height: 700px">
			<div class="reg-content-box"style="width: 1000px;min-height: 400px">
				<div class="form-login-box">
					<div class="login-regi-title">
						<h2 class="regi-user">用户登录</h2>
					</div>
					<form action="login" method="get">
						<div class="form-content">
							<ul class="resiter-user">
								<li>
									<input type="text" name="uname" placeholder="请输入用户姓名" onfocus="cleanLoginmsg()">
								</li>
								<li>
								<span id="loginspan">${msg}</span><br/>
								</li>
								<li>
									<input type="password" name="pwd" placeholder="请输入用户密码" >
								</li>
								<li>
								<div class="jvli"></div>
								</li>
								<li>
									<input type="submit" value="登&nbsp&nbsp录" class="login-button">
								</li>
							</ul>
						</div>
						<div class="reading-protocol">
							<label>
								<input type="checkbox" checked=""/>
								记住账号
								<span class="qiu">
									<a href="regist.jsp" >去注册</a>
									<a href="" > 忘记密码</a>
								</span>
								
							</label>
						</div>
					</form>
				</div>
			</div>
			
		</div>
		<!-- 2.登录区域header end -->

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
			</footer>
		<!-- 3.商家信息header end -->
	</body>
</html>