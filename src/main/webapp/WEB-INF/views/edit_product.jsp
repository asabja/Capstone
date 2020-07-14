 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  

  <title> Cassis </title>

  <!-- Bootstrap core CSS -->
  <link href="static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="static/css/business-casual.min.css" rel="stylesheet">

</head>

<body>
<section class="page-section about-heading">
    <div class="container" align="center">
          <img class="img-fluid rounded about-heading-img mb-3 mb-lg-0-center" src="static/img/croissant.jpg">
    
      <div class="about-heading-content">
        <div class="row">
          <div class="col-xl-9 col-lg-10 mx-auto">
            <div class="bg-faded rounded p-5">
              <h2 class="section-heading mb-4">
                <span class="section-heading-upper">Edit Product</span>
                <span class="section-heading-lower">Admin</span>
              </h2>	
   			<div align="center">
        	<form:form action="new" method="post" modelAttribute="product">
            <table >
                <tr>
                    <td>ID: </td>
                    <td>${product.id}
                        <form:hidden path="id"/>
                    </td>
                </tr>        
                <tr>
                    <td>Name: </td>
                    <td><form:input path="productName" /></td>
                </tr>
                <tr>
                    <td>Category: </td>
                    <td><form:input path="category" /></td>
                </tr>
                <tr>
                    <td>Description: </td>
                    <td><form:input path="description" /></td>
                </tr>
                 <tr>
                    <td>Quantity: </td>
                    <td><form:input path="inStock" /></td>
                </tr>  
                 <tr>
                    <td>Daily Waste </td>
                    <td><form:input path="dailyWaste" /></td>
                </tr>      
                  
                <tr>
                    <td>Price: </td>
                    <td><form:input path="price" /></td>
                </tr> 
                
                <tr>
                    <td colspan="2"><input type="submit" value="save" >
                     <a href="productInventory" data-dismiss="modal" aria-hidden="true" data-toggle="modal">&nbsp;&nbsp;Cancel</a></td>
                </tr>                    
            </table>
        </form:form>
        </div>
          </div>
        </div>
      </div>
    </div>
    </div>
  </section>
</body>
</html>
