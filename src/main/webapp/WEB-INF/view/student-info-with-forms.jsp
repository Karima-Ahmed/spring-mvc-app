<?xml version="1.0" encoding="UTF-8"?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Student info!</h1>

	<f:form action="show-student-with-forms" method="post" modelAttribute="student">
		<p> Name: <f:input type="text" placehodler="user name" path="name" /></p>
		<f:errors path="name"/>
		<p> Age: <f:input type="text" placehodler="age" path="age" /></p>
		<f:errors path="age"/>

		<p>Select Country
			<%-- <f:select  path="country">
		<f:option value="Egypt" label="eg"/>
		<f:option value="France" label="fr"/>
		<f:option value="United States" label="us"/>
		</f:select></p>
		 --%>
			<f:select path="country">
			    <f:option value="" label="Select"/>
				<f:options items="${student.countries}" />
			</f:select></p>
			
			<p>Select Lang:
			<f:radiobutton path="lang" value="Java" label="Java"/>
			<f:radiobutton path="lang" value="C++" label="C++"/>
			<f:radiobutton path="lang" value="Python" label="Python"/>
			</p>


          <p>Select Sport:
			<f:checkbox path="sports" value="Football" label="Football"/>
			<f:checkbox path="sports" value="Tennis" label="Tennis"/>
			<f:checkbox path="sports" value="Vollyball" label="Vollyball"/>			
			</p>

		<p><input type="submit" value="submit" /></p>
	</f:form>
</body>
</html>