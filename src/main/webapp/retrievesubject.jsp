<%@page import="com.academy.dao.SubjectDAO"%>
<%@page import="com.academy.pojo.*" %>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="insertinterfacesubject.jsp">
	<input type="submit" value="Add New Subject">
	</form>
<h1>List of Subjects</h1>
	<%
		SubjectDAO dao=new SubjectDAO();
		List<Subject> list=dao.getallsubjects();
	%>
	<table border="1"> 
	<tr><th>Id</th><th>Subject Name</th><th colspan="2">Action</th></tr>
	<%for(Subject ss:list){ %>
		<tr><td><%=ss.getId() %></td><td><%=ss.getName() %></td><td><a href="editsubject.jsp">edit</a></td><td><a href="deleteinterfacesubject.jsp">delete</a></td></tr>
	<%}%>
	</table>
	
	
<br>
<form action="profile.jsp">
<input type="submit" value="Home Page">
</form>
</body>
</html>