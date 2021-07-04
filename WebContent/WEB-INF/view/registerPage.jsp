<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>
<body>
	<form:form action="processForm" modelAttribute="candidate">
	<div class="container">
	<div style="text-align:center"><b>Registration Form </b> </div><br>
		<b>First Name:</b> <form:input path="firstName" type="text" placeholder="Enter Your First Name"/><br>
		
		<b>Last Name:</b> <form:input path="lastName" type="text" placeholder="Enter Your Last Name"/>
		
		<b>UserName:</b> <form:input path="userName" type="text" placeholder="Enter Your Username"/>
		
		<b>Email Address:</b><form:input path="emailAddress" type="email" placeholder="Enter Your Email Address"/>
		
		
		<input class="registerButton" type="submit" value="Register"/>
	</div>
	</form:form>
	
</body>
</html>