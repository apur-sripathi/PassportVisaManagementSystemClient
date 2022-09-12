<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="title" required="true" rtexprvalue="true"%>
<%@ attribute name="head" fragment="true"%>
<%@ attribute name="content" fragment="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${title}</title>
<link rel="Stylesheet" href="/style/Menubar.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
	
	

</head>
<body style="background-image: url('images/home.jpg')">
	<div style="position: absolute; left: 10%; right: 10%">
		<div>
			<ul>
				<li> </li>
			
				<li><a href="loginmain"><b>Home</b></a></li>
				
				<li><a href="contact"><b>Contact Us</b></a></li>	
				<li><a href="about"><b>About Us</b></a></li>
				<li style="float: right; color: yellow"><a href="login"><b>login</b></a></li>
				<li style="float: right; color: yellow"><a href="register"><b>Sign Up</b></a></li>
			</ul>
		</div>

		
		<jsp:invoke fragment="head"></jsp:invoke>
		<div 
 		  style="position:absolute ; left: 1%; right: 1%; top: 80px;"> 

 
 
 		<jsp:invoke fragment="content"></jsp:invoke>
		</div>
	</div>
</body>
</html>