<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Jsp page</title>

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

	<!-- Nav bar -->

	<%@include file="navbar.jsp"%>

	<!-- //banner -->
	<div class="container-fluid p-0 m-0 primary-background">
		<div class="jumbotron primary-background text-white">
			<div class="container-fluid " style="color:black">
				<h3 class="display-3">Welcome To TechBlog</h3>
				<p>
					welcome to technical blog,world of technology.<br>
					"Programming languages are the magical spells that transform human
					imagination into digital reality." <br> <br>"Learning programming
					languages is like unlocking a universe of endless possibilities.
					With each new language mastered, you gain the power to create,
					innovate, and shape the future. Embrace the challenge, dive into
					the code, and let your curiosity fuel your journey of discovery.
					The world awaits your digital creations, so don't hesitate start
					coding and watch your dreams come to life."
				</p>
				<button class="btn btn-outline-light ">
					<span class="fa fa-bolt"></span>Start ! its Free
				</button>
				<a href="login.jsp" class="btn btn-outline-light "> <span
					class="	fa fa-user-circle"></span>Login
				</a>

			</div>

		</div>

	</div>

	<!-- cards -->

	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="card">

					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Read more</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card">

					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Read more</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card">

					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Read more</a>
					</div>
				</div>
			</div>


		</div>

		<div class="row mt-4">
			<div class="col-md-4">
				<div class="card">

					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Read more</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card">

					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Read more</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card">

					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Read more</a>
					</div>
				</div>
			</div>


		</div>

	</div>




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

</body>
</html>