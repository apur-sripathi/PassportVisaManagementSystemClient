<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib tagdir="/WEB-INF/tags" prefix="mp"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %> 
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="a"%>
    <mp:master title="Login">
    <jsp:attribute name="head">    
    <meta charset="utf-8">
    <style>
	.error{
	color:red;
	}
	input[type="text"] {
     width: 240px; 
     padding:15px;
    height:8px;
}
	</style>
    <title>Transparent Login Form UI</title>
    <link rel="stylesheet" href="/style/index.css">
   <script src="https://kit.fontawesome.com/a076d05399.js">
   </script>
   <script>
   	function fetchValid(){
   		var a = document.getElementById("id").value;
   		window.location.href = "fetchValid?id="+a;
   	}
   	function validate(){
   		var m = document.getElementById("id").value;
   		var n = document.getElementById("hq").value;
   		var o = document.getElementById("password").value;
   		window.location.href = "validForgot?id="+m+"&hq="+n+"&ha="+o;
   	}
   	function display(){
   		var xmn = '${msg}';
   		alert(xmn);
   	}
   </script>
   </jsp:attribute>
<jsp:attribute name="content">
 <div class="bg-img">
      <div class="content">
        <header style="color: white; font-family: cursive; font-size: xx-large;">Forgot Password</header>
        
       <f:form action="validForgot">
   
         <table>
        
          <tr>
           
          
          <td style="color: white" >Email Id</td>
            <td ><input type="text" id="id" name="id" value="${id}" required onchange="fetchValid();"></input></td>
            
           
            </tr>
   
 <br>
   
            <tr>
          <td style="color: white; font-size: large; width:40% ;height:50px">HintQuestion</td>
            <td style="width:60%">
            
            	<a:if test="${empty HQ }">
            		<select name="hq" id="hq">
                 		<option value="-1">Select</option>
                 			<a:forEach var="l" items="${l}">
                 				<option value="${l}"><a:out value="${l}"></a:out></option>
                 			</a:forEach>
                  	</select>
                  </a:if>
                  <a:if test="${not empty HQ }">
            		<select name="hq" id="hq">
                 		<option value="${HQ}"><a:out value="${HQ}"></a:out></option>
                 			<a:forEach var="l" items="${l}">
                 				<a:if test="${!HQ.equalsIgnoreCase(l)}">
                 				<option value="${l}"><a:out value="${l}"></a:out></option>
                 				</a:if>
                 			</a:forEach>
                  	</select>
                  </a:if>
                 </td>
         
            </tr>
            <br>
         
       
          

          <tr>
          <td style="color: white; font-size: large; width:40%">Hint Answer</td>
            <td style="width:60%"><input type="text" id="ha" name="ha" placeholder=""></input></td>
           
            
            </tr>
            </div>
            <a:if test="${not empty msg}">
        	<script>
        		display();
        	</script>
        </a:if>
         </table>
         <br>
         
         <div  class="field">
            <input type="submit" value="submit" onclick="validate();">
          </div>
       </f:form>  
            
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

