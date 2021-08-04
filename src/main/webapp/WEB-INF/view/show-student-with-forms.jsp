<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Student Info! </h1>
<p>student name:${student.name} </p>
<p>student age:${student.age} </p>
<p>student Country:${student.country} </p>
<p>student Language:${student.lang} </p>
<p>student Sport: <c:forEach items="${student.sports}" var="sport">
<p>${sport}</p></c:forEach> </p>

</body>
</html>