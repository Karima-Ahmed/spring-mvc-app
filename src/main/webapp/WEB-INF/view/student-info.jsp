<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Student info!</h1>

	<form:form action="show-student" method="post">
		<input type="text" placehodler="user name" name="name" />
		<input type="text" placehodler="age" name="age" />
		<input type="submit" value="submit" />
	</form:form>
</body>
</html>