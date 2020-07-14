<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.io.*,java.util.*"%>

<c:if test="${empty loggedInUser}">
	<%response.sendRedirect("login");%>
</c:if>

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

</head>

<body>
		<!-- end toggle top area -->
		<!-- start header -->
		<jsp:include page="header.jsp" />
		<!-- end header -->
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="span4">
						<div class="inner-heading">
							<h2>Users</h2>
						</div>
					</div>
					<div class="span8">
						<ul class="breadcrumb">
							<li class="nav-item text-left">
								<form class="form-search" action="search" method="post">
									<input name="name" placeholder="Type something" type="text"
										class="input-medium search-query">
									<button type="submit" class="btn btn-square btn-theme">Search</button>
								</form>
							</li>
							<li><a href="#"><i class="icon-home"></i></a><i
								class="icon-angle-right"></i></li>
							<li><a href="index">Home</a><i class="icon-angle-right"></i></li>
							<li class="active">Users</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<div class="container">
				<!-- Default table -->
				<div class="row">
					<div class="span12">
						<h4>User Lists ${msg} ${success}</h4>
						<table class="table table-striped">
							<thead>
								<tr>
									<th>#</th>
									<th>Image</th>
									<th><input type="text" id="searchnow"
										placeholder=" Filter Names (${users.size()}) "
										class="form-control"></th>
									<th>Email</th>
									<th>Phone</th>
									<c:if test="${loggedInUser.role eq 'ADMIN'}">
										<th>Role</th>
										<th>Action</th>
									</c:if>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${alldb}">
									<tr>
										<td>${alldb.indexOf(item)+1}.</td>
										<td>
											<div class="text-center">
												<c:if test="${not empty item.image}">
													<img
														src="static/img.2/users/${item.id}/profile/${item.image}"
														alt="Profile Image" style="height: 50px; width: auto;">
													<br>
												</c:if>
												<c:if test="${empty item.image}">
                   								 No Image
                   								 </c:if>
											</div>
										</td>
										<td>${item.fname} ${item.lname}</td>
										<td>${item.email}</td>
										<td>${item.phone}</td>
										<c:if test="${loggedInUser.role eq 'ADMIN'}">
											<td>
												<form method="POST" action="editrole">
													<input type="hidden" name="id" value="${item.id}" /> <select
														onchange="this.form.submit()" name="role"
														class="form-control">
														<option value="${item.role}">${item.role}</option>
														<option value="USER">USER</option>
														<option value="DBA">DBA</option>
														<option value="ADMIN">ADMIN</option>
													</select>
												</form>
											</td>
										  	<td><a href="update?id=${item.id}" class="text-success">
													<i class="icon-pencil"></i>
											</a>  <a href="delete?id=${item.id}"
												onclick="confirmed(); return false;"> <i
													class="icon-trash"></i></a></td>
										</c:if>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>

				</div>
				<!-- divider -->
				<div class="row">
					<div class="span12">
						<div class="solidline"></div>
					</div>
				</div>
				<!-- end divider -->
			</div>
		</section>
		<footer>
			<div class="container">
				<div class="row">
					<div class="span3">
						<div class="widget">
							<h5 class="widgetheading">Browse pages</h5>
							<ul class="link-list">
								<li><a href="#">About our company</a></li>
								<li><a href="#">Our services</a></li>
								<li><a href="#">Meet our team</a></li>
								<li><a href="#">Explore our portfolio</a></li>
								<li><a href="#">Get in touch with us</a></li>
							</ul>
						</div>
					</div>
					<div class="span3">
						<div class="widget">
							<h5 class="widgetheading">Important stuff</h5>
							<ul class="link-list">
								<li><a href="#">Press release</a></li>
								<li><a href="#">Terms and conditions</a></li>
								<li><a href="#">Privacy policy</a></li>
								<li><a href="#">Career center</a></li>
								<li><a href="#">Flattern forum</a></li>
							</ul>
						</div>
					</div>
					<div class="span3">
						<div class="widget">
							<h5 class="widgetheading">Flickr photostream</h5>
							<div class="flickr_badge">
								<script type="text/javascript"
									src="http://www.flickr.com/badge_code_v2.gne?count=8&amp;display=random&amp;size=s&amp;layout=x&amp;source=user&amp;user=34178660@N03"></script>
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
			</div>
			<div id="sub-footer">
				<div class="container">
					<div class="row">
						<div class="span6">
							<div class="copyright">
								<p>
									<span>&copy; Flattern - All right reserved.</span>
								</p>
								<div class="credits">
									<!--
                    All the links in the footer should remain intact.
                    You can delete the links only if you purchased the pro version.
                    Licensing information: https://bootstrapmade.com/license/
                    Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Flattern
                  -->
									Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
								</div>
							</div>
						</div>
						<div class="span6">
							<ul class="social-network">
								<li><a href="#" data-placement="bottom" title="Facebook"><i
										class="icon-facebook icon-square"></i></a></li>
								<li><a href="#" data-placement="bottom" title="Twitter"><i
										class="icon-twitter icon-square"></i></a></li>
								<li><a href="#" data-placement="bottom" title="Linkedin"><i
										class="icon-linkedin icon-square"></i></a></li>
								<li><a href="#" data-placement="bottom" title="Pinterest"><i
										class="icon-pinterest icon-square"></i></a></li>
								<li><a href="#" data-placement="bottom" title="Google plus"><i
										class="icon-google-plus icon-square"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
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
	
	<script>
    function confirmed(){
            if (confirm('You are about to delete, Do you want to proceed?')) {
                  document.getElementById("del").submit();
                  return true;
            } else {
               return false;
            }
         }

    
    $("#searchnow").keyup(function () {
        var value = this.value.toLowerCase().trim();

        $("table tr").each(function (index) {
            if (!index) return;
            $(this).find("td").each(function () {
                var id = $(this).text().toLowerCase().trim();
                var not_found = (id.indexOf(value) == -1);
                $(this).closest('tr').toggle(!not_found);
                return not_found;
            });
        });
    });
    </script>

</body>

</html>