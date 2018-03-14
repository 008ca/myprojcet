<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/register.css" />
  </head>
   <body>
		<div class="main">
			<h1>注册界面</h1>
				<div class="part1">
				<s:form action="customer/customer_reg" method="post" class="span">
							<label> 身份证号 :</label><s:textfield name="customer.identification" label="身份证号" placeholder="Your Identification"></s:textfield><br>
							<label> 姓名 :</label><s:textfield name="customer.name" label="姓名" placeholder="Your name"></s:textfield><br>						
							<label> 地址 :</label><s:textfield name="customer.customeradress" label="地址" placeholder="Your Address"></s:textfield><br>
							<label> 联系方式 :</label><s:textfield name="customer.customercontact" label="联系方式" placeholder="Your Contact" ></s:textfield><br>
							<label> 密码 :</label><s:textfield name="customer.password" label="密码" placeholder="Your Password"></s:textfield>
							<label> 确认密码 :</label><s:textfield name="confirmpass" label="密码" placeholder="Your Password"></s:textfield>
						<br><br>
						<s:submit value="确定" cssClass="btn" >
						</s:submit>
				</s:form>
						</div>
			    <div class="bottom">
					<p>© 2017 Event Registration Form. All rights reserved </p>
						</div>
						</div>
</body>
    <br>
</html>