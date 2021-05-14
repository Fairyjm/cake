<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>注册页面</title>
		<style>
			span{
				color:red;
			}
	
	</style>
	<script type="text/javascript" src="Script/jquery-1.7.2.min.js"></script>
	<script type="text/javascript">
		function getXhr(){
			var xhr=new XMLHttpRequest();
			//alert(xhr);
			return xhr;
		}
		$(function(){
			var userNameFlag=false;
			var passWordFlag=false;
			
			$("#username").blur(function(){
				var username=$("#username").val();
				//发送异步请求
				$.ajax({
					url:"checkUsername",
					type:"get",
					data:"uname="+username,
					success:function(data){//将返回数据写入页面
						if(data == 0){
							$("#registspan").html("用户名可以使用");
							userNameFlag=true;
						}else{
							$("#registspan").html("用户已经注册");
						}	
					}
				});
			}); 
			//密码是否一致
			$("#repassword").blur(function(){
				var password=$("#password").val();
				var repassword=$("#repassword").val();
				
				if(password!=null&&repassword!=null&&password==repassword){
					//密码一致
					$("#passspan").html("密码一致");
					passWordFlag=true;
				}else{
					//密码不一致
					$("#passspan").html("密码不一致");
				}
				
			});
			//注册验证功能
			$("form").submit(function(){
			
				return userNameFlag && passWordFlag;
				
			});		
		});		
	</script> 
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<link rel="stylesheet" type="text/css" href="css/reset.css">
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
		<!-- 2.注册区域header start -->
		<div class="login-background" style="height: 700px">
			<div class="reg-content-box"style="width: 1000px;min-height: 400px">
				<div class="form-login-box">
					<div class="login-regi-title">
						<h2 class="regi-user">用户注册</h2>
					</div>
					<form action="regist"  method="get">
						<div class="form-content">
							<ul class="resiter-user">
								<li>
									<input type="text" placeholder="请输入用户姓名" id="username"  name="uname">
								</li>
								<li>
								<span id="registspan">${registmsg}</span><br/>
								</li>
								<li>
									<input type="password" placeholder="请输入用户密码" id="password" name="pwd">
								</li>
								<li>
									<input type="password" placeholder="请确认用户密码" id="repassword" name="repwd">	
								</li>
								<li>
								<div class="jvli"></div>
								<span id="passspan"></span>	<br/>
								</li>
								<li>
									<input type="submit" value="注&nbsp&nbsp册" class="login-button">
								</li>
							</ul>
						</div>
						<div class="reading-protocol">
							<label>
								<input type="checkbox" checked=""/>
								已阅读并同意
								<a href="">《21客会员协议》 </a>和<a href=""> 《隐私保护政策》</a>
							</label>
						</div>
					</form>
				</div>
			</div>
			
		</div>
		<!-- 2.注册区域header end -->

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