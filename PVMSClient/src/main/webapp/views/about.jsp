<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib tagdir="/WEB-INF/tags" prefix="mp" %>
    
    <mp:master title="About US">
    
    	<jsp:attribute name="head"><link rel="stylesheet" href="style/about.css"></jsp:attribute>
    	<jsp:attribute name="content">
    	
    	<div class="about-section">
  <h2 style="color: orange; font-size: x-large;"><b>OUR TEAM</b></h2>


</div>

<!-- <h2 style="text-align:center;color: white">Our Team</h2> -->
<div class="row">
  <div class="column">
    <div class="card">
      <img src="/images/ap.png" alt="Jane" style="width:80%">
      <div class="container">
        <h3 style="color: blue"><b>Apur</b></h3>
        <p class="title">Software Engineer</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p><b>apursripathi@gmail.com</b></p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>



 <div class="column">
    <div class="card">
      <img src="/images/ma.png" alt="Mike" style="width:78%">
      <div class="container">
        <h3 style="color: blue"><b>Maremma</b></h3>
        <p class="title">Software Engineer</p>
        <p>lorem ipsum ipsum lorem.</p>
        <p><b>maremmasappidi@gmail.com</b></p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
      <img src="/images/m.png" alt="Mike" style="width:82%">
      <div class="container">
        <h3 style="color: blue"><b>Mounika</b></h3>
        <p class="title">Software Engineer</p>
        <p>lorem ipsum ipsum lorem.</p>
        <p><b>mounika@gmail.com</b></p>
        <p><button class="button">Contact</button></p>
      </div>
      </div>
  </div>
      <div class="column">
    <div class="card">
      <img src="/images/abc.png" alt="Mike" style="width:84%">
      <div class="container">
        <h3 style="color: blue"><b>Abhi</b></h3>
        <p class="title">Software Engineer</p>
        <p>lorem ipsum ipsum lorem.</p>
        <p><b>abhi@gmail.com</b></p>
        <p><button class="button">Contact</button></p>
      </div>
      </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="/images/vi.png" alt="John" style="width:88%">
      <div class="container">
        <h3 style="color: blue"><b>Vivek</b></h3>
        <p class="title">Software Engineerr</p>
        <p>lorem ipsum ipsum lorem.</p>
        <p><b>vivek@gamil.com</p></b>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
  </div>
    	</jsp:attribute>
    	
    </mp:master>