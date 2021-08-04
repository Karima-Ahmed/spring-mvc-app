<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<body>

	<h1>Welcome!</h1>
	<h1>Login please!</h1>

	<form:form action="processLogin" method="post">
		<input type="text" placehodler="user name" name="userName" />
		<input type="password" placehodler="password" name="password" />
		<input type="submit" value="submit" />
	</form:form>

</body>
</html>
