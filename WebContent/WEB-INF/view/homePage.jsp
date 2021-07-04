<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<style>
	.regformbtn
	{
		margin-left:600px;
		margin-top:300px;
		padding: 20px;
		background-color: #54507b
	}
</style>
<meta charset="ISO-8859-1">
<title>Welcome To Home Page</title>
</head>
<body>
	<form:form action="register">
		<input class="regformbtn" type="submit" value="RegistrationForm"/>
	</form:form>
</body>
</html>