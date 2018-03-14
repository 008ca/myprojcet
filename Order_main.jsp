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
	<script LANGUAGE=javascript> 
      function openwin() { 
        window.open (reg,jsp, newwindow, height=100, width=400, toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, status=no) 
         //写成一行 
       } 
         //--> 
    </script> 
  </head>
  
  <body>
    <main>
    <div class="logo">
      <img src="<%=basePath%>images/p.png"/>
    </div>
   <div class="acount">
   	<c:choose>
   		<c:when test="${session.customer.name==null}">
   		    <img src="<%=basePath%>images/moren。jpg"/>
			<a href="login.jsp">登陆</a>   			
   		</c:when>
   		<c:otherwise>
   		   <c:choose>
   		      <c:when test="${session.customer.if_==1}">
   		           	<img src="<%=basePath%>images/${session.customer.customerphoto}"/>
			        <h3><c:out value="${session.customer.name}"></c:out>欢迎您</h3>
		            <s:form action="main/main_re" method="post">
			        <s:submit value="注销"></s:submit>
			        </s:form>
		        	<ul><a href="message/message_queryMessage?keyWords=">我的工作</a></ul>
			        <ul><a href="customerorder/customerorder_editOrder?key=${session.customer.customerid}">我的预约</a></ul>
	         		<ul><a href="Customer_message.jsp">我的信息</a></ul>
   		      </c:when>
   		      <c:otherwise>
   		           <ul><a href="message/message_queryMessage?keyWords=">工作</a></ul>
   		           <ul><a href="message/message_fwork?message.fid=${session.customer.customerid}">我发布的工作</a></ul>
   		      </c:otherwise>
   		   </c:choose>
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
    <c:choose>
       <c:when test="${customerorderList.size()==0}">
          <h1>没有信息</h1>
       </c:when>
       <c:otherwise>
          <c:forEach var="customerorder" items="${customerorderList}" varStatus="status">
            <h3>订单号:<c:out value="${customerorder.orderid}"></c:out></h3>
            <h3>时间：<c:out value="${customerorder.time}"></c:out></h3>
            <h3>详情：<c:out value="${customerorder.retime}"></c:out></h3>
            <h3><a href="customerorder/customerorder_deleteyourorder?key=${customerorder.orderid}">取消订单</a></h3>
            <h3><a href=openwin()>同意申请</a></h3>
          </c:forEach>
          
       </c:otherwise>
    </c:choose>
	</main2>
 </body>
</html>
