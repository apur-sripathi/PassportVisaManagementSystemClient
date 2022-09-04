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
			
			/* input[type="text"] {
    			width: 240px;
   				height:8px;
    			content:
			}  */
			 input[type=text]  {
 				 width: 50%;
  				padding: 4px;
 				 margin: 5px 0 22px 0;
  				display: inline-block;
 					 border: none;
  				background: #f1f1f1;
				} 
			.field{
				padding-right: 100px;
			}

			.content{

				float: right;
    			margin-left: 50px;
     			margin-right: 30%;
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
        <h1 style="color: white;font-family: Bookman Old Style, Verdana;padding-right: 20%;">Registration</h1>
        
       <f:form action="registering" modelAttribute="r">
     <br>
          <div class="field">
          <tr>
             <td><label for="firstname" class="fl fontLabel">Firstname</label></td>
           <td> <f:input type="text" id="firstname" path="fName" placeholder="firstname" value="${r.fName }"></f:input></td>
            <td  style="position: inherit;"><f:errors style="width: 10vw; color: red" path="fName" cssClass="error"/></td>
            
            </div>
            
           
          
            <div class="field">
          <tr>
            <label for="surname" class="fl fontLabel">surname</label>
            <f:input type="text" id="surname" path="surName" placeholder="Father Name" value="${r.surName }"></f:input>
            <td style="position: inherit;"><f:errors style="width: 10vw; color: red" path="surName" cssClass="error"/></td>
            
            </div>
            
             <div  class="field">
          <tr>
           <label for="email" class="fl fontLabel">Email</label>
            
            <f:input type="text" id="email" path="email" placeholder="email" onchange="validateEmail()"></f:input>
            <td style="color: red;width: 50%;"><f:errors  style="width: 10vw; color: red" path="email" cssClass="error"/></td>
            </tr>
            </div>
            
            <a:if test="${not empty x}">
            	<script>displayError();</script>
            </a:if>
        
      
           <div class="field">
          <tr>
          <label for="date_of_birth" class="fl fontLabel">Date of birth</label>
            <f:input type="date" id="date_of_birth" path="dob" placeholder="date_of_birth" style="width:50%;"></f:input>
            <td style="position: inherit;"><f:errors style="width: 10vw; color: red" path="dob" cssClass="error"/></td>
            
            </div>
          
           <br>
           
            <div class="field">
          <tr>
          <label for="address" class="fl fontLabel">Address</label>
            <f:input type="text" id="address" path="address" placeholder="address"></f:input>
            <td style="position: inherit;"><f:errors style="width: 10vw; color: red" path="address" cssClass="error"/></td>
            
            </div>
        
           
           
            <div class="field">
          <tr>
               <label for="contact" class="fl fontLabel">Contact</label>
            <f:input type="text" id="contact" path="contactNo" placeholder="contact"></f:input>
            <td style="position: inherit;"><f:errors style="width: 10vw; color: red" path="contactNo" cssClass="error"/></td>
            
            </div>
          
          <div class="field">
          <tr>
            <label for="qualification" class="fl fontLabel">Qualification</label>
            <f:input type="text" id="qualification" path="qualification" placeholder="qualification"></f:input>
            <td><f:errors style="width: 10vw; color: red" path="qualification" cssClass="error"/></td>
            
            </tr>
            </div>
         
        
                      
           <div class="field" >
          <tr>
          

				<label for="gender" class="fl fontLabel">gender</label>
					<td><input type="radio" name="gender" value="Male"  path="gender" />Male
						 <input type="radio" name="gender" value="Female"  path="gender" />Female
						 <input type="radio" name="gender" value="Trans"  path="gender" />Trans
					<f:errors style="width: 10vw; color: red" path="gender" cssClass="error"/></td>
               
</tr> 
</div>
<br>

<td> <div class="field">
               <label for="type" type="text" class="fl fontLabel">Apply Type</label>
                   <select name="applyType" style="width:50%;">
                 <option selected="" value="-1">Apply Type</option>
                   <option value="1">passport</option>
                <option value="2">Visa</option>
                            </select>
                            <f:errors style="width: 10vw; color: red" path="applyType" cssClass="error"/>
               
               </div>
               </td>
               
</tr>
         
       
         
          <br>
          <div class="field">
          <tr>
<label for="hintquestion" class="fl fontLabel">Hint Question</label>
<td><select name="hintQuestion" style="width:50%;">
                 	<option value="-1">Select</option>
                 	<option value="What is your favorite colour?">What is your favorite colour?</option>
                  	<option value="What is your lucky number?">What is your lucky number?</option>
                  	<option value="Who is your favorite cricketer?">Who is your favorite cricketer?</option>
                  	<option value="others">others</option> </select></td>
                  	<errors style="width: 10vw; color: red" path="hintQuestion" cssClass="error"/></td>
     
</tr>
</div>
<br>
<tr>

            
          <div class="field">
          <tr>
            <label for="hintanswer" class="fl fontLabel">Hint Answer</label>
            <f:input type="text" id="hintanswer" path="hintAnswer" placeholder="hintanswer"></f:input>
           
            <td><f:errors style="width: 10vw; color: red" path="hintAnswer" cssClass="error"/></td>
            
            </tr>
            </div>
          
          <button class="btn btn-success">Submit</button>
          
       <!-- 
          <div  class="field">
            <input type="submit" value="LOGIN" style="color:red">
          </div>
     -->
        </f:form>
        
   
        </div>
        </div>
 
        </jsp:attribute>
</mp:master>