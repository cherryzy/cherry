<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>欢迎登录（ServletTest01）</title>
    <link rel="stylesheet" href="./css/login.css">
</head>
<body>
	<%
		String mes = (String)request.getAttribute("mes");
		if("registersuccess".equals(mes)){
			%>
			<script type="text/javascript">
				alert("注册成功，欢迎登录！");
			</script>
			<%
		}
		request.removeAttribute("mes");
		
	%>
    <div class="box">
        <h2 class="title">皇帝成长计划游戏管理系统</h2>
        <form action="UserServlet" class="form" method="post">
            <div class="user">
                <i class="ico-user"></i>
                <input class="userName" type="text" name="userName" placeholder="请输入用户名">
            </div>
            <div class="pwd">
                <i class="ico-pwd"></i>
                <input type="password" class="password" name="password" placeholder="请输入密码">
            </div>
            <input type="submit" class="login" name="login" value="登基">
           
        </form>
        <a href="./register.jsp"> <button class="register">注册</button></a>
    </div>
</body>
</html>