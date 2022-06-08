<%@page import="com.dao.UserDao"%>
<%@page import="com.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'
	crossorigin='anonymous'></script>
<title>Login</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col bg-dark" style="padding: 4px;">
				<i class='fas fa-broadcast-tower'
					style='font-size: 48px; color: red'></i> <a href="#"
					style="color: white; background-color: #343a40; color: red;"><b>Digital
						World</b></a> <a href="#" class="heading"
					style="color: white; padding: 20px;">Home</a> <a href="#"
					class="heading" style="color: white; padding: 20px;">About</a> <a
					href="#" class="heading" style="color: white; padding: 20px;">Contact</a>
				<a href="#" class="heading" style="color: white; padding: 20px;">Login</a>
				<a href="#" class="heading" style="color: white; padding: 20px;">Register</a>
				 		 
			</div>
		</div>
		<br>
		<br>
	<center >
	<div style="border: 2px solid red; width: 500px; background-color:gray; color: Red;">
	<br>
	<br>
	<h2>Login</h2>
		<br>
	<form action="LoginServlet" method="post">
		Email &nbsp; &nbsp; &nbsp;<input type="text" name="email"> <br> <br>Password
		<input type="password" name="pass"> <br> <br> </a><input
			type="submit" value="Login" style="background-color: blue; color: Red ">
	</form>
	<br>
	<br>
	<font color="Red"> ${Error}</font> <br> <br>
	
	</div>
	</center>
	<br>

</body>

</html	>