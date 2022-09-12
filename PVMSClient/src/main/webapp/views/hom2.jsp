<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Visa and Passport web design</title>

<link rel="Stylesheet" href="/style/style.css">

<style>
nav ul li a{
	text-decoration:none;
	color:#400000;
	font-size:30px;
}
nav ul li{
	list-style:none;
	display:inline-block;
	margin-right:100px;
}
.row{
	display: flex;
	height: 88%;
	align-items: center;
}
.col{
	flex-basis:50%;	
}
.card{
	width:200px;
	height: 220px;
	display: inline-block;
	border-radius: 10px;
	padding: 15px 25px;
	box-sizing: border-box;
	cursor:pointer;
	margin:20px 30px;
	background-position: center;
	background-size: cover;		
	transition: transform 0.5s;	
	
}
h1{
	color:white;
	font-size: 50px;
	margin-left: 30px;
	font-family:cursive;

}
h5
{
color:navy;
font-size: 15px;
text-shadow:0 0 5px #999;
}
nav ul li a{
font-family: monospace;
	text-decoration:none;
	color:white;
	font-size:20px;
}

.container {
	background-image: url("images/bg.jpg");
	background-size: cover;
}


.card1 {
	background-image: url("images/card1.png");
	background-size: cover;
}

.card2 {
	background-image: url("images/renewalpassport.png");
	background-size: cover;
}

.card3 {
	background-image: url("images/visa1.jpg");
	background-size: cover;
}

.card4 {
	background-image: url("images/visa.jpg");
	background-size: cover;
}
</style>
<script type="text/javascript">
function validp(){
	window.location.href="applypassport";
}
	function valid(){
		window.location.href="issuepassport";
	}
	function valid1(){
		window.location.href="applyvisa";
	}
	function valid2(){
		window.location.href="cancelvisa";
	}
	function explore(){
		window.location.href="explore";
	}
</script>
</head>
<body>
	<div class="container">
		<div class="navbar">
		

			<nav>
				<ul>
					<li><a href="profile"><c:out value="${sessionScope.userid}"></c:out></a></li>
					<li></li>
					<li><a href="/logout">Logout</a></li>
				</ul>
			</nav>

		</div>

		<div class="row">
			<div class="col">
				<h1>Visa and Passport Services</h1>

				<p>I don't accept the status. I do accept passport and visa.</p>
				<button type="button" onclick="explore()">Explore</button>
			</div>
			 
			<div class="col">
				<div class="card card1" onclick="validp()">
					<h5>Apply Passport</h5>
					<!-- <p>passport apply services</p> -->
				</div>
				</a>
				<div class="card card2" onclick="valid()">

					<h5>Passport Renewal</h5>
					<!-- <p>passport renewal services</p> -->
				</div>
				<div class="card card3" onclick="valid1()">

					<h5>Apply Visa</h5>
					<!-- <p>visa apply services</p> -->
				</div>
				<div class="card card4" onclick="valid2()">

					<h5>Visa Cancellation</h5>
					<!-- <p>visa cancellation services</p> -->
				</div>



			</div>


		</div>
	</div>







</body>
</html>

