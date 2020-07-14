<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.io.*,java.util.*" %>


<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title> Cassis </title>

  <!-- Bootstrap core CSS -->
  <link href="static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="static/css/business-casual.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	
<!-- start header -->
<jsp:include page="homeHeader.jsp" />
 <!-- end header -->
<section class="page-section about-heading">
    <div class="container">
   
      <div class="about-heading-content">
        <div class="row">
          <div class="col-xl-9 col-lg-10 mx-auto">
            <div class="bg-faded rounded p-5">
              <h2 class="section-heading mb-4">
                <span class="section-heading-upper">My</span>
                <span class="section-heading-lower">Profile</span>
             	 </h2>	
             	 		<h4>
							
							<c:if test="${empty loggedInUser.image}">
							<a href="#" data-toggle="modal" data-target="#add-images"
								class="btn btn-danger"> Add Image</a>
						</c:if>
						</h4>
						<p class="text-info">
						<h1>&nbsp;&nbsp;${msg}${success}</h1>
						</p> 
						<ul class="nav nav-tabs bold">
							<li class="active"><a data-toggle="tab"> 
							<i class="icon-info-sign"></i> <strong>Contact Info</strong> &nbsp;&nbsp;&nbsp;
							</a></li>
							

							<li class="">
							<a  href="update_user">Update Profile</a>
							
							</li>
							
							<li class=""><a href="#three" data-toggle="tab"></a>
						</ul>
						<div class="tab-content">
						<br>
							<div class="tab-pane active" id="one">
								<p>
									${loggedInUser.fname} ${loggedInUser.lname}<br><br>
									${loggedInUser.phone} <br><br>${loggedInUser.email}
									<%-- ${loggedInUser.image} --%>
								
								</p>
								<a href="index" class="btn btn-success " style="float:left;">Log Out</a>
							</div>
						</div>
					</div>
					</div>
					
	<div id="add-images" class="modal styled hide fade" tabindex="-1"
		role="dialog" aria-labelledby="mySignupModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">×</button>
			<h4 class="text-center" id="mySignupModalLabel">
				Add <strong>Pictures</strong>
			</h4>
		</div>
		<div class="modal-body">
			<form enctype="multipart/form-data" action="addimages" method="POST"
				class="form-horizontal">
				<div class="control-group">

					<div class="controls">
						<label>Please select:</label> <input type="hidden" name="id"
							value="${loggedInUser.id}"> <input id="file" type="file"
							id="two" name="file">
					</div>
				</div>

				<div class="control-group">
					<div class="controls">
						<button type="submit" class="btn">Upload</button>
					</div>
				</div>
			</form>
			</div>
			
		</div>
	</div>
</div>
</div>
</div>
</section>
		
			
	
	<a href="#" class="scrollup"><i
		class="icon-chevron-up icon-square icon-32 active"></i></a>
				
		
	<footer class="footer text-faded text-center py-5">
    <div class="container">
      <p class="m-0 small">Copyright &copy; Your Website 2019</p>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="static/vendor/jquery/jquery.min.js"></script>
  <script src="static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	

</body>

</html>