<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib tagdir="/WEB-INF/tags" prefix="mp"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="a"%>
    <mp:master title="Login">
    <jsp:attribute name="head">    
    <meta charset="utf-8">
    <script>
    	function fetchContact(){
    		var a = document.getElementById("username").value;
    		window.location.href="fetchcontact?id="+a;
    	}
    	function display(){
    		var x = "${msg}";
    		alert(x);
    	}
    </script>
    <style>
	.error{
	color:red;
	}
	</style>
    <title>Transparent Login Form UI</title>
    <link rel="stylesheet" href="/style/index.css">
   <script src="https://kit.fontawesome.com/a076d05399.js">
   </script>
   </jsp:attribute>
<jsp:attribute name="content">
 <div class="bg-img">
      <div class="content">
        <h3 style="color:white;font-family: Bookman Old Style, Verdana;">Login Form</h3>
        <br><br>
       <f:form action="logged" method="post" modelAttribute="l">
     
          <div class="field">
          <tr>
            <span class="fa fa-user" style="color: gold;"></span>
            <f:input type="text" id="username" path="id" placeholder="Username" onchange="fetchContact()" value="${i }"></f:input>
            <td style="position: inherit;"><f:errors style="width: 10vw; color: red" path="id" cssClass="error"/></td>
            
            </div>
            
           <br>
           
            <div  class="field">
          <tr >
            <span class="fa fa-mobile" style="color: gold;"></span>
            <f:input type="text" id="Contact" path="Contact" placeholder="Phone" value="${c }"></f:input>
            <td><f:errors  style="width: 10vw; color: red" path="Contact" cssClass="error"/></td>
            </tr>
            </div>
            
            <br>
          
          
          <div class="field">
          <tr>
            <span class="fa fa-lock" style="color: gold;"></span>
            <f:input type="text" id="password" path="pwd" placeholder="Password"></f:input>
           <span class="show">SHOW</span>
            <td><f:errors style="width: 10vw; color: red" path="pwd" cssClass="error"/></td>
            
            </tr>
            </div>
            
         
          
          
          <div class="pass">
            <a href="forgot">Forgot Password?</a>
          </div>
          
          <a:if test="${not empty msg}">
        	<script>
        		display();
        	</script>
        </a:if>
          <div  class="field">
            <input type="submit" value="LOGIN">
          </div>
   
        </f:form>
        
        <div type="submit" class="signup">Don't have account?
          <a href="register">Signup Now</a>
        </div>
        </div>
        </div>
        

    <script>
      const pass_field = document.querySelector('.pass-key');
      const showBtn = document.querySelector('.show');
      showBtn.addEventListener('click', function(){
       if(pass_field.type === "password"){
         pass_field.type = "text";
         showBtn.textContent = "HIDE";
         showBtn.style.color = "#3498db";
       }else{
         pass_field.type = "password";
         showBtn.textContent = "SHOW";
         showBtn.style.color = "#222";
       }
      });
    </script>
</jsp:attribute>
</mp:master>

