<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加学生</title>
<link rel="stylesheet" href="./css/info.css">
</head>
<body>
	<%String mes = (String)request.getAttribute("mes");
		if("false".equals(mes)){
			
			%>
			<script type="text/javascript">
				alert("<%=mes %>");
			</script>
			<%
		}request.removeAttribute("mes");
	%>
		<div class="box">
			<h2>新增皇帝</h2>
				<form action = "AddStudentServlet" method="post">
			<div class = "snoBox">
				<span>账号:</span><input type="text" name = "sno"/>
			</div>
			<div class = "snameBox">
				<span>姓名:</span><input type="text" name = "sname"/>
			</div>
			<div class = "sageBox">
				<span>年号:</span><input type="text" name = "sage"/>
			</div>
			<div class = "saddressBox">
				<span>等级:</span><input type="text" name = "sadress"/>
			</div>
			<div class="buttonBox">
					<input type = "submit" value = "添加">
					<button><a href="getAllStudentServlet">返回</a></button>	
			</div>
	</form>
		</div>
</body>
</html>