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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css"/>
  </head>
  
  <body>
  <main>
   <div class="logo">
      <img src="<%=basePath%>images/p.png"/>
   </div>
   <div class="acount">
   	<c:choose>
   		<c:when test="${session.customer.name==null}">
			<a href="login.jsp">登陆</a>   			
   		</c:when>
   		<c:otherwise>
   			<img src="<%=basePath%>images/${customer.customerphoto}"/>
			<h3><c:out value="${customer.name}"></c:out>欢迎您</h3>
			<s:form action="main/main_re" method="post">
			   <s:submit value="注销"></s:submit>
			</s:form>
			<a href="message/message_queryMessage?keyWords=">我的工作</a><br>
			<a href="customerorder/customerorder_editOrder?key=${session.customer.customerid}">我的预约</a><br>
			<a href="Customer_message.jsp">我的信息</a>			
   		</c:otherwise>
   	</c:choose>
   </div>
   <div class="search">
          <s:form action="message/message_queryMessage" method="post">
          <input type="text" name="keyWords" placeholder="请输入关键词">
          <s:submit value="查 询" ></s:submit>
       </s:form>
   </div>
 </main>
 <main2>
 <p>我的信息:</p>
                <img src="<%=basePath%>images/${customer.customerphoto}"/><br>
			    <h3>身份证号：<c:out value="${customer.identification}"></c:out></h3>
			    <h3>用户名：<c:out value="${customer.name}"></c:out></h3>
	            <h3>地址：<c:out value="${customer.customeradress}"></c:out></h3>
	            <h3>联系方式：<c:out value="${customer.customercontact}"></c:out></h3>
	            <h3>用户编号<c:out value="${customer.customerid}"></c:out></h3>
	            <h3><a href="customer/customer_showEdit?customer.customerid=${customer.customerid}">编辑</a></h3>
 </main2>
 
 </body>