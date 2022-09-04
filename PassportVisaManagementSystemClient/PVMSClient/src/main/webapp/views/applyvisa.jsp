<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib tagdir="/WEB-INF/tags" prefix="mp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<mp:new title="Visa Cancellation">
<jsp:attribute name="head">
<title>APPLY PASSPORT</title>
<link rel="stylesheet" href="style/cancel.css">
<script>
function valid(){
	 var a = '${sessionScope.userid}';
    var b = document.getElementById("id").value;
	if(a!=b){
		alert("Username is login id");
		//window.location.reload();
		/* window.location.href="applypassport"; */
	} 
	/* window.location.href="appliedpassport"; */
}
</script>
</jsp:attribute>
<jsp:attribute name="content">
<div class="wrapper">
        <f:form action="appliedvisa" modelAttribute="m" method="get">
        <table>
        
           <tr> <div class="h5 font-weight-bold text-center mb-3">APPLY VISA</div>
           </tr> 
           
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
        						<label for="id">Passport Id</label>
      						</td>
      						</div>
      					
      						<div class="col-25" >
      						<td>
        						<f:input type="text" id="id" path="passid" placeholder="PassId" style="width:70%"></f:input>
      						</td>
      						</div>
      					
      					<td style="color: red" class="col-25">
        						<f:errors path="passid"></f:errors>
      					</td>
      					</tr>
      				</div>
      
      
     <tr>
             		<div class="row">
             			<td>
             				<div class="col-25">
        						<label for="country">Country</label>
      						</div>
      					</td>
      						<td><div class="col-75">
        						<f:select type="text" id="type" path="country" style="width:99.9%">
        							<f:option value="-1">select country</f:option>
                        			 <f:option value="1">USA</f:option>
                       				 <f:option value="2">China</f:option>
                       				 <f:option value="3">Japan</f:option>
        						</f:select>
      						</div>
      					</td>
      					<td style="color: red" class="col-75">
        						<f:errors path="country"></f:errors>
      					</td>
      				</div>
      			</tr>
  		 <tr>
             		<div class="row">
             			<td>
             				<div class="col-25">
        						<label for="qualification">Qualification</label>
      						</div>
      					</td>
      						<td><div class="col-75">
      						<f:select type="text" id="type" path="occupation" style="width:99.9%">
        							<f:option value="-1">select Occupation</f:option>
                        			 <f:option value="1">Student</f:option>
                       				 <f:option value="2">Private Employee</f:option>
                       				 <f:option value="3">Government Employee</f:option>
                       				 <f:option value="4">Self Employed</f:option>
                       				 <f:option value="5">Retire Employee</f:option>
        						</f:select>
      						</div>
      					</td>
      					<td style="color: red" class="col-75">
        						<f:errors path="occupation"></f:errors>
      					</td>
      				</div>
      			</tr>
  		<tr>
      
      <tr>
             		<div class="row">
             			<td>
             				<div class="col-25">
        						<label for="doa">Date of Application</label>
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