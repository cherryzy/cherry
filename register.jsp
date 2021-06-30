<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>欢迎注册</title>
        <link rel="stylesheet" href="./css/register.css">
    </head>

    <body>
    	<%
		String mes = (String)request.getAttribute("mes");
		if("registerfalse".equals(mes)){
			%>
			<script type="text/javascript">
				alert("注册失败，用户名重复！");
			</script>
			<%
		}
		request.removeAttribute("mes");
		
	%>
        <div class="box">
            <h2 class="title"> 注册</h2>
            <form action="UserRegisterServlet" class="form" method="post">
                <input class="userName" type="text" name="userName" placeholder="userName">
                <input type="password" class="password" name="password" placeholder="password">
                <input type="text" class="birthday" name="birthday" placeholder="birthday">
                <input type="text" class="phoneNumber" name="phoneNumber" placeholder="phoneNumber">
                <input type="text" class="adress" name="adress" placeholder="adress">
                <div class="sexradio">
                    <label for="sexboy" class="labelboy">男</label><input id="sexboy" type="radio" class="sexboy" name="sex" placeholder="sex" value="boy">
                    <label for="sexgirl" class="labelgirl">女 </label><input id="sexgirl" type="radio" class="sexgirl" name="sex" placeholder="sex" value="girl">
                </div>
                <input type="submit" class="register" name="login" value="注册" style="display:block">
            </form>
        </div>
    </body>

    </html>