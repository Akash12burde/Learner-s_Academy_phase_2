
<%@page import="com.academy.dao.StudentDAO"%>
<%@page import="com.academy.pojo.*" %>
<%@page import="java.util.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		Student s = new Student();
		s.setId(request.getParameter("id"));
		StudentDAO dao= new StudentDAO();
		int row=dao.delete(s);
		if(row>0){
			out.print("deletion is successfull");
		}
		else{
			out.print("deletion failed");
		}
	%>
	<br>
	<form action="retrieve.jsp">
		<input type="submit" value="getstudents">
	</form>
</body>
</html>