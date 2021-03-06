<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>首页</title>
	<link rel="stylesheet" type="text/css" href="${rootPath }/css/css.css">
	
	<script type="text/javascript" src='${rootPath }/js/jquery-1.7.2.min.js'></script>
	<script type="text/javascript">
	$(function(){
		$('.nav_mini ul li').hover(function(){
			$(this).find('.two_nav').show(100);
		},function(){
			$(this).find('.two_nav').hide(100);
		})
	})
	</script>
</head>
<body>
	<div class="top">
		<div class="top_text">
			<c:if test="${user==null }">
				<a href="${rootPath }/page/login.jsp">用户登录</a>
				<a href="${rootPath }/page/signup.jsp">用户注册</a>
				<a href="">供应商登录</a>
				<a href="">供应商注册</a>
			</c:if>
			<c:if test="${user!=null }">
				 <a href="${rootPath }/userController/logout">欢迎您，${user.name }  退出登录</a>
			</c:if>
		</div>
	</div>
	<div class="top_img">
		<img src="${rootPath }/images/top_img.jpg" alt="">
	</div>
	<div class="search">
		<div class="logo"><img src="${rootPath }/images/logo.jpg" alt=""></div>
		<div class="search_on">
			<div class="se">
				<input type="text" name="search" class="lf">
				<input type="submit" class="clik" value="搜索">
			</div>
			<div class="se">
				<a href="">取暖神奇</a>
				<a href="">1元秒杀</a>
				<a href="">吹风机</a>
				<a href="">玉兰油</a>
			</div>
		</div>
		<div class="card">
			<a href="">购物车<div class="num">0</div></a>
			
			<!--购物车商品-->
			<div class="cart_pro">
				<h6>最新加入的商品</h6>
				<div class="one">
					<img src="${rootPath }/images/lec1.png"/>
					<span class="one_name">
						商品名称商品名称商品名称商品名称
					</span>
					<span class="one_prece">
						<b>￥20000</b><br />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;删除
					</span>
				</div>
				
				<div class="one border">
					<img src="${rootPath }/images/lec1.png"/>
					<span class="one_name">
						商品名称商品名称商品名称商品名称
					</span>
					<span class="one_prece">
						<b>￥20000</b><br />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;删除
					</span>
				</div>
				<div class="one border">
					<img src="${rootPath }/images/lec1.png"/>
					<span class="one_name">
						商品名称商品名称商品名称商品名称
					</span>
					<span class="one_prece">
						<b>￥20000</b><br />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;删除
					</span>
				</div>
				
				
				<div class="gobottom">
					共<span>2</span>件商品&nbsp;&nbsp;&nbsp;&nbsp;
					共计￥<span>20000</span>
					<button class="goprice">去购物车</button>
				</div>
				
				
			</div>
		
		</div>
		
		
	</div>
	<div class="menu">
		<div class="nav">
			<div class="navs">
				<div class="left_nav">
					全部商品分类
					<div class="nav_mini">
						<ul>
							<li>
								<a href="">家用电器</a>
								<div class="two_nav">
									<a href="">11111</a>
									<a href="">11111</a>
									<a href="">11111</a>
									<a href="">11111</a>
									<a href="">11111</a>
									<a href="">11111</a>
									<a href="">11111</a>
									<a href="">11111</a>
									<a href="">11111</a>
									<a href="">11111</a>
									<a href="">11111</a>
								</div>
							</li>
							<li><a href="">手机、数码、通信</a></li>
							<li><a href="">电脑、办公</a></li>
							<li><a href="">家具、家居、家装</a></li>
							<li><a href="">男装、女装、内衣</a></li>
							<li><a href="">个户化妆</a></li>
							<li><a href="">鞋靴</a></li>
							<li><a href="">户外运动</a></li>
							<li><a href="">汽车</a></li>
							<li><a href="">母婴</a></li>
							<li><a href="">食品</a></li>
							<li><a href="">营养保健</a></li>
							<li><a href="">图书</a></li>
							<li><a href="">彩票</a></li>
							<li><a href="">理财</a></li>
						</ul>
					</div>
				</div>
				<ul>
					<li><a href="">服装城</a></li>
					<li><a href="">美妆馆</a></li>
					<li><a href="">超市</a></li>
					<li><a href="">全球购</a></li>
					<li><a href="">闪购</a></li>
					<li><a href="">团购</a></li>
					<li><a href="">拍卖</a></li>
					<li><a href="">金融</a></li>
					<li><a href="">智能</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="banner">
		<div class="ban">
			<img src="${rootPath }/images/banner.jpg" width="980" height="380" alt="">
		</div>
	</div>
	
</body>
</html>