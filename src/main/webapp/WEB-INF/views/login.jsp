
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.io.*,java.util.*" %>



<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Login</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="static/loginfonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="static/logincss/style.css">
	</head>

	<body>
		
							
		<jsp:include page="homeHeader.jsp"/>
		<div class="wrapper" style="image: url('static/img/back1.jpg');">
			<div class="inner">
				<div class="image-holder">
					<img src="static/img/mac.jpg" alt="">
				</div>
				<form action="login" method="post" class="form-horizontal">
				<h1 class="section-heading mb-4">
               		<span class="section-heading-lower">Log In</span>
            	</h1>
            			
							
                  <h3 class="text-center">
                  <span class="text-success"> ${success}</span>
                  <span class="alert-error">${error}</span>
                  </h3>
                  <div class="control-group">
                    <label class="control-label" for="inputText"></label>
                    <div>
                      <input type="email" name="email" id="username" placeholder="Email">
                      <i class="zmdi zmdi-email"></i>
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="password"></label>
                    <div class="controls">
                      <input type="password" name="password" id="pass" placeholder="Password">
                      <i class="zmdi zmdi-lock"></i>
                    </div>
                  </div>
                  <br>
                  <div class="controls">
                      <button type="submit" id="submit" class="zmdi zmdi">Sign in</button><br><br>
                      	<a href="register" data-dismiss="modal" aria-hidden="true" data-toggle="modal">Sign Up</a>
                    </div>
                    <br>
                    <p class="aligncenter margintop20">
                      Forgot password? <a href="" data-dismiss="modal" aria-hidden="true" data-toggle="modal">Reset</a>
                    </p>
                  </div>
                  </div>
                </form>
		
	</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html> 