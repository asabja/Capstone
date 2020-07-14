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

 <jsp:include page="adminHeader.jsp"/>
  <section class="page-section about-heading">
    <div class="container">
      <div class="about-heading-content">
        <div class="row">
          <div class="col-xl-14 col-lg-12 mx-auto">
            <div class="bg-faded rounded p-5">
              <h2 class="section-heading mb-4">
                <span class="section-heading-upper"> Cassis Order</span>
                <span class="section-heading-lower">Search</span>
              </h2>	
            <div align="center">
            <table class="table table-striped table-hover table-bordered">
            <thead>
            <tr class="bg">
            	<th>ID</th>
                <th>Costumer Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Product</th>
                <th>Quantity</th>
               
                <th>Notes</th>
               
            </tr>
            </thead>
            <c:forEach items="${result}" var="order">
                <tr>

                    <td>${order.orderId}</td>
                    <td>${order.customerName}</td>
                    <td>${order.customerEmail}</td>
                    <td>${order.phone}</td>
                    <td>${order.product}</td>
                    <td>${order.quantity}</td>
                  
                    <td>${order.notes}</td>   
                                        
                </tr>
            </c:forEach>
             </table>
             <br>
             <h5><a href="orderTable">Return to Table</a></h5>    
        	</div>
  			</div>
          </div>
        </div>
        </div>
      </div>
  </section>
  </body>
  </html>
  
   
    <!-- Bootstrap core JavaScript -->
  <script src="static/vendor/jquery/jquery.min.js"></script>
  <script src="static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  
   