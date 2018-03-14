<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
 <html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>文件上传</title>
  </head>
  
  <body>
    <form action="${pageContext.request.contextPath}/upload" enctype="multipart/form-data" method="post">
                            上传用户：<input type="text" name="username" value="${session.customer.customerid}"><br/>
                            上传文件1：<input type="file" name="file1"><br/>
                            上传文件2：<input type="file" name="file2"><br/>
      <input type="submit" value="提交">
    </form>
  </body>
</html>
