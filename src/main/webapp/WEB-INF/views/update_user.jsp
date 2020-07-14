<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>RegistrationForm_v1 by Colorlib</title>
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
				<form:form action="save" modelAttribute="users" method="post">
						<h3 class="text-center">
								<span class="text-success"> ${success}</span> <span
									class="text-error text-center">${error}</span>
						</h3>
						<h1 class="section-heading mb-4">
              				<span class="section-heading-upper">New User</span>
               				<span class="section-heading-lower">Register</span>
            				</h1>
            				
            				 <tr>
                    			<td>ID: </td>
                   				 <td>${user.id} <form:hidden path="id"/>
                   				 </td>
               				 </tr>      	
						<div class="control-group">
								<label class="control-label" for="fname"></label>
								<div class="controls">
									<form:input path="fname" placeholder="First Name"  class="zmdi zmdi" />
									<div class="has-error">
										<form:errors path="fname" class="text-error" />
									</div>
								</div>

							</div>

							<div class="control-group">
								<label class="control-label" for="lname"></label>
								<div class="controls">
									<form:input path="lname" placeholder="Last Name"  class="zmdi zmdi" />
									<div class="has-error">
										<form:errors path="lname" class="text-error" />
									</div>
								</div>
							</div>
							<div class="control-group ${hidden}">
								<label class="control-label" for="inputText"></label>
								<div class="controls">
									<form:input type="email" path="email" placeholder="Email"  class="zmdi zmdi-email" />
									<div class="has-error">
										<form:errors path="email" class="text-error" />
									</div>
								</div>

							</div>
							<div class="control-group" ${hidden}>
								<label class="control-label" for="password"></label>
								<div class="controls">
									<form:input type="password" path="password" placeholder="Password"  class="zmdi zmdi-password" />
									<div class="has-error">
										<form:errors path="password" class="text-error" />
									</div>
								</div>

							</div>

							<div class="control-group" ${hidden}>
								<label class="control-label" for="repeatpass"></label>
								<div class="controls">
									<form:input type="password" path="repeatpass" placeholder="Repeatpassword"  class="zmdi zmdi"/>
									<div class="has-error">
										<form:errors path="repeatpass" class="text-error" />
									</div>
								</div>

							</div>
							<div class="control-group">
								<label class="control-label" for="phone"></label>
								<div class="controls">
									<form:input path="phone" placeholder="Phone"  class="zmdi zmdi-phone" />
									<div class="has-error">
									
										<form:errors path="phone" class="text-error" />
									</div>
								</div>
							</div>
							<br>
							<div class="control-group">
								<div class="controls">
									<button type="submit" id="submit" class="zmdi zmdi">Submit</button>&ensp;
									<a href="login" data-dismiss="modal" aria-hidden="true" data-toggle="modal">Cancel</a>

								</div>

							</div>
						</form:form>
						
							
					
			</div>
		</div>
		
	</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>