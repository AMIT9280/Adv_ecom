<%@page import="com.dao.UserDao"%>
<%@page import="com.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet" href="/CSS/Bootstrap/fontawsome/css/all.min.css">
<title>Royal Technosoft Pvt. Ltd.</title>
</head>

	<%
				UserBean user = new UserBean();
				
	%>
<style>
.heading:hover {
	background-color: red;
	color: white;
}

.table a {
	margin-bottom: 20px;
}

.var:hover {
	background-color: blueviolet;
}
</style>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col bg-dark" style="padding: 4px;">
				<i class="fas fa-crown"
					style="background-color: #343a40; color: gold; padding: 10px;"></i>
				<a href="#" style="color: white; background-color: #343a40;"><b>Royal
						Technosoft</b></a> <a href="#" class="heading"
					style="color: white; padding: 20px;">Home</a> <a href="#"
					class="heading" style="color: white; padding: 20px;">About</a> <a
					href="#" class="heading" style="color: white; padding: 20px;">Contact</a>
				<a href="#" class="heading" style="color: white; padding: 20px;">Login</a>
				<a href="#" class="heading" style="color: white; padding: 20px;">Register</a>
				<input type="search" placeholder="Search here">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit" >search</button>

				<i class="far fa-user"
					style="padding: 0px 5px 0px 0px; color: white;"><%=user.getRole() %></i>
				<a href="/Login.jsp"><button
						class="btn btn-outline-danger my-2 my-sm-0" type="submit" style="width: 100px; hight: 10px;">Logout</button></a>
			</div>
		</div>

		<div class="row" style="min-height: 90vh; ">
			<div class="col-md-2 bg-danger">
				<div class="table" style="text-align: center; padding: 30px;">
					<a href="#" class="var" style="margin: 50px 30px; color: white;">Home</a>
					<br>
					<br>
					<br> <a href="#" class="var"
						style="margin: 50px 30px; color: white;">contact</a> <br>
					<br>
					<br> <a href="#" class="var"
						style="margin: 50px 30px; color: white;">login</a> <br>
					<br>
					<br> <a href="#" class="var"
						style="margin: 50px 30px; color: white;">Account</a> <br>
					<br>
					<br> <a href="#" class="var"
						style="margin: 50px 30px; color: white;">Subscription</a> <br>
					<br>
					<br> <a href="#" class="var"
						style="margin: 50px 30px; color: white;">Logout</a> <br>
					<br>
					<br> <a href="#" class="var"
						style="margin: 50px 30px; color: white;">About</a>
				</div>
			</div>
			<div class="col-md-8 bg-info">
				<br> <br>
				<div class="card-columns">
					<div class="card" style="border-color: red;">
						<div class="card-header text-center bg-warning"
							style="border-color: black;">
							<h3>BASIC</h3>
						</div>
						<div class="card-body">
							<div class="card-title  text-center">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								</p>
								<h3>
									<span>Full Support :</span> <span style="font-size: medium;">Yes</span>
								</h3>
								<h3>
									<span> Duration :</span> <span style="font-size: medium;">30
										Days</span>
								</h3>
								<h3>
									<span>Storage :</span> <span style="font-size: medium;">10
										GB</span>
								</h3>
								<h1>
									<a href="#">$25</a>
								</h1>
							</div>
						</div>
						<div class="card-footer   text-center bg-dark"
							style="border-color: black;">
							<div class="btn">
								<button class="btn btn-outline-success my-2 my-sm-0"
									type="submit">BUY NOW</button>
							</div>
						</div>
					</div>
					<div class="card" style="border-color: red;">
						<div class="card-header  text-center bg-warning"
							style="border-color: black;">
							<h3>PRO</h3>
						</div>
						<div class="card-body">
							<div class="card-title  text-center">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								</p>
								<h3>
									<span>Full Support :</span> <span style="font-size: medium;">Yes</span>
								</h3>
								<h3>
									<span> Duration :</span> <span style="font-size: medium;">60
										Days</span>
								</h3>
								<h3>
									<span>Storage :</span> <span style="font-size: medium;">50
										GB</span>
								</h3>
								<h1>
									<a href="#">$50</a>
								</h1>
							</div>
						</div>
						<div class="card-footer  text-center bg-dark"
							style="border-color: black;">
							<div class="btn">
								<button class="btn btn-outline-success my-2 my-sm-0"
									type="submit">BUY NOW</button>
							</div>
						</div>
					</div>
					<div class="card" style="border-color: red;">
						<div class="card-header  text-center  bg-warning"
							style="border-color: black;">
							<h3>PREMIUM</h3>
						</div>
						<div class="card-body">
							<div class="card-title  text-center">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								</p>
								<h3>
									<span>Full Support :</span> <span style="font-size: medium;">Yes</span>
								</h3>
								<h3>
									<span> Duration :</span> <span style="font-size: medium;">120
										Days</span>
								</h3>
								<h3>
									<span>Storage :</span> <span style="font-size: medium;">150
										GB</span>
								</h3>
								<h1>
									<a href="#">$150</a>
								</h1>
							</div>
						</div>
						<div class="card-footer  text-center bg-dark"
							style="border-color: black;">
							<div class="btn">
								<button class="btn btn-outline-success my-2 my-sm-0"
									type="submit">BUY NOW</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-2 bg-success" style="text-align: center;">
				<br> <img src="fashion.jpg" style="height: 20%;"> Myntra
				<br> <img src="mc logo.jpg" style="height: 20%; margin: 20px"> Mc'Donalds
			</div>
		</div>
	</div>
	<!--container tag-->
</body>
</html>