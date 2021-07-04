<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
	th {
  padding: 12px;
  text-align: left;
  background-color: #000080;
  color: white;
}
</style>
<meta charset="ISO-8859-1">
<title>Confirmation Page</title>
</head>
<body>
	<table border="1" style="border-collapse: collapse">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>User Name</th>
			<th>Email Address</th>
			<th>Location</th>
			<th>Courses Enrolled</th>
		</tr>
		<tr>
			<td>${candidate.firstName}</td>
			<td>${candidate.lastName}</td>
			<td>${candidate.userName}</td>
			<td>${candidate.emailAddress}</td>
			<td>${candidate.location}</td>
			<td>
				<c:forEach var="temp" items="${candidate.coursesEnrolled}">
					<ul>
						<li>${temp}
					</ul>
				</c:forEach>
			</td>
		</tr>
	</table>
</body>
</html>