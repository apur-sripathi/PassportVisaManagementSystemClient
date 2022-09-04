
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mp"%>
<mp:master title="insert">
	<jsp:attribute name="head">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
	</jsp:attribute>
	<jsp:attribute name="content">
		<div style="text-align: center; font-family: sans-serif; font-size: larger">
  			<h3>
				<b>Welcome</b>
			</h3>
  		</div>

		<div class="slideshow-container">

			<div class="mySlides">
 				 <div class="numbertext">1 / 3</div>
  					<img src="/images/pic1.jpg" style="width: 100%">
				</div>

				<div class="mySlides">
  					<div class="numbertext">2 / 3</div>
  					<img src="/images/pic2.jpg" style="width: 100%">
				</div>

				<div class="mySlides">
  					<div class="numbertext">3 / 3</div>
  					<img src="/images/pic3.jpg" style="width: 100%">
				</div>

				<a class="prev" onclick="plusSlides(-1)">❮</a>
				<a class="next" onclick="plusSlides(1)">❯</a>

		</div>
		<br>

		<div style="text-align: center">
  			<span class="dot" onclick="currentSlide(1)"></span> 
  			<span class="dot" onclick="currentSlide(2)"></span> 
  			<span class="dot" onclick="currentSlide(3)"></span> 
		</div>
		
		<script>
			let slideIndex = 1;
			showSlides(slideIndex);

			function plusSlides(n) {
				showSlides(slideIndex += n);
			}

			function currentSlide(n) {
				showSlides(slideIndex = n);
			}

			function showSlides(n) {
				let i;
				let slides = document.getElementsByClassName("mySlides");
				let dots = document.getElementsByClassName("dot");
				for (i = 0; i < slides.length; i++) {
					slides[i].style.display = "none";
				}
				slideIndex++;
				if (slideIndex > slides.length) {
					slideIndex = 1
				}
				slides[slideIndex - 1].style.display = "block";

				setTimeout(showSlides, 10000);
			}
		</script>

		<div id="mySidenav" class="sidenav">
  			<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  			<a href="#">home</a>
  			<a href="#">About Us</a>
  			<a href="#">Contact Us</a>
  			<a href="#">Login</a>
		</div>
</jsp:attribute>
</mp:master>