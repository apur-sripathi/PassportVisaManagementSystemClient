<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

       <%@ taglib tagdir="/WEB-INF/tags/" prefix="mp"%>
<mp:master title="insert">
<jsp:attribute name="head">
<link rel="stylesheet" href="css/style.css"> 
</jsp:attribute>
<jsp:attribute name="content">
<div class="bg-light">
    <div class="container">
        <div class="row justify justify-content-center">
            <div class="col-11 col-md-8 col-lg-6 col-xl-5">
                <form class="" onsubmit="event.preventDefault()">
                    <div class="card bg-light">
                        <div class="row mt-0">
                            <div class="col-md-12 ">
                                <h4 class="">Contact Us</h4>
                                <p>Use the form below to share your questions, ideas, comments and feedback</p>
                            </div>
                        </div>
                        <div class="form-group row mb-2">
                            <div class="col-md-12 mb-0">
                                <p class="mb-1">Email</p> <input id="e-mail" type="text" placeholder="Enter your email" name="email" class="form-control input-box rm-border">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12 mb-2">
                                <p class="mb-1">Message</p> <textarea id="message" type="text" placeholder="Enter your message" name="message" class="form-control input-box rm-border"></textarea>
                            </div>
                        </div>
                        <div class="form-group row justify-content-center mb-0">
                            <div class="col-md-12 px-3"> <input type="submit" value="Submit" class="btn btn-block btn-purple rm-border"> </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</jsp:attribute> 
</mp:master>
