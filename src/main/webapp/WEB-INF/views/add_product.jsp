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
    <div class="container">
      <img class="img-fluid rounded about-heading-img mb-3 mb-lg-0" src="static/img/mac3.jpg" alt="">
      <div class="about-heading-content">
        <div class="row">
          <div class="col-xl-9 col-lg-10 mx-auto">
            <div class="bg-faded rounded p-5">
              <h2 class="section-heading mb-4">
                <span class="section-heading-upper">Add New Product</span>
                <span class="section-heading-lower">Admin</span>
              </h2>	
        	<form:form action="new" method="post" modelAttribute="product">
            <table border="0" cellpadding="5">
                <tr>
                    <td>Product Name: </td>
                    <td><form:input path="productName"  required="productName"/></td>
                </tr>
                <tr>
                    <td>Price: </td>
                    <td><form:input path="price" required="price" /></td>
                </tr>
                 <tr>
                    <td>Quantity </td>
                    <td><form:input path="inStock" required="inStock"/></td>
                </tr>
                <tr>
                 <tr>
                    <td>Daily Waste </td>
                    <td><form:input path="dailyWaste" /></td>
                </tr>
                    <td>Description: </td>
                    <td><form:input path="description" required="description"/></td>
                </tr> 
                <tr>
                <td></td>

					<div>
  						<input type="radio" id="viennoiserie" name="category" value="Viennoiserie">
  						<label for="category">Viennoiserie</label>
					</div>

					<div>
  						<input type="radio" id="petitgateaux" name="category" value="PetitGateau">
  						<label for="category">Petit Gateau</label>
					</div>

					<div>
 						 <input type="radio" id="cookies" name="category" value="cookies">
 						 <label for="category">Mac's & Cookies</label>
					</div>
               
                  </tr>
                <tr>  
                    <td colspan="2"><input type="submit" value="Save">
                    <a href="productInventory" data-dismiss="modal" aria-hidden="true" data-toggle="modal">&nbsp;&nbsp;Cancel</a></td>
                </tr>                    
            </table>
        </form:form>	 	
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  
 