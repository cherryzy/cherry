<%@page import="cn.student.entity.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生信息首页</title>
<link rel="stylesheet" href="./css/index.css">
</head>
<body>

	<%
		String mes = (String)request.getAttribute("mes");
		if("add".equals(mes)){
			%>
			<script type="text/javascript">
				alert("添加成功");
			</script>
			<%
		}else if("delete".equals(mes)){
			%>
			<script type="text/javascript">
				alert("删除成功");
			</script>
			<%
		}else if("update".equals(mes)){
			%>
			<script type="text/javascript">
				alert("修改成功");
			</script>
			<%
		}else if("null".equals(mes)){
			%>
			<script type="text/javascript">
				alert("没有这个学生");
			</script>
			<%
		}
		request.removeAttribute("mes");
		
	%>
	
		<div class="container">
		<div class="box">
			<div class="searchbox">
				<form action="getStudnetBySnoServlet" method="post">
					<input class="searchinput" type = "text" name = "sno" placeholder ="请输入账号查询皇帝信息">
					<input class ="searchbutton" type = "submit" value = "查询">
				</form>
			</div>
		<div class="studentsBox">
			<table class = "studentstable">
				<tr>
					<th>账号</th>
					<th>姓名</th>
					<th>年号</th>
					<th>等级</th>
					<th>操作</th>
				</tr>
				
				<%
				List<Student> students = (List<Student>)request.getAttribute("students");
				request.removeAttribute("mes");
				for(Student student:students){
				%>
				<tr>
					<td><a href="getStudnetBySnoServlet?sno=<%=student.getSno()%>"><%=student.getSno() %></a></td>
					<td><%=student.getName()%></td>
					<td><%=student.getAge()%></td>
					<td><%=student.getAdress() %></td>
					<th><a href = "deleteStudentServlet?sno=<%=student.getSno()%>">删除</a></th>
				</tr>
				<% 
				}
				%>			
			</table>
		</div>
			<button class="addbutton"><a href = "AddStudent.jsp">增加</a></button>
		</div>
	</div>
</body>
</html>