<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
  <style>
  body { 
	width: 100%;
	height:100%;88
	font-family: 'Open Sans', sans-serif;
	background: #092756;
	background: -moz-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%),-moz-linear-gradient(top,  rgba(57,173,219,.25) 0%, rgba(42,60,87,.4) 100%), -moz-linear-gradient(-45deg,  #670d10 0%, #092756 100%);
	background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -webkit-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -webkit-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
	background: -o-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -o-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -o-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
	background: -ms-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -ms-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -ms-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
	background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), linear-gradient(to bottom,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), linear-gradient(135deg,  #670d10 0%,#092756 100%);
}
</style>
  <body>
 <header>
	
<nav id="topNav" class="navbar navbar-default main-menu">
<div class="container">
	<button class="navbar-toggler hidden-md-up pull-right" type="button" data-toggle="collapse" data-target="#collapsingNavbar">
	</button> 
	 <!--在这里-->
	<div class="collapse navbar-toggleable-sm" id="collapsingNavbar">
		<ul class="nav navbar-nav">
			 <li class="active">
						<a href="#slider">HOME</a>
					</li>
					<li>
						<a href="message/message_queryMessage?keyWords=">My Works</a>
					</li>
					<li>
						<a href="customerorder/customerorder_editOrder?key=${session.customer.customerid}">My Orders</a>
					</li>
					 
					<li>
						<a href="Customer_message.jsp">My Messages</a>
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
 <main2>    
 
  <c:forEach var="message" items="${messageList}" varStatus="status">
  <div class="company">
   <ul>
     <li><img src="<%=basePath%>images/${message.companyphoto}"/><br></li><br>
     <li><h3>职位:<c:out value="${message.jobname}"></c:out></h3></li><br>
     <li><h3>招聘公司:<c:out value="${message.companyname}"></c:out></h3></li><br>
     <li><a href="message/message_getComMessage?message.jobid=${message.jobid}" >详情</a></li>
     <c:choose>
       <c:when test="${customer.customerid==1}">
          <li><a href="message/message_deleteComMessage?message.jobid=${message.jobid}">删除</a></li>
          <li><a href="message/message_getComMessage2?message.jobid=${message.jobid}">修改</a></li>
       </c:when>
     </c:choose>
     </ul>
</div>
  </c:forEach>
 </main2>
 <main3>
 <div class="jiewei">
  <c:choose>
       <c:when test="${customer.customerid==1}">
        <img src="<%=basePath%>images/xiaoshoudaib.png"/> <br>
          <a href="addMessage.jsp">添加</a>
       </c:when>
     </c:choose> 
     </div>
 </main3>
  
 </body>
</html>
