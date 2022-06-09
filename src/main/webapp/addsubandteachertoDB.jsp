<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.academy.dao.*" %>
    <%@ page import="com.academy.pojo.*" %>>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Classes c = new Classes();
Teacher t = new Teacher();
Subject sub = new Subject();
c.setName(request.getParameter("class"));
sub.setName(request.getParameter("subject"));
t.setFirstname(request.getParameter("teacher"));
STDAO dao=new STDAO();
int row=dao.insertST(c, t, sub);
if(row>0){
	out.print("insertion is successfull");
}
else{
	out.print("insertion failed");
}
%>

<a href="addsubjectsandteachers.jsp">insert more record</a>
<br>
<br>
<form action="retrieveinterfacest.jsp">

<input type="submit" value="Get subjects and teachers">

</form>
</body>
</html>