<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation Page</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>User Name</th>
			<th>Email Address</th>
		</tr>
		<tr>
			<th>${candidate.firstName}</th>
			<th>${candidate.lastName}</th>
			<th>${candidate.userName}</th>
			<th>${candidate.emailAddress}</th>
		</tr>
	</table>
</body>
</html>