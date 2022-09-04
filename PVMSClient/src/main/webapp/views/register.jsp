<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript">
		function validateEmail(){
			var a = document.getElementById("mail").value;
			window.location.href="validateEmail?email="+a;
		}
	</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<f:form modelAttribute="r" action="registering" method="post" >
		<table>
			<tr>
				<td>Name</td>
				<td><f:input type="text" path="fName" value="${r.fName}"/></td>
				<td><f:errors path="fName"/></td>
			</tr>
			<tr>
				<td>Father Name</td>
				<td><f:input type="text" path="surName" value="${r.surName}"/></td>
				<td><f:errors path="surName"/></td>
			</tr>
			<tr>
				<td>DOB</td>
				<td><f:input type="text" path="dob" value="${r.dob}"/></td>
				<td><f:errors path="dob"/></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><f:textarea type="text" path="address" value="${r.address}"/></td>
				<td><f:errors path="address"/></td>
			</tr>
			<tr>
				<td>ContactNo</td>
				<td><f:input type="text" path="contactNo" value="${r.contactNo}"/></td>
				<td><f:errors path="contactNo"/></td>
			</tr>
			<tr>
				<td>email</td>
				<td><f:input id="mail" type="text" path="email" value="${r.email}"/></td>
				<td><f:errors path="email"/><c:out value="${x}"></c:out></td>
			</tr>
			<tr>
				<td>qualification</td>
				<td><f:input type="text" path="qualification"/></td>
				<td><f:errors path="qualification"/></td>
			</tr>
			<tr>
				<td>gender</td>
				<td><f:input type="text" path="gender"/></td>
				<td><f:errors path="gender"/></td>
			</tr>
			<tr>
				<td>applyType</td>
				<td><f:select path="applyType" style="width:50%">
					<f:option value="-1">select</f:option>
					<f:option value="1">PASS</f:option>
					<f:option value="2">VISA</f:option>
				</f:select></td>
				<td><f:errors path="applyType"/></td>
			</tr>
			<tr>
				<td>hintQuestion</td>
				<td ><f:select path="hintQuestion" style="width:50%">
				<f:option value="-1">select</f:option>
					<f:option value="What was your favourite color?">What was your favourite color?</f:option>
					<f:option value="What is the name of your first pet?">What is the name of your first pet?</f:option>
					<f:option value="What is the name of the town where you were born?">What is the name of the town where you were born?</f:option>
					<f:option value="Who was your childhood hero?">Who was your childhood hero?</f:option>
				</f:select></td>
				<td><f:errors path="hintQuestion"/></td>
			</tr>
			<tr>
				<td>hintAnswer</td>
				<td><f:input type="text" path="hintAnswer"/></td>
				<td><f:errors path="hintAnswer"/></td>
			</tr>
			<tr>
				<td><input type="submit"/></td>
			</tr>
		</table>
		<h1><c:out value="${msg}"></c:out></h1>
	</f:form>
</body>
</html>