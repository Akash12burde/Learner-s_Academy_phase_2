<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Update Subject details</h1>
	<form action="updatedetailssubject.jsp">
	<table>
	<tr><td>Enter the id for which records to be updated  :</td><td><input type="text" name="id" required></td></tr>
	<tr><td>Enter the updated Subjectname : </td><td><input type="text" name="name" required></td></tr>
	</table>
		 
		<br>
		
		<br>
		
		<input type="submit" value="updateSubject">
		
	</form>


</body>
</html>