<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib tagdir="/WEB-INF/tags" prefix="mp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<mp:new title="Visa Cancellation">
<jsp:attribute name="head">
<title>VISA CANCELLATION</title>
<link rel="stylesheet" href="style/cancel.css">
<script>
function valid(){
	 var a = '${sessionScope.userid}';
   var b = document.getElementById("id").value;
	if(a!=b){
		alert("Username is login id");
	} 
}
function validate(){
	 var a = '${sessionScope.passport.passId}';
  	var b = document.getElementById("passid").value;
	if(a!=b){
		alert("This is not your current Passport Id");
	} 
}
</script>
</jsp:attribute>
<jsp:attribute name="content">
<div class="wrapper">
        <f:form action="cancelledvisa" modelAttribute="x">
        <div class="h5 font-weight-bold text-center mb-3">Cancel Visa</div>
            <table>
             	<div class="row">
             		<tr>
             			
             			<div class="col-25">
             				<td>
        						<label for="id">User Id</label>
      						</td>
      						</div>
      					
      						<div class="col-25" >
      						<td>
        						<f:input type="text" id="id" path="regId" placeholder="userid" style="width:70%" onchange="valid()"></f:input>
      						</td>
      						</div>
      					
      					<td style="color: red" class="col-25">
        						<f:errors path="regId"></f:errors>
      					</td>
      					</tr>
      				</div>
      			
      
      <div class="row">
             		<tr>
             			
             			<div class="col-25">
             				<td>
        						<label for="id">PassportId</label>
      						</td>
      						</div>
      					
      						<div class="col-25" >
      						<td>
        						<f:input type="text" id="passid" path="passid" placeholder="PassId" style="width:70%" onchange="validate();"></f:input>
      						</td>
      						</div>
      					
      					<td style="color: red" class="col-25">
        						<f:errors path="passid"></f:errors>
      					</td>
      					</tr>
      				</div>
      
      
      
          <div class="row">
             		<tr>
             			
             			<div class="col-25">
             				<td>
        						<label for="id">VisaId</label>
      						</td>
      						</div>
      					
      						<div class="col-25" >
      						<td>
        						<f:input type="text" id="id" path="visaId" placeholder="VisaId" style="width:70%"></f:input>
      						</td>
      						</div>
      					
      					<td style="color: red" class="col-25">
        						<f:errors path="visaId"></f:errors>
      					</td>
      					</tr>
      				</div>
            	
          <tr>
             		<div class="row">
             			<td>
             				<div class="col-25">
        						<label for="doa">DateOfApplication</label>
      						</div>
      					</td>
      						<td><div class="col-75" style="width:70%">
        						<f:input type="date" id="doa" path="dateOfApplication" style="width:99.9%"></f:input>
      						</div>
      					</td>
      					<td style="color: red" class="col-75">
        						<f:errors path="dateOfApplication"></f:errors>
      					</td>
      				</div>
      			</tr>
      
      <br>
      
         <tr>
   <td>
            <br>     
           	<input type="submit" class="btn btn-primary mb-3" value="Apply visa" />
            </td>
    </tr>
         
           </table>
           
           <c:out value="${msg }"></c:out>
        </f:form>
    </div>
</jsp:attribute>
</mp:new>