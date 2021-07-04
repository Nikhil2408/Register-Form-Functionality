<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"/>
<style>
	.error
	{
		color:red;
	}
</style>
</head>
<body>
	<form:form action="processForm" modelAttribute="candidate">
	<div class="container">
	<div style="text-align:center;font-size:30px"><b>Registration Form </b> </div><br>
		<b>First Name:</b><form:input path="firstName" type="text" placeholder="Enter Your First Name"/>
						  <form:errors path="firstName" cssClass="error"/><br><br>
		<b>Last Name:</b> <form:input path="lastName" type="text" placeholder="Enter Your Last Name"/>
						  <form:errors path="lastName" cssClass="error"/><br><br>
		<b>UserName:</b>  <form:input path="userName" type="text" placeholder="Enter Your Username"/>
		                  <form:errors path="userName" cssClass="error"/><br><br>
	 <b>Email Address:</b><form:input path="emailAddress" type="email" placeholder="Enter Your Email Address"/>
						  <form:errors path="emailAddress" cssClass="error"/><br><br>
		<b>Location: </b>
						<form:select path="location">
							<form:options items="${candidate.locationList}"/>
						</form:select> <br><br>
		<b>Postal Code: </b><form:input path="postalCode" placeholder="Enter Your Postal Code"/>
							<form:errors path="postalCode" cssClass="error"/> <br><br>
		<b>Courses: </b>
						<form:checkboxes path="coursesEnrolled" items="${candidate.courses}"/><br><br>
		<input class="registerButton" type="submit" value="Register"/>
	</div>
	</form:form>
	
</body>
</html>