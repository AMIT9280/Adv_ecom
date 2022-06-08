<%@page import="com.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	UserBean user = new UserBean();
	%>
	<div class="container-fluid">
		<div class="row">
			<div class="col bg-dark" style="padding: 4px;">
				<i class='fas fa-broadcast-tower'
					style='font-size: 48px; color: red'></i> <a href="#"
					style="color: white; background-color: #343a40; color: red;"><b>Digital
						World</b></a> <a href="Home.jsp" class="heading"
					style="color: white; padding: 30px;">Home</a> <a href="#"
					class="heading" style="color: white; padding: 40px;">About</a> <a
					href="#" class="heading" style="color: white; padding: 30px;">Contact</a>
					
				<a href="Login.jsp" class="heading" style="color: white; padding: 30px;">Login</a>
				
				<a href="Signup.jsp" class="heading" style="color: white; padding: 10px;">Register</a>
				<input type="search" placeholder="Search here">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit" style="height: 30px; padding: 0px 2px 2px 0px">Search</button>
				
				 <a href="ViewMyCart.jsp"><i class="fas fa-shopping-cart" style="color: white; margin: 20px;"> My Cart</i> </a><br>

				<i class="far fa-user"
					style="padding: 0px 5px 0px 0px; color: white;"> <%=user.getRole()%></i>
				<a href="Login.jsp"><button
						class="btn btn-outline-danger my-2 my-sm-0" type="submit"
						style="height: 30px; padding: 0px 2px 2px 0px">Logout</button></a> <br>	 
			</div>
		</div>
		<div class="container">
</body>
</html>