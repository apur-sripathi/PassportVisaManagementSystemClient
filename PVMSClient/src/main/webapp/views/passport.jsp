<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<f:form modelAttribute="p" action="registering" method="post" >
		<table>
			<tr>
				<td>registrationId</td>
				<td><f:input type="text" path="registrationIdt" value="${p.registrationIdt}"/></td>
				<td><f:errors path="registrationIdt"/></td>
			</tr>
			<tr>
				<td>country</td>
				<td><f:input type="text" path="country" value="${p.country}"/></td>
				<td><f:errors path="country"/></td>
			</tr>
			<tr>
				<td>State</td>
				<td><f:select path="stateIdt" value="${p.stateIdt}" style="width:70%">
					<f:option value="-1">select</f:option>
					<f:option value="S_O001">Orissa</f:option>
					<f:option value="S_W002">West Bengal</f:option>
					<f:option value="S_B003">Bihar</f:option>
					<f:option value="S_K004">Kerala</f:option>
					<f:option value="S_A005">Andhra Pradesh</f:option>
				</f:select></td>
				<td><f:errors path="stateIdt"/></td>
			</tr>
			<tr>
				<td>City</td>
				<td><f:textarea type="text" path="cityIdt" value="${p.cityIdt}"/></td>
				<td><f:errors path="cityIdt"/></td>
			</tr>
			<tr>
				<td>pin</td>
				<td><f:input type="text" path="pin" value="${p.pin}"/></td>
				<td><f:errors path="pin"/></td>
			</tr>
			<tr>
				<td>typeOfService</td>
				<td><f:select path="typeOfService" value="${p.typeOfService}" style="width:70%">
					<f:option value="-1">select</f:option>
					<f:option value="1">Normal</f:option>
					<f:option value="2">Tatkal</f:option>
				</f:select></td>
				<td><f:errors path="typeOfService"/></td>
			</tr>
			<tr>
				<td>bookletType</td>
				<td><f:select path="bookletType" value="${p.bookletType}" style="width:70%">
					<f:option value="-1">select</f:option>
					<f:option value="1">30</f:option>
					<f:option value="2">60</f:option>
				</f:select></td>
				<td><f:errors path="bookletType"/></td>
			</tr>
			<tr>
				<td>issueDate</td>
				<td><f:input type="text" path="issueDate"/></td>
				<td><f:errors path="issueDate"/></td>
			</tr>
			<tr>
				<td><input type="submit"/></td>
			</tr>
		</table>
		<h1><c:out value="${msg}"></c:out></h1>
	</f:form>
</body>
</html>