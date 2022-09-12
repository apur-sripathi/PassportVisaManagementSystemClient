<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib tagdir="/WEB-INF/tags" prefix="mp" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<mp:new title="Visa Cancellation">
<jsp:attribute name="head">

<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

<title>Display Message</title>
<link rel="stylesheet" href="style/cancel.css">
</jsp:attribute>
<jsp:attribute name="content">
<div class="wrapper">

	<f:form action="afterlogin" modelAttribute="a">
            <table>
             	<tr>
             		<td>
             			<c:out value="${msg}"></c:out>
             		</td>
             	
             	</tr>
   				<tr>
   					<td colspan="2" align="center"><button class="btn btn-success">Dashboard</button></td>
    			</tr>
           </table>
           
           
           
        </f:form>
    </div>
</jsp:attribute>
</mp:new>