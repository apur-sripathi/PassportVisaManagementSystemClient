<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<mp:new title="Profile">
<jsp:attribute name="head">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
	<link rel="stylesheet" href="/style/profile.css">
</jsp:attribute>
<jsp:attribute name="content">

<div class="container emp-profile">
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog" alt=""/>
                            <div class="file btn btn-lg btn-primary">
                                Change Photo
                                <input type="file" name="file"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h5>
                                        <c:out value="${sessionScope.user.fName }"></c:out>
                                    </h5>
                                    <h6>
                                        <c:out value="${sessionScope.user.citizenType }"></c:out>
                                    </h6>
                                    <p class="proile-rating"><span></span></p>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Visa</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Passport</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <input type="submit" class="profile-edit-btn" name="btnAddMore" value="Edit Profile"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-work">
                            <p>User Details</p>
                            <a href=""><c:out value="${sessionScope.user.fName }"></c:out></a><br/>
                            <a href=""><c:out value="${sessionScope.user.id }"></c:out></a><br/>
                            <a href=""><c:out value="${sessionScope.user.surName }"></c:out></a><br />
                            <a href=""><c:out value="${sessionScope.user.dob }"></c:out></a><br/>
                            <a href=""><c:out value="${sessionScope.user.address }"></c:out></a><br/>
                            <a href=""><c:out value="${sessionScope.user.contactNo }"></c:out></a><br/>
                            <a href=""><c:out value="${sessionScope.user.email }"></c:out></a><br/>
                            <a href=""><c:out value="${sessionScope.user.qualification }"></c:out></a><br/>
                            <a href=""><c:out value="${sessionScope.user.gender }"></c:out></a><br/>
                            <a href=""><c:out value="${sessionScope.user.citizenType }"></c:out></a><br/>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                       <c:if test="${empty sessionScope.visa}">
                                        	<c:out value="You Dont Have a Visa!!!"></c:out>
                                        </c:if>
                                        <c:if test="${not empty sessionScope.visa}">
                                        <c:forEach  var="l" items="${sessionScope.visa}">
                                        	<div class="row">
                                        
                                            	<div class="col-md-6">
                                                	<label>-----Visa-----</label>
                                            	</div>
                                            	<div class="col-md-6">
                                                <p></p>
                                            	</div>
                                        	</div>
                                        	<div class="row">
                                            	<div class="col-md-6">
                                                	<label>Visa Id</label>
                                            	</div>
                                            	<div class="col-md-6">
                                                	<p><c:out value="${l.visaId }"></c:out></p>
                                            	</div>
                                        	</div>
                                        	<div class="row">
                                            	<div class="col-md-6">
                                                	<label>Country</label>
                                            	</div>
                                            	<div class="col-md-6">
                                                	<c:if test="${l.country==1 }">
                                            			<p><c:out value="USA"></c:out></p>
                                            		</c:if>
                                            		<c:if test="${l.country==2 }">
                                            			<p><c:out value="CHINA"></c:out></p>
                                            		</c:if>
                                            		<c:if test="${l.country==3 }">
                                            			<p><c:out value="JAPAN"></c:out></p>
                                            		</c:if>
                                            	</div>
                                        	</div>
                                        	<div class="row">
                                            	<div class="col-md-6">
                                                	<label>Occupation</label>
                                            	</div>
                                            	<div class="col-md-6">
                                                	<c:if test="${l.occupation==1 }">
                                            			<p><c:out value="Student"></c:out></p>
                                            		</c:if>
                                            		<c:if test="${l.occupation==2 }">
                                            			<p><c:out value="Private Employee"></c:out></p>
                                            		</c:if>
                                            		<c:if test="${l.occupation==3 }">
                                            			<p><c:out value="Government Employee"></c:out></p>
                                            		</c:if>
                                            		<c:if test="${l.occupation==4 }">
                                            			<p><c:out value="Self Employee"></c:out></p>
                                            		</c:if>
                                            		<c:if test="${l.occupation==5 }">
                                            			<p><c:out value="Retired Employee"></c:out></p>
                                            		</c:if>
                                            	</div>
                                        	</div>
                                        	<div class="row">
                                            	<div class="col-md-6">
                                                	<label>Issue Date</label>
                                            	</div>
                                            	<div class="col-md-6">
                                                	<p><c:out value="${l.dateOfApplication }"></c:out></p>
                                            	</div>
                                        	</div>
                                        	<div class="row">
                                            	<div class="col-md-6">
                                                	<label>Expiry Date</label>
                                            	</div>
                                            	<div class="col-md-6">
                                                	<p><c:out value="${l.dateOfExpiry }"></c:out></p>
                                            	</div>
                                        	</div>
                                        	<div class="row">
                                            	<div class="col-md-6">
                                                	<label>Status</label>
                                            	</div>
                                            	<div class="col-md-6">
                                                	<p><c:out value="${l.status }"></c:out></p>
                                            	</div>
                                        	</div>
                                        </c:forEach>
                                    </c:if>
                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                        <c:if test="${empty sessionScope.passport}">
                                        	<c:out value="You Dont Have a Passport!!!"></c:out>
                                        </c:if>
                                        <c:if test="${not empty sessionScope.passport}">
                                        
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Passport Id</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><c:out value="${sessionScope.passport.passId }"></c:out></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Country</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><c:out value="${sessionScope.passport.country }"></c:out></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>State</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><c:out value="${sessionScope.passport.stateId.stateName }"></c:out></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>City</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><c:out value="${sessionScope.passport.cityId.cityName }"></c:out></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Type Of Service</label>
                                            </div>
                                            <div class="col-md-6">
                                            	<c:if test="${sessionScope.passport.typeOfService==1 }">
                                            		<p><c:out value="Normal"></c:out></p>
                                            	</c:if>
                                            	<c:if test="${sessionScope.passport.typeOfService==2 }">
                                            		<p><c:out value="Tatkal"></c:out></p>
                                            	</c:if>
                                                
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Booklet Type</label>
                                            </div>
                                            <div class="col-md-6">
                                            	<c:if test="${sessionScope.passport.bookletType==1 }">
                                            		<p><c:out value="30"></c:out></p>
                                            	</c:if>
                                            	<c:if test="${sessionScope.passport.bookletType==2 }">
                                            		<p><c:out value="60"></c:out></p>
                                            	</c:if>
                                                
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Issue Date</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><c:out value="${sessionScope.passport.issueDate}"></c:out></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Expiry Date</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><c:out value="${sessionScope.passport.expiryDate}"></c:out></p>
                                            </div>
                                        </div>
                                        
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Your Bio</label><br/>
                                        <p>Your detail description</p>
                                    </div>
                                </div>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </form>           
        </div>
</jsp:attribute>
</mp:new>