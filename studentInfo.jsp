<%@page import="cn.student.entity.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/info.css">
</head>
<body>
		<%
		Student student = (Student)request.getAttribute("student");	
		%>
		
		<div class = "box">
			<h2>修改皇帝信息</h2>
			<form action="updateStudentServlet" method="post">
			<div class = "snoBox">
				<span>账号:</span><input type="text" name = "sno" value="<%=student.getSno() %>" readonly="true"/>
			</div>
			<div class = "snameBox">
				<span>姓名:</span><input type="text" name = "sname" value="<%=student.getName() %>"/>
			</div>
			<div class = "sageBox">
				<span>年号:</span><input type="text" name = "sage"value="<%=student.getAge() %>"/>
			</div>
			<div class = "saddressBox">
				<span>等级:</span><input type="text" name = "sadress"value="<%=student.getAdress() %>"/>
			</div>
			<div class = "buttonBox">
				<input type="submit" value="确认修改">	<button><a href="getAllStudentServlet">返回</a></button>	
			</div>
			</form>
		</div>
</body>
</html>