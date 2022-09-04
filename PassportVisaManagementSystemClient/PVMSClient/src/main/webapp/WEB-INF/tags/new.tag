<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="title" required="true" rtexprvalue="true"%>
<%@ attribute name="head" fragment="true"%>
<%@ attribute name="content" fragment="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>PASSPORT VISA MANAGEMENT SYSTEM</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    
    
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
<link rel="Stylesheet" href="/style/newcss.css">
</head>


<body style="width:100%">
<div id="mainNavigation">
  <nav role="navigation">
   
  </nav>
  <div class="navbar-expand-md">
    <div class="navbar-dark text-center my-2">
      <button class="navbar-toggler w-75" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span> <span class="align-middle">Menu</span>
      </button>
    </div>
    <div class="text-center mt-3 collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav mx-auto ">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="afterlogin">HOME</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="applypassport">Apply Passport</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="issuepassport">Re-issue Passport</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="applyvisa">Apply Visa</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="cancelvisa">Cancel Visa</a>
        </li>
       <!--  <li class="nav-item" style="float: right">
          <a class="nav-link" href="#">Logout</a>
        </li> -->
        <button>
    <li class="nav-item" style="float: right">
          <a class="nav-link" href="/logout"><span>Logout</span></a>
        </li>
        </button>
      </ul>
    </div>
  </div>
</div>
<jsp:invoke fragment="head"></jsp:invoke>
<div style="position:absolute;left:25%;top:15%;width:65%;height:85%">
<c:if test="${empty sessionScope.username}">
		<c:redirect url="login"></c:redirect>
	</c:if>
		Welcome <c:out value="${sessionScope.username}"></c:out>!!!
<jsp:invoke fragment="content"></jsp:invoke>
</div>
<!-- style="position:relative;left:200px;top:40%;width:100%;height:30%" -->
</body>
</html>
