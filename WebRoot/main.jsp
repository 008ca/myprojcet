<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content=""> 
<meta name="Author" content=""> 
<title>Home</title>
<link rel="stylesheet" href="<%=basePath%>css/normalize.css">
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
<link rel="stylesheet" href="<%=basePath%>css/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet" href="<%=basePath%>elegant_font/style.css" />
<link rel="stylesheet" href="<%=basePath%>css/magnific-popup.css">
<link rel="stylesheet" href="<%=basePath%>css/slider-pro.css">
<link rel="stylesheet" href="<%=basePath%>css/owl.carousel.css">
<link rel="stylesheet" href="<%=basePath%>css/owl.theme.css">
<link rel="stylesheet" href="<%=basePath%>css/owl.transitions.css">
<link rel="stylesheet" href="<%=basePath%>css/animate.css">
<link rel="stylesheet" href="<%=basePath%>elegant_font/style.css"> 
<link rel="stylesheet" href="<%=basePath%>css/style.css"> 
</head>

<body>
<!-- Header End -->
<header>
	
<nav id="topNav" class="navbar navbar-default main-menu">
<div class="container">
	<button class="navbar-toggler hidden-md-up pull-right" type="button" data-toggle="collapse" data-target="#collapsingNavbar">
		?
	</button> 
	 <!--在这里-->
	<div class="collapse navbar-toggleable-sm" id="collapsingNavbar">
		<ul class="nav navbar-nav">
			 <li class="active">
						<a href="#slider">首页</a>
					</li>
					<li>
						<a href="message/message_queryMessage?keyWords="></a>
					</li>
					<li>
						<a href="customerorder/customerorder_editOrder?key=${session.customer.customerid}">申请的工作</a>
					</li>
					 
					<li>
						<a href="Customer_message.jsp">我的信息</a>
					</li>
				   <li>
					<c:choose>
   		               <c:when test="${session.customer.name==null}">
			               <a href="login.jsp">登陆</a>   			
   		               </c:when>
   		               <c:otherwise>
			               <c:out value="${session.customer.name}"></c:out>欢迎您
			               <a href="main/main_re">注销</a>
					  </c:otherwise>
   					</c:choose>
   					</li>
					<input type="text" name="keyWord" placeholder="请输入关键词">
					<a href="message/message_queryMessage?keyWords=${keyWord}">查询</a>          
		</ul> 
	</div>
</div>
</nav>

	
</header>
<!-- Header End -->


<section class="slider-pro slider" id="slider">
	<div class="sp-slides">

		<!-- Slides -->
		<div class="sp-slide main-slides">
			<div class="img-overlay"></div>

			<img class="sp-image" src="<%=basePath%>images/slider/slider-img-1.jpg" alt="Slider 1"/>

			<h1 class="sp-layer slider-text-big"
			data-position="center" data-show-transition="left" data-hide-transition="right" data-show-delay="1500" data-hide-delay="200">
			<span class="highlight-texts">Consultancy</span>
			</h1>

			<p class="sp-layer"
			data-position="center" data-vertical="15%" data-show-delay="2000" data-hide-delay="200" data-show-transition="left" data-hide-transition="right">
				best business
			</p>
		</div>
		<!-- Slides End -->

		<!-- Slides -->
		<div class="sp-slide main-slides">
		<div class="img-overlay"></div>
			<img class="sp-image" src="<%=basePath%>images/slider/slider-img-2.jpg" alt="Slider 2"/>

			<h1 class="sp-layer slider-text-big"
			data-position="center" data-show-transition="left" data-hide-transition="right" data-show-delay="1500" data-hide-delay="200">
			<span class="highlight-texts">Executive</span>
			</h1>

			<p class="sp-layer"
			data-position="center" data-vertical="15%" data-show-delay="2000" data-hide-delay="200" data-show-transition="left" data-hide-transition="right">
				best business
			</p>
		</div>
		<!-- Slides End -->

		<!-- Slides -->
		<div class="sp-slide main-slides">
			<div class="img-overlay"></div>

			<img class="sp-image" src="<%=basePath%>images/slider/slider-img-3.jpg" alt="Slider 3"/>

			<h1 class="sp-layer slider-text-big"
			data-position="center" data-show-transition="left" data-hide-transition="right" data-show-delay="1500" data-hide-delay="200">
			<span class="highlight-texts">Solution</span>
			</h1>

			<p class="sp-layer"
			data-position="center" data-vertical="15%" data-show-delay="2000" data-hide-delay="200" data-show-transition="left" data-hide-transition="right">
				best business
			</p>
		</div>
		<!-- Slides End -->

	</div>
</section>
<!-- Main Slider End -->  
	
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<script src="<%=basePath%>js/modernizr.min.js"></script>
<script src="<%=basePath%>js/jquery.easing.1.3.js"></script>
<script src="<%=basePath%>js/jquery.scrollUp.min.js"></script>
<script src="<%=basePath%>js/jquery.easypiechart.js"></script>
<script src="<%=basePath%>js/isotope.pkgd.min.js"></script>
<script src="<%=basePath%>js/jquery.fitvids.js"></script>
<script src="<%=basePath%>js/jquery.stellar.min.js"></script>
<script src="<%=basePath%>js/jquery.waypoints.min.js"></script>
<script src="<%=basePath%>js/wow.min.js"></script>
<script src="<%=basePath%>js/jquery.nav.js"></script>
<script src="<%=basePath%>js/imagesloaded.pkgd.min.js"></script>
<script src="<%=basePath%>js/smooth-scroll.min.js"></script>
<script src="<%=basePath%>js/jquery.magnific-popup.min.js"></script>
<script src="<%=basePath%>js/jquery.sliderPro.min.js"></script>
<script src="<%=basePath%>js/owl.carousel.min.js"></script>
<script src="<%=basePath%>contact/jqBootstrapValidation.js"></script>
<script src="<%=basePath%>contact/contact_me.js"></script>
<script src="<%=basePath%>js/custom.js"></script>

</body>
</html>