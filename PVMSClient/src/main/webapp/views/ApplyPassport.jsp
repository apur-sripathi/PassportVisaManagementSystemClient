<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib tagdir="/WEB-INF/tags" prefix="mp" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<mp:new title="Visa Cancellation">
<jsp:attribute name="head">
<script>
function fetchcity()
{
    var a = document.getElementsByName("stateIdt")[0].value;
    var b = document.getElementsByName("registrationIdt")[0].value;
    var c = document.getElementsByName("country")[0].value;
    window.location.href="getcities?state="+a+"&registration="+b+"&country="+c;
}
function valid(){
	var a = '${sessionScope.userid}';
    var b = document.getElementsByName("registrationIdt")[0].value;
	if(a!=b){
		alert("Username is login id");
		//window.location.reload();
		/* window.location.href="applypassport"; */
	}
	/* window.location.href="appliedpassport"; */
}

</script>
<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

<title>APPLY PASSPORT</title>
<link rel="stylesheet" href="style/cancel.css">
</jsp:attribute>
<jsp:attribute name="content">
<div class="wrapper">

	<f:form action="appliedpassport" modelAttribute="a">
         <div class="h5 font-weight-bold text-center mb-3">APPLY PASSPORT</div>
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
        						<f:input type="text" id="id" path="registrationIdt" placeholder="userid" style="width:70%" value="${a.registrationIdt}" onchange="valid()"></f:input>
      						</td>
      						</div>
      					
      					<td style="color: red" class="col-25">
        						<f:errors path="registrationIdt"></f:errors>
      					</td>
      					</tr>
      				</div>
      			
      			<tr>
      			
      			
      			<tr>
             		<div class="row">
             			<td>
             				<div class="col-25">
        						<label for="country">Country</label>
      						</div>
      					</td>
      						<td><div class="col-75">
        						<f:input type="text" id="country" path="country" placeholder="India" style="width:99.9%" value="${a.country}"></f:input>
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
        						<label for="state">State</label>
      						</div>
      					</td>
      					<td>
      					<div class="col-75">
      					<c:if test="${empty a.stateId}">
							<f:select path="stateIdt" onchange="fetchcity()" style="width:99.9%">
								
									<f:option value="-1">select</f:option>
									<c:forEach var="s" items="${s}">
										<f:option value="${s.stateId}"><c:out value="${s.stateName}"></c:out></f:option>
									</c:forEach>
							</f:select>
						</c:if>
						<c:if test="${not empty a.stateId}">
							<f:select path="stateIdt" onchange="fetchcity()" style="width:99.9%">
								
									<f:option value="${a.stateId.stateId}"><c:out value="${a.stateId.stateName}"></c:out></f:option>
									<c:forEach var="s" items="${s}">
										<c:if test="${a.stateId.stateId!=s.stateId}">
											<f:option value="${s.stateId}"><c:out value="${s.stateName}"></c:out></f:option>
										</c:if>
									</c:forEach>
							</f:select>
						</c:if>
						</div>
						</td>
      					<td style="color: red" class="col-75">
        						<f:errors path="stateIdt"></f:errors>
      					</td>
      				</div>
      			</tr>
      			  
      			  
      			  
      			<tr>
             		<div class="row">
             			<td>
             				<div class="col-25">
        						<label for="city">City</label>
      						</div>
      					</td>
      						<td><div class="col-75">
        						<f:select type="text" id="city" path="cityIdt" style="width:99.9%">
        							<f:option value="-1">select city</f:option>
        							<c:forEach var="c" items="${c}">
        								<f:option value="${c.cityId }"><c:out value="${c.cityName }"></c:out></f:option>
        							</c:forEach>
        						</f:select>
      						</div>
      					</td>
      					<td style="color: red" class="col-75">
        						<f:errors path="stateIdt"></f:errors>
      					</td>
      				</div>
      			</tr>
      			
    			
    			
    			<tr>
             		<div class="row">
             			<td>
             				<div class="col-25">
        						<label for="pincode">Pincode</label>
      						</div>
      					</td>
      						<td><div class="col-75">
        						<f:input type="text" id="pincode" path="pin" style="width:99.9%"></f:input>
      						</div>
      					</td>
      					<td style="color: red" class="col-75">
        						<f:errors path="pin"></f:errors>
      					</td>
      				</div>
      			</tr>
      			
      			<tr>
             		<div class="row">
             			<td>
             				<div class="col-25">
        						<label for="type">TypeOfService</label>
      						</div>
      					</td>
      						<td><div class="col-75">
        						<f:select type="text" id="type" path="typeOfService" style="width:99.9%">
        							<f:option value="-1">select type</f:option>
                        			 <f:option value="1">Normal</f:option>
                       				 <f:option value="2">Tatkal</f:option>
        						</f:select>
      						</div>
      					</td>
      					<td style="color: red" class="col-75">
        						<f:errors path="typeOfService"></f:errors>
      					</td>
      				</div>
      			</tr>
    			
    				
      			<tr>
             		<div class="row">
             			<td>
             				<div class="col-25">
        						<label for="type">BookletType</label>
      						</div>
      					</td>
      						<td><div class="col-75">
        						<f:select type="text" id="type" path="bookletType" style="width:99.9%">
        							<f:option value="-1">select type</f:option>
                        			 <f:option value="1">30 pages</f:option>
                       				 <f:option value="2">60 pages</f:option>
        						</f:select>
      						</div>
      					</td>
      					<td style="color: red" class="col-75">
        						<f:errors path="bookletType"></f:errors>
      					</td>
      				</div>
      			</tr>
      			  
    			
    			
    			<tr>
             		<div class="row">
             			<td>
             				<div class="col-25">
        						<label for="doi">DateOfIssue</label>
      						</div>
      					</td>
      						<td><div class="col-75" style="width:70%">
        						<f:input type="date" id="doi" path="issueDate" style="width:99.9%"></f:input>
      						</div>
      					</td>
      					<td style="color: red" class="col-75">
        						<f:errors path="issueDate"></f:errors>
      					</td>
      				</div>
      			</tr>

      
   				<tr>
   					<td>
            			<br>     
           					<input type="submit" class="btn btn-primary mb-3" value="Apply Passport"  />
            		</td>
    			</tr>
           </table>
           
           <c:out value="${msg }"></c:out>
           
        </f:form>
    </div>
</jsp:attribute>
</mp:new>