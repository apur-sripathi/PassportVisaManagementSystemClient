<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<f:form modelAttribute="l" action="logged" method="post" >
		<table>
			<tr>
				<td>User Id</td>
				<td><f:input type="text" path="id"/></td>
				<td><f:errors path="id"/></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><f:input type="password" path="pwd"/></td>
				<td><f:errors path="pwd"/></td>
			</tr>
			<tr>
				<td><input type="submit"/></td>
			</tr>
		</table>
		<h1><c:out value="${msg}"></c:out></h1>
	</f:form>
</body>
</html>