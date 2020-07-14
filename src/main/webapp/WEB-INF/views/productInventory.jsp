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
          <div class="col-xl-18 col-lg-16 mx-auto">
            <div class="bg-faded rounded p-5">
              <h2 class="section-heading mb-4">
                <span class="section-heading-upper"> Cassis Store Inventory</span>
                <span class="section-heading-lower">Admin</span>
              </h2>	
            <div align="center">
            <form method="get" action="search">
        		<input type="text" name="keyword" value="${keyword}" required/> &nbsp;
        		<input type="submit" value="Search" placeholder="Search"/>
        		<!-- <input type="button" value="Clear" onclick="clearFilter()" /> -->
    		</form>
    		<br> 
    		
            <table class="table table-striped table-hover table-bordered">
            <thead>
            <tr class="bg">
            	<th>ID</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Description</th>
                <th>Price&nbsp;USD</th>
                <th>Stock</th>
                <th>Daily Waste&nbsp;ea.</th>
                <th>Action</th>
            </tr>
            </thead>
            <c:forEach items="${findProduct}" var="product">
                <tr>

                    <td>${product.id}</td>
                    <td>${product.productName}</td>
                    <td>${product.category}</td>
                    <td>${product.description}</td>
                    <td>${product.price}</td>
                    <td>${product.inStock}</td>  
                    <td>${product.dailyWaste}ea.</td>  
                     <td>
               			 <a href="/capstone/edit?id=${product.id}">Edit</a>
                			&nbsp;&nbsp;&nbsp;
                		<a href="/capstone/delete?id=${product.id}">Delete</a> 
            		</td>                     
                </tr>
            </c:forEach>
             </table>
             <br>
             <h5><a href="add_product">New Product</a></h5>    
        	</div>
  			</div>
          </div>
        </div>
        </div>
      </div>
       <!--  <script type="text/javascript">
      				function clearFilter(){
      					window.location = 'productInventory';
      								}
     				</script>		 -->
  </section>
  </body>
  </html>
  
   
    <!-- Bootstrap core JavaScript -->
  <script src="static/vendor/jquery/jquery.min.js"></script>
  <script src="static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  
   