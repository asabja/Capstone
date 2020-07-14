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

  <title>Business Casual - Start Bootstrap Theme</title>

  <!-- Bootstrap core CSS -->
  <link href="static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="static/css/business-casual.min.css" rel="stylesheet">

</head>

<body>

   <jsp:include page="homeHeader.jsp"/>
 
  <section class="page-section">
    <div class="container">
      <div class="product-item">
        <div class="product-item-title d-flex">
          <div class="bg-faded p-5 d-flex ml-auto rounded">
            <h2 class="section-heading mb-5">
              <span class="section-heading-upper">Perfection</span>
              <span class="section-heading-lower">Petit Gateau</span>
            </h2>
          </div>
        </div>
        <img class="product-item-img mx-auto d-flex rounded img-fluid mb-3 mb-lg-0" src="static/img/Petit.jpg" alt="">
        <div class="product-item-description d-flex mr-auto">
          <div class="bg-faded p-5 rounded">
            <p class="mb-0"><strong>Enjoy the delicious and delicate sweets. Every time you order from us, we guarantee that it will be an experience worth having</strong></p>
          <br>
         
           <ul class="list-unstyled text-left mx-auto">
                <li class="list-unstyled-item list-hours-item d-flex">
                  <h4 class= "section-heading-upper" >Citron</h4>
                  <span class="ml-auto">$9.99</span>
                  <li class="list-unstyled-item list-hours-item d-flex">
                  <p>Lemon joconde with lemon cremoux and almond croquant</p> 
                </li>
    			<br>
                </li>
                <li class="list-unstyled-item list-hours-item d-flex">
                  <h4 class= "section-heading-upper" >Fraise Gateau</h4>
                  <span class="ml-auto">$9.99</span>
                  <li class="list-unstyled-item list-hours-item d-flex">
                  Strawberry mousse, white chocolate cremoux, Strawberry Daquoise
                </li>  
                <br>
                <br>
                </li>
                <li class="list-unstyled-item list-hours-item d-flex">
                  <h4 class= "section-heading-upper" >Ananas Gateau</h4>
                  <span class="ml-auto">$9.99</span>
                  <li class="list-unstyled-item list-hours-item d-flex">
                  Vanilla Mousse, Pinneaple gelee, Almond praline
                </li>
                <br>
                <li class="list-unstyled-item list-hours-item d-flex">
                  <h4 class= "section-heading-upper" >Decadent Chocolate</h4>
                  <span class="ml-auto">$9.99</span>
                  <li class="list-unstyled-item list-hours-item d-flex">
                 	60% Valrhona Mousse, chocolate genoise with hazelnut praline
                  </li>
               
              </ul>
          
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="page-section">
    <div class="container">
      <div class="product-item">
        <div class="product-item-title d-flex">
          <div class="bg-faded p-5 d-flex mr-auto rounded">
            <h2 class="section-heading mb-0">
              <span class="section-heading-upper">Delicious Treats, Good Eats</span>
              <span class="section-heading-lower">  Viennoiserie  </span>
            </h2>
          </div>
        </div>
        <img class="product-item-img mx-auto d-flex rounded img-fluid mb-3 mb-lg-0" src="static/img/bread.jpg" alt="">
        <div class="product-item-description d-flex ml-auto">
          <div class="bg-faded p-5 rounded">
            <p class="mb-0"><strong>Our seasonal menu features delicious baked goods. We source our ingredients from local, organic farms whenever possible, alongside premium vendors for specialty goods.</strong></p>
           <ul class="list-unstyled  text-left mx-auto">
           <br>
                <li class="list-unstyled-item list-hours-item d-flex">
                  <h4 class= "section-heading-upper" >Croissant(Plain)</h4>
                  <span class="ml-auto">$5.99</span>
                <li class="list-unstyled-item list-hours-item d-flex">
                  Sweet laminated dough 
                </li>
                </li>
                <br>
                <li class="list-unstyled-item list-hours-item d-flex">
                  <h4 class= "section-heading-upper" >Pan au Chocolae</h4>
                  <span class="ml-auto">$6.99</span>
                 <li class="list-unstyled-item list-hours-item d-flex">
                  Sweet laminated dough filled with chocolate  
                </li>
                </li>
                <br>
                <li class="list-unstyled-item list-hours-item d-flex">
                  <h4 class= "section-heading-upper" >Danish</h4>
                  <span class="ml-auto">$5.99</span>
                 <li class="list-unstyled-item list-hours-item d-flex">
                  Laminated bread filled with Strawberry and apricot preserves.
                </li>
                </li>
                <br>
                 <li class="list-unstyled-item list-hours-item d-flex">
                  <h4 class= "section-heading-upper" >Brioche</h4>
                  <span class="ml-auto">$7.99</span>
                 <li class="list-unstyled-item list-hours-item d-flex">
                  Sweet soft bread loaf.
                </li>
                
              </ul> 
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="page-section">
    <div class="container">
      <div class="product-item">
        <div class="product-item-title d-flex">
          <div class="bg-faded p-5 d-flex ml-auto rounded">
            <h2 class="section-heading mb-0">
              <span class="section-heading-upper">Tea Time</span>
              <span class="section-heading-lower">Cookies & Mac's</span>
            </h2>
          </div>
        </div>
        <img class="product-item-img mx-auto d-flex rounded img-fluid mb-3 mb-lg-0" src="static/img/mac2.jpg" alt="">
        <div class="product-item-description d-flex mr-auto">
          <div class="bg-faded p-5 rounded">
            <p class="mb-0"><strong>Our delicacies from around the world. We always try to bring something new and fresh to your table. Ready for tea time?</strong></p>
        <ul class="list-unstyled  text-left mx-auto">
           <br>
                <li class="list-unstyled-item list-hours-item d-flex">
                  <h4 class= "section-heading-upper" > French Macarons</h4>
                  <span class="ml-auto">$2.99</span>
                <li class="list-unstyled-item list-hours-item d-flex">
                  Almond Cookies(Vanilla, Chocolate, Starwberry,Lemon)
                </li>
                </li>
                <br>
                <li class="list-unstyled-item list-hours-item d-flex">
                  <h4 class= "section-heading-upper" >B.B Financier</h4>
                  <span class="ml-auto">$3.99</span>
                 <li class="list-unstyled-item list-hours-item d-flex">
                  Brown Butter minicake.
                </li>
                </li>
                <br>
                <li class="list-unstyled-item list-hours-item d-flex">
                  <h4 class= "section-heading-upper" >Chocolate Chip</h4>
                  <span class="ml-auto">$3.99</span>
                 <li class="list-unstyled-item list-hours-item d-flex">
                  Special cookie filled with dark chocolate and toffe bites
                </li>
                </li>
                <br>
                 <li class="list-unstyled-item list-hours-item d-flex">
                  <h4 class= "section-heading-upper" >Bombs</h4>
                  <span class="ml-auto">$4.99</span>
                 <li class="list-unstyled-item list-hours-item d-flex">
                  Profiterol Bombs filled with vanilla  custard cream
                </li>
                
              </ul> 
          
        
        
          </div>
        </div>
      </div>
    </div>
  </section>

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
