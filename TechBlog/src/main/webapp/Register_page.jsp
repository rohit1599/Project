<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.tech.blog.entities.Message" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register page</title>
<!-- css -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
.banner-backgroundd {
	clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 89%, 67% 99%, 31% 90%, 0 94%, 0 0);
}
</style>



</head>
<body>


	<!-- navbar -->

	<%@include file="navbar.jsp"%>

	<main class="primary-background p-3 banner-background "
		style="padding-bottom: 90px;">
		<div class="container">

			<div class="col-md-6 offset-md-3" style="height: 100vh">
				<div class="card">
					<div class="card-header bg-dark text-white text-center ">
						<span class="fa fa-user-plus fa-2x"></span> <br>

						<p>Register here</p>
					</div>
					<%
						Message m = (Message) session.getAttribute("msg");
						if (m != null) {
						%>
						<div class="alert <%=m.getCssClass() %>" role="alert">
							<%=m.getContent() %>
						</div>
						<%
							session.removeAttribute("msg");
						
						}
						%>
					
					<div class="card-body">

						<form id="registration-form" action="RegisterServlet" method="post">

							<div class="form-group">
								<label for="user_name">User name</label> <input name="user_name"
									type="text" class="form-control" id="user_name"
									placeholder="Enter Name">
							</div>

							<div class="form-group">

								<label for="exampleInputEmail1">Email address</label> <input
									name="user_email" type="email" class="form-control"
									id="user_email" aria-describedby="emailHelp"
									placeholder="Enter email"> <small id="emailHelp"
									class="form-text text-muted">We'll never share your
									email with anyone else.</small>
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									name="user_password" type="password" class="form-control"
									id="user_password" placeholder="Password">
							</div>

							<div class="form-group">
								<label for="gender">Select Gender</label><br> <input
									type="radio"  name="user_gender" value="Male">Male <input
									type="radio"  name="user_gender" value="Female">Female
							</div>

							<div class="form-group">
								<textarea class="form-control" name="user_about" rows="3"
									placeholder="Enter something about yourself"></textarea>
							</div>

							<div class="form-check">
								<input name="check_box" type="checkbox" class="form-check-input"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Accept term and conditions</label>
							</div>
							
							
							<button id="submit-btn" type="submit" class="btn btn-primary">Sign Up</button>
						</form>

					</div>
				</div>
			</div>


		</div>

	</main>




	<!-- java script -->
	<script src="https://code.jquery.com/jquery-3.7.0.min.js"
		integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

	<script src="js/myjs.js" type="text/javascript"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
	<script type="text/javascript">
	// Get the form element and attach an event listener for form submission
	var registrationForm = document.getElementById('registration-form');
	registrationForm.addEventListener('submit', function(event) {
	  // Prevent form submission
	  event.preventDefault();

	  // Get the form input values
	  var username = document.getElementById('user_name').value;
	  var email = document.getElementById('user_email').value;
	  var password = document.getElementById('user_password').value;
	  var gender = document.querySelector('input[name="user_gender"]:checked');
	  var checkbox = document.querySelector('input[name="check_box"]:checked');

	  // Check if all fields are filled
	  if (username.trim() === '' || email.trim() === '' || password.trim() === '' || !gender) {
	    alert('Please fill in all fields');
	   return;
	  }
	  //check checkbox have checked
	  if (!checkbox) {
		alert('please accept term and condition');
		return;
	}

	  // Check if password has at least 8 characters
	  if (password.length < 8) {
	    alert('Password should be at least 8 characters long');
	    return;
	  }

	  // If all validations pass, you can proceed with form submission
	  alert('Registration successful! \n Go to the login page');
	  registrationForm.submit();
	});

	</script>

</body>
</html>