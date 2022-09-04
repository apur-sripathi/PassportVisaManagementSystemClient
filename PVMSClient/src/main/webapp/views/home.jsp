<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Father Name</th>
			<th>DOB</th>
			<th>Address</th>
			<th>Contact</th>
			<th>Email</th>
			<th>Qualification</th>
			<th>Gender</th>
			<th>Password</th>
			<th>Type</th>
		</tr>
		<c:forEach var="e" items="${userList}" >
			<tr>
				<td>${e.id}</td>
				<td>${e.fName}</td>
				<td>${e.surName}</td>
				<td>${e.dob}</td>
				<td>${e.address}</td>
				<td>${e.contactNo}</td>
				<td>${e.email}</td>
				<td>${e.qualification}</td>
				<td>${e.gender}</td>
				<td>${e.password}</td>
				<td>${e.citizenType}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>