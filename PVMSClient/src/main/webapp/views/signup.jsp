<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="a"%>
 <mp:master title="Login">
    <jsp:attribute name="head">    
    	<meta charset="utf-8">
    	<script type="text/javascript">
		function validateEmail(){
			var a = document.getElementById("email").value;
			var b = document.getElementById("firstname").value;
			var c = document.getElementById("surname").value;
			window.location.href="validateEmail?email="+a+"&fName="+b+"&sName="+c;
		}
		function displayError(){
			var m = '${x}';
			alert(m);
		}
		function display(){
			var ms = '${msg}';
			alert(ms);
		}
    	</script>
    	<style>
    		.error{
				color:red;
			}
			h1 {
				color:olive;
  				text-align: center;
			}
			.gc{
			color:white;
			}
			
			 input[type=text]  {
 				 
  				padding: 4px;
 				 margin: 5px 0 20px 0;
  				display: inline-block;
 					 border: none;
  				background: #f1f1f1;
				} 
			.field{
				padding-right: 100px;
			}

			.content{
    		 	margin-left: 20%;
     			margin-right: 30%; 
     			width: 100%;
     			height: 50%;
     			
			}
	</style>
    <title>Registration</title>
   </jsp:attribute>
<jsp:attribute name="content">
 <div class="bg-img">
 
      <div class="content" >
      <a:if test="${not empty msg}">
      	<script>display();</script>
      </a:if>
      <br><br><br>
        <h1 style="color: white;font-family: Bookman Old Style, Verdana;padding-right: 50%;">Registration</h1>
        
       <f:form action="registering" modelAttribute="r" >
       <table>
     	<tr>
          <div class="field">
          
             <td><label for="firstname" class="fl fontLabel gc">Firstname</label></td>
           <td > <f:input type="text" id="firstname" path="fName" placeholder="firstname" value="${r.fName}" ></f:input></td>
            <td  ><f:errors path="fName" cssClass="error"/></td>
            
            </div>
            </tr>
            <tr>
          <div class="field">
          
             <td><label for="surname" class="fl fontLabel gc">Surname</label></td>
           <td > <f:input type="text" id="surname" path="surName" placeholder="Father Name" value="${r.surName }"></f:input></td>
            <td ><f:errors style="width: 10vw; color: red" path="surName" cssClass="error"/></td>
            
            </div>
            </tr>
            
            <tr>
          	<div class="field">
          
             	<td><label for="email" class="fl fontLabel gc">Email</label></td>
           		<td > <f:input type="text" id="email" path="email" placeholder="email" onchange="validateEmail()"></f:input></td>
            	<td ><f:errors  style="width: 10vw; color: red" path="email" cssClass="error"/></td>
            
            </div>
            </tr>
            
            
            <tr>
            <div class="field">
          
             	<td><label for="date_of_birth" class="fl fontLabel gc">Date of birth</label></td>
           		<td ><f:input type="date" id="date_of_birth" path="dob" placeholder="date_of_birth" style="width:85%;"></f:input></td>
            	<td ><f:errors style="width: 10vw; color: red" path="dob" cssClass="error"/></td>
            
            </div>
            </tr>
            
            <a:if test="${not empty x}">
            	<script>displayError();</script>
            </a:if>
            
            <tr>
            <div class="field">
          
             	<td><label for="address" class="fl fontLabel gc">Address</label></td>
           		<td ><f:input type="text" id="address" path="address" placeholder="address"></f:input></td>
            	<td ><f:errors style="width: 10vw; color: red" path="address" cssClass="error"/></td>
            
            </div>
            </tr>
            
            <tr>
            <div class="field">
          
             	<td><label for="contact" class="fl fontLabel gc">Contact</label></td>
           		<td ><f:input type="text" id="contact" path="contactNo" placeholder="contact"></f:input></td>
            	<td ><f:errors style="width: 10vw; color: red" path="contactNo" cssClass="error"/></td>
            
            </div>
            </tr>
            
            <div class="field">
          
             	<td><label for="qualification" class="fl fontLabel gc">Qualification</label></td>
           		<td><f:input type="text" id="qualification" path="qualification" placeholder="qualification"></f:input></td>
            	<td><f:errors style="width: 10vw; color: red" path="qualification" cssClass="error"/></td>
            
            </div>
            </tr>
         
        
               <tr>       
           			<div class="field" >
						<td><label for="gender" class="fl fontLabel gc">Gender</label></td>
						<td class="gc" ><f:radiobutton name="gender" value="Male"  path="gender" class="gc" />Male
						 	<f:radiobutton name="gender" value="Female"  path="gender" class="gc" />Female
						 	<f:radiobutton name="gender" value="Trans"  path="gender" class="gc" />Trans</td>
						<td><f:errors style="width: 10vw; color: red" path="gender" cssClass="error"/></td>
					</div>
				</tr> 
			<tr>
				<div class="field">
                <td> <label for="type" type="text" class="fl fontLabel gc">Apply Type</label></td>
                  <td> <select name="applyType" style="width:85%;">
                 <option selected="" value="-1">Apply Type</option>
                   <option value="1">Passport</option>
                <option value="2">Visa</option>
                            </select></td>
                         <td>   <f:errors style="width: 10vw; color: red" path="applyType" cssClass="error"/></td>
               
               </div>             
			</tr>
         
       
         
        <tr>
          <div class="field">
          
			<td><label for="hintquestion" class="fl fontLabel gc">HintQuestion</label></td>
			<td><select name="hintQuestion" style="width:85%;">
                 	<option value="-1">Select</option>
                 	<option value="What is your favorite colour?">What is your favorite colour?</option>
                  	<option value="What is your lucky number?">What is your lucky number?</option>
                  	<option value="Who is your favorite cricketer?">Who is your favorite cricketer?</option>
                  	<option value="others">others</option> 
                 </select></td>
                  	<td><errors style="width: 10vw; color: red" path="hintQuestion" cssClass="error"/></td>
     

			</div>
		</tr>
		<tr>
          <div class="field">
            <td><label for="hintanswer" class="fl fontLabel gc">HintAnswer</label></td>
            <td><f:input type="text" id="hintanswer" path="hintAnswer" placeholder="hintanswer"></f:input></td>
            <td><f:errors path="hintAnswer" cssClass="error"/></td>
            </div>
          </tr>
          <tr>
          	<td colspan="2" align="center"><button class="btn btn-success">Submit</button></td>
          </tr>
          </table>
          
        </f:form>
        
   
        </div>
        </div>
 
        </jsp:attribute>
</mp:master>